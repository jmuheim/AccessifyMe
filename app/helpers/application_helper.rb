module ApplicationHelper
  def visually_hidden(string)
    content_tag :span, class: "visually_hidden" do
      string
    end
  end

  def introduction_image_tag(virtue)
    image_tag("virtues/#{virtue.id}-#{virtue.short_name.parameterize}")
  end
end
