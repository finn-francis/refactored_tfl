class XML
	def generate(data, parent = false, opt = {})
	  return if data.to_s.empty? || (!data.is_a?(Hash) && !data.is_a?(Array))

	  # if the hash has a single key, make it the root
	  unless parent
	    root, data = (data.length == 1) ? data.shift : ["root", data]
	    builder = Nokogiri::XML::Builder.new(opt) do |xml|
	      xml.send(root) {
	        generate_xml(data, xml)
	      }
	    end

	    return builder.to_xml
	  end

	  data.each { |label, value = ""|
	    if value.is_a?(Hash)
	      attrs = value.fetch('@attributes', {})
	      # also passing 'text' as a key makes nokogiri do the same thing
	      text = value.fetch('@text', '')
	      parent.send(label, attrs, text) {
	        value.delete('@attributes')
	        value.delete('@text')
	        generate_xml(value, parent)
	      }

	    elsif value.is_a?(Array)
	      value.each { |el|
	        # let's trick the above into firing
	        # so we do not need to rewrite the checks
	        el = {label => el}
	        generate_xml(el, parent)
	      }

	    elsif label.is_a?(Hash)
	      attrs = label.fetch('@attributes', {})
	      # also passing 'text' as a key makes nokogiri do the same thing
	      text = label.fetch('@text', '')
	      parent.send(label, attrs, text) {
	        label.delete('@attributes')
	        label.delete('@text')
	        generate_xml(label, parent)
	      }

	    else
	      puts label.inspect
	      parent.send(label, value)
	    end
	  }
	end
end
