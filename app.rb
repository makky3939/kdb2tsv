require 'rubyXL'

if ARGV.empty?
  abort('usage: ruby app.rb <.xlsx file>')
else
  path = ARGV.first
  workbook = RubyXL::Parser.parse path
  worksheet = workbook.first

  worksheet.extract_data.each do |row|
    row = row.map {|item| item.to_s.gsub(/\n/, '')}
    puts row.join "\t"
  end
end
