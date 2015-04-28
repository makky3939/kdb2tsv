require 'rubyXL'

if ARGV.empty?
  abort 'usage: ruby test.rb [.tsv file] [ignore column size]'
else
  path = ARGV[0]
  ignore_size = ARGV[1].to_i

  open(path) do |tsv|
    tsv.each do |line|
      row = line.split "\t"

      if row.size != ignore_size
        puts row.size
        print row
        puts
      end
    end
  end
end
