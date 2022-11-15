class Illustration < ApplicationRecord
  extend Enumerize
  enumerize :kind, in: [:do, :dont]

  default_scope { order(kind: :asc) }
  scope :do, -> { where(kind: "do") }
  scope :dont, -> { where(kind: "dont") }

  belongs_to :insight
  has_many :examples

  def do?
    kind.do?
  end

  def dont?
    kind.dont?
  end

  def icon
    do? ? "👍" : "👎"
  end
end
