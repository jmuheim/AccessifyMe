class Persona < ApplicationRecord
  mount_uploader :avatar, AvatarUploader

  has_many :consequences

  def to_param
    "#{id}-#{(short_name || name).parameterize}"
  end
end
