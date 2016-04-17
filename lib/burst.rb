module Burst
	class << self
		def front_matter_generator(options)
			front_matter = [
				{label: "layout", content: "post"},
				{label: "status", content: "publish"},
				{label: "published", content: "true"},
				{label: "title", content: options[:title] || ""},
				{label: "date", content: Time.now.to_s},
				{label: "categories", content: "\n- Category"},
				{label: "tags", content: "\n- first_tag\n- second_tag"}
			]
		end

		def print_line(line)
			puts line[:label] + ": " + line[:content]
		end

		def version(ver)
			puts ver
		end

		def go(options, customs)
			puts "---"
			front_matter_generator(options).each do |line|
				print_line(line)
			end
			puts "---"
		end
	end
end
