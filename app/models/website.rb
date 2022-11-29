class Website < ApplicationRecord
  has_many :bloopers
  belongs_to :client
end
