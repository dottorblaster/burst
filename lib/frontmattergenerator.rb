module FrontMatter
	class << self
		def generate(options, config, customs)
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
	end
end
