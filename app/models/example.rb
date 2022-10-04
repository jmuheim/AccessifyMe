class Example < ApplicationRecord
  default_scope { order(good: :desc) }

  belongs_to :video

  def icon
    good? ? "👍" : "👎"
  end
end
