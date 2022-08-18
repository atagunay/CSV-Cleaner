require 'csv'

def clean_data(file_name)
  csv = CSV.read("#{file_name}.csv")

  f = File.open("#{file_name}_result.csv", "w")

  csv.each do |item|
    arr = []
    item.each do |item2|
      if item2 != nil
        a = item2.gsub("\u00A0", "")
        a  = a.rstrip
        arr << a.lstrip
      else
        arr << item2
      end
    end
    f.write(arr.to_csv)
  end

  f.close
end

# call clean_data method here
#...




