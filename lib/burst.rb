module Burst
	class << self
		def front_matter_generator(options, config, customs)
			front_matter = [
				{label: "layout", content: "post"},
				{label: "status", content: "publish"},
				{label: "published", content: "true"},
				{label: "title", content: options[:title] || config['defaultTitle'] || ""},
				{label: "date", content: Time.now.to_s},
				{label: "categories", content: "\n- Category"},
				{label: "tags", content: "\n- first_tag\n- second_tag"}
			]

			if options[:custom] != ""
				front_matter = CustomsHandler.populate(front_matter, customs[options[:custom]])
			end

			return front_matter
		end

		def print_line(line)
			puts line[:label].yellow + ": " + line[:content].cyan
		end

		def version(ver)
			puts ver
		end

		def go(options, config, customs)
			puts "---"
			front_matter_generator(options, config, customs).each do |line|
				print_line(line)
			end
			puts "---"
		end
	end
end
