Script started on 2020-05-02 08:17:16-0400
c]0;sp46@gold20: ~/214/labs/11/ruby[01;32msp46@gold20[00m:[01;34m~/214/labs/11/ruby[00m$ cat     l cat threaded_array_sum.rb
# array_sum.rb sums the values in an array
#
# Begun by: Prof. Adams, for CS 214 at Calvin College.
# Completed by: Sinai Park
# Date: May 2 2020
#
# Usage: ruby array_sum.rb <inFileName>
######################################################

# make certain the input file was specified on the command-line
def checkCommandLine
  if ARGV.length != 2
     puts "\nUsage: sum <fileName> <numThreads>\n\n"
     exit(1)
  end
end

# return: an array containing the values from the file
#  whose name was specified on the command-line
def readFile
   strArray = IO.readlines( ARGV[0] )
   intArray = Array.new( Integer(strArray[0]) )
   for i in 2..strArray.size
      if  !strArray[i].nil?
         intArray[i-2] = Integer( strArray[i].chomp )
      end
   end
   intArray 
end

# Return: the sum of the values in the slice of an array
def sumSlice(values, id, sliceSize)
   start = id * sliceSize
   stop = start + sliceSize - 1
   myTotal = 0
   for i in start..stop
      myTotal += values[i]
   end
   myTotal
end

#Recieves: number of threads to be used to sum array and the array of values
def sumInParallel(values, numThreads)
   sliceSize = values.size / numThreads
   threadArray = Array.new( numThreads )
   result = 0
   lock = Mutex.new

   (1..numThreads-1).each do | i |
       threadArray[i] = Thread.new { 
                         myTotal = sumSlice(values, 
                                              i,
                                              sliceSize) 
                         lock.synchronize {
                             result += myTotal
                         }
       }
   end

   myTotal  = sumSlice(values, 0, sliceSize)

   leftovers = values.size % numThreads
   if leftovers > 0
      for i in values.size-leftovers..values.size-1
         myTotal += values[i]
      end
   end

   lock.synchronize {
      result += myTotal
   }

   for i in 1..numThreads-1
      threadArray[i].join
   end

   result
end

def main
   checkCommandLine
   values = readFile
   startTime = Time.now
   total = sumInParallel( values, Integer( ARGV[1]) )
   endTime = Time.now
   interval = (endTime - startTime).to_f
   puts "\nThe sum is #{total}\n"
   printf(" and computing it took %.9f seconds.\n\n", interval)
end

main

]0;sp46@gold20: ~/214/labs/11/ruby[01;32msp46@gold20[00m:[01;34m~/214/labs/11/ruby[00m$ cat threaded_array_sum.rblojure -m ThreadedArraySum ../numbers/1000000num






The sum is 50473230
 and computing it took 0.041153337 seconds.

]0;sp46@gold20: ~/214/labs/11/ruby[01;32msp46@gold20[00m:[01;34m~/214/labs/11/ruby[00m$ [Kruby threaded_array_sum.rb ../numbers/1000000numb

The sum is 50473230
 and computing it took 0.043815651 seconds.

]0;sp46@gold20: ~/214/labs/11/ruby[01;32msp46@gold20[00m:[01;34m~/214/labs/11/ruby[00m$ [Kexit

Script done on 2020-05-02 08:17:57-0400