class Website < ApplicationRecord
  has_many :examples
  belongs_to :client
end
