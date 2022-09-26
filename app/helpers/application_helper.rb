module ApplicationHelper
  def visually_hidden(string)
    content_tag :span, class: "visually_hidden" do
      string
    end
  end
end
