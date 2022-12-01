class Blooper < ApplicationRecord
  mount_uploader :screenshot, ScreenshotUploader

  belongs_to :anti_pattern
  belongs_to :website

  def insight
    # Not sure whether a blooper should be able to have multiple insights though...?!
    insights = anti_pattern.patterns.map(&:insight).uniq

    if insights.size > 1
      raise "More than one insight for anti pattern #{anti_pattern.id}: #{insights.map(&:id).to_sentence}!"
    end

    insights.first
  end

  def screenshot_alt
    alt = description.scan(/\*\*(.+?)\*\*/).flatten[0] or raise "Please name your screenshot in the description like so (the first string in double asterisks will be taken): \"The **element xyz** in the header **has this and that problem**.\"!"
    alt.upcase_first
  end

  def heading
    issue = description.scan(/\*\*(.+?)\*\*/).flatten[1] or raise "Please the issue in the description like so (the second string in double asterisks will be taken): \"The **element xyz** in the header **has this and that problem**.\"!"
    [screenshot_alt, issue].join(" ")
  end
end
