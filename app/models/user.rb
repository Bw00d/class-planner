# User model used for authentication by Devise
class User < ApplicationRecord
  # Use slugs instead of DB IDs in URLs
  include FriendlyId
  friendly_id :full_name, use: :slugged

  acts_as_commontator

    has_many :lead_quals
    has_many :unit_quals
    has_many :unit_instructors
    has_many :hours
    accepts_nested_attributes_for :lead_quals, allow_destroy: true
    # has_many :courses, through: :unit_quals
    # has_many :unit_quals

  # Roles used by the authorization setup
  enum role: { user: 0, admin: 1 }

  # **We should NOT validate e-mail uniqueness, e-mail regex or password
  # confirmation here**. Devise's Validatable module is enabled so it already
  # validates those attributes (in the registerable form and the user management
  # form in the admin namespace). Validating again here will produce duplicated
  # error messages.

  validates :first_name, :last_name, presence: true
  # Custom password strength validation
  validate :password_strength

  # Callback to set the default role of new records
  after_initialize :set_default_role, if: :new_record?

  devise :database_authenticatable, :lockable, :registerable,
         :recoverable, :rememberable, :timeoutable, :trackable, :validatable


  scope :instructors, -> { where(instructor: true) }
  
  # Allow a single Ransack search field to search the virtual attr 'full_name'
  # If first_name is 'John' and last_name is 'Doe', this will enable us to
  # search for 'John', 'Doe' or 'John Doe' using the 'cont' predicate.
  # See https://github.com/activerecord-hackery/ransack/wiki/using-ransackers
  ransacker :full_name do |parent|
    Arel::Nodes::InfixOperation.new(
      '||',
      Arel::Nodes::InfixOperation.new(
        '||',
        parent.table[:first_name],
        Arel::Nodes.build_quoted(' ')
      ),
      parent.table[:last_name]
    )
  end

  def full_name
    [first_name, last_name].join(' ')
  end

  def deliveries
    Delivery.where(lead_instructor: self.id)
  end

  def units
    deliveries = []
    self.unit_instructors.each do |i|
      if i
        deliveries << Delivery.find(i.delivery_id)
      end
    end
    deliveries
  end

  private

  def set_default_role
    # self.my_enum ||= :default_value does not work as it does not apply
    # the default value if the controller passes "nil" as a value for the enum.
    self.role = :user if role.blank?
  end

  # TODO: extract this to a validator class
  def password_strength
    minimum_length = 8
    # Regex matches at least one lower case letter, one uppercase and one digit
    complexity_regex = /\A(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])/
    # When a user is updated but not its password, the password param is nil
    if password.present? &&
       (password.length < minimum_length || !password.match(complexity_regex))
      errors.add :password, :weak_password
    end
  end
end
