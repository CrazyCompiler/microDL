module Hyrax
  module Renderers
    class RelatedWorksAttributeRenderer < AttributeRenderer

      def render
        markup = ''
        #TODO: fix the image url
        return markup if values.blank? && !options[:include_empty]
        markup << %(<tr><th><b>#{label}</b></th>\n<td><div style='overflow:scroll' width='100px'>
              <ul style='list-style-type: none; margin: 0; padding: 0; overflow: hidden; background-color: white;'>)
        attributes = microdata_object_attributes(field).merge(class: "attribute attribute-#{field}")
        Array(values).each do |value|
          markup << "<li#{html_attributes(attributes)} style='float: left; margin:10px;  '>
           <a href='#{value.id}'>  <img width=100px height=100px src=http://localhost:3000#{value.thumbnail_path} />
                      #{attribute_value_to_html(value.to_s)}
          </a></li>"
        end
        markup << %(</ul></div></td></tr>)
        markup.html_safe

      end

      def li_value(value)
        auto_link(value) do |link|
          "<span class='glyphicon glyphicon-new-window'></span>&nbsp;#{link}"
        end
      end
    end
  end
end
