#Print out the grade-school multiplication table up to 12x12

class MultiplicationTable
  attr_accessor :rows, :columns

  def initialize(rows, columns)
    @rows = rows
    @columns = columns
    @row_data
  end

  def create_and_print_table
    @row_data = {}

    1.upto(rows) do |i=1|
      @row_data[i] ||= []

      1.upto(columns) do |num|
        @row_data[i] << num * i
      end
    end

    format_table_rows
  end

  def format_table_rows
    @row_data.each_value do |row|
      row.each do |num|
        case num.to_s.length
        when 1
          print " " * 3
        when 2
          print " " * 2
        when 3
          print " "
        end
        print num.to_s
      end
      print "\n"
    end
  end
end

new_table = MultiplicationTable.new(12, 12)
new_table.create_and_print_table
