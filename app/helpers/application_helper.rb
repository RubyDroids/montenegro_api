module ApplicationHelper
  def bs_icon(icon, options = {})
    file = File.read("node_modules/bootstrap-icons/icons/#{icon}.svg")
    doc = Nokogiri::HTML::DocumentFragment.parse file
    svg = doc.at_css 'svg'
    svg['class']  += " " + options[:class] if options[:class].present?
    svg['width']  += " " + options[:width].to_s if options[:width].present?
    svg['height'] += " " + options[:height].to_s if options[:height].present?
    viewbox = options[:viewbox].present? ? options[:viewbox].to_s : "0 0 16 16"
    svg['viewbox'] += " " + viewbox
    doc.to_html.html_safe
  end  
end
