module CustomsHandler
	class << self
		def customs_replace(front_matter, custom)
			custom['replaces'].each do |key, value|
				front_matter.each do |element|
					element[:content] = value if element[:label] == key
				end
			end

			return front_matter
		end

		def customs_push(front_matter, custom)
			custom['adds'].each do |key, value|
				front_matter.insert(4, {label: key, content: value})
			end

			return front_matter
		end

		def populate(front_matter, custom)
			return customs_replace(customs_push(front_matter, custom), custom)
		end
	end
end
