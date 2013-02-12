module NewsHelper
	def generate_table
		out = "<table class=\"table table-bordered table-striped\"><thead><span class=\"label label-important\">Requirements</span>"
		out << "<tr><th>Description</th><th>Points</th></tr></thead>"

		Requirement.find_each do |requirement|
			description = requirement.description
			points = requirement.points

			out << "<tr><td>#{description}</td><td>#{points}</td></tr>"
		end
		out << 	"</table>"
		out.html_safe
	end
end
