module ApplicationHelper
  def visually_hidden(string)
    content_tag :span, class: "visually_hidden" do
      string
    end
  end

  def introduction_image_tag(virtue)
    if virtue.id <= 7
      image_tag("virtues/" + virtue.short_name.parameterize)
    else
      image_tag("Accessify.me-main-title")
    end
  end
end
