module Burst
	class << self
		def print_line(line)
			puts line[:label].yellow + ": " + line[:content].cyan
		end

		def version(ver)
			puts ver
		end

		def go(options, config, customs)
			puts "---"
			FrontMatter.generate(options, config, customs).each do |line|
				print_line(line)
			end
			puts "---"
		end
	end
end
