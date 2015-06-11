=begin
Write a console program that prints the numbers from 1 to 100. But for multiples of three

print Explorica instead of the number and for the multiples of five print Tours. For numbers

which are multiples of both three and five print ExploricaTours.

Instructions:

A. print the numbers from 1 to 100

B. for multiples of 3 print “Explorica ” instead of the number

C. for multiples of 5 print “Tours” instead of the number

D. for multiples of 3 and 5 print “ExploricaTours” instead of the number
=end

def exploricatours(min=1, max=100)
  raise "Please enter a min value that is less than the max value" unless min < max
  raise "Please enter integers for the min and max values" unless min.is_a?(Integer) && max.is_a?(Integer)

  min.upto(max) do |i|
    if i % 3 == 0 && i % 5 == 0
      puts "ExploricaTours"
    elsif i % 3 == 0
      puts "Explorica"
    elsif i % 5 == 0
      puts "Tours"
    else
      puts i
    end
  end
end

#valid cases
exploricatours(1, 100)
#invalid case
exploricatours(5, 1)
exploricatours('1', '100')
