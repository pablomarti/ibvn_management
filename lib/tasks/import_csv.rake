require 'smarter_csv'

namespace :import_csv do

	task data1: :environment do
		read_data('data/data1.csv')
	end

	def read_data(filename)
		puts "Start reading #{filename}"

		options = {:key_mapping => {:unwanted_row => nil, :old_row_name => :new_name}}
		f = File.open(filename, "r:bom|utf-8")
		n = SmarterCSV.process(f, options) do |array|
			Member.create( array.first )
		end
		f.close

		puts "End reading #{filename}"
	end

end