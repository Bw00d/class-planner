class Cost < ApplicationRecord
  belongs_to :delivery, dependent: :destroy
end
