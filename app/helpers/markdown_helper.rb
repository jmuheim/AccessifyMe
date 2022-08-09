# See http://stackoverflow.com/questions/30018652/slim-template-doesnt-render-markdown-stored-in-a-variable
module MarkdownHelper
  # TODO: Would be great to use the Tilt default mechanism instead!
  def markdown(string, heading_level = 0, visual_heading_level = nil)
    string ||= '' # If nil is supplied, Pandoc waits for input and nothing is returned
    string = indent_heading_level(string, heading_level, visual_heading_level)
    html = PandocRuby.convert(string, PANDOC_OPTIONS).strip
    
    nokogiri = Nokogiri::HTML::DocumentFragment.parse(html)

    nokogiri.to_html.html_safe
  end

  def indent_heading_level(markdown, heading_level, visual_heading_level = nil)
    markdown.to_s.lines.map do |line|
      line = line.rstrip # Remove all new line stuff (\n, \r)

      if matches = line.match(/^([#]+)(.*)$/)
        hashes  = matches[1] + '#' * (heading_level)
        text    = matches[2]
        klass   = visual_heading_level ? ".h#{visual_heading_level + matches[1].size - 1}" : nil
        role    = hashes.size > 6 ? "role=\"heading\" aria-level=\"#{hashes.size}\"" : nil
        newline = matches[3]

        attributes = [klass, role].compact.any? ? "{#{klass} #{role}}" : nil

        line = "#{hashes}#{text}#{attributes}#{newline}"
      end

      line
    end.join "\n"
  end
end
