class Illustration < ApplicationRecord
  extend Enumerize
  enumerize :do_or_dont, in: [:do, :dont]

  default_scope { order(do_or_dont: :asc) }
  scope :do, -> { where(do_or_dont: "do") }
  scope :dont, -> { where(do_or_dont: "dont") }

  belongs_to :insight
  has_many :examples

  def do?
    do_or_dont.do?
  end

  def dont?
    do_or_dont.dont?
  end

  def icon
    do? ? "✅" : "🚨"
  end
end
