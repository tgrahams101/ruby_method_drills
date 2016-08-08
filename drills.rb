#########################
#### USING ARGUMENTS ####
#########################
#say_hello
  # returns 'hello'

def say_hello()

"hello"

end

#echo
  # returns the input string

def echo(string)
string
end

#eddie_izzards_height
  # calculates and returns Eddie Izzard's height
  # takes in the height of heels he's wearing (default value: 0)
  # and adds heel height to his base 67 inches for the result

def eddie_izzards_height (heels_height = 0)

  heels_height + 67

end

#how_many_args
  # accepts any number of arguments without complaint
  # returns the total number of arguments passed to the function
  # Hint: google ruby *args

def how_many_args (*parameters)
  parameters.length
end


#find_answer
  # returns the value associated with the 'answer' keyword argument
  # returns nil if it cannot find the 'answer' keyword argument
  # complains when given non-keyword arguments
  # Hint: google ruby keyword arguments

# def find_answer(answer: nil)
#  answer
#
# end

def find_answer(kwargs={})
  kwargs[:answer]
end



##############################
#### MANIPULATING STRINGS ####
##############################
#first_char
  # takes in a word
  # returns the first letter of the word
  # lowercases the first letter of the word

def first_char (word)
 word[0].downcase!

end

#polly_wanna
  # takes in a word
  # echoes the original word
  # repeats the original word 3 times
  # returns a string with the word repeated

def polly_wanna(word)
    puts word
    3.times do
      puts word
    end

end

#count_chars
  # takes in a word
  # returns the number of characters in the word

def count_chars(word)
    word.length
end

#yell
  # takes in a message
  # convert the message to uppercase
  # adds an exclamation point to the end of the message
  # returns the message

def yell(message)
   message.upcase + '!'
end

## STRETCH ##
#to_telegram
  # takes in a message
  # replaces periods with ' STOP'
  # returns the updated message

def to_telegram (message)
    message.gsub(/[.]/, ' STOP')
end

#spell_out
  # takes in a string
  # converts the string to lowercase
  # returns the input string, with characters seperated by dashes

# def spell_out(message)
#   message.downcase.gsub(/['']/, '-')
#
# end

def spell_out(message)
  message.downcase.gsub('', '-')
  # message.downcase.insert([0..-1], '-')

end



#seperate
  # takes in a string
  # seperates characters with a custom seperator, when supplied with one
  # seperates characters with dashes (by default)
  # returns the modified string


## STRETCH ##
#croon
  # seperates word characters with dashes
  # preserves whitespace between words

#palindrome_word?
  # determines whether a single word is a palindrome
  # ignores case
  # returns true or false


## SUPER STRETCH ##
#palindrome_sentence?
  # determines whether a sentence is a palindrome
  # ignores case
  # ignores whitespace
  # ignores punctuation

#is_vowel
  # takes in a string of one character
  # determines whether the character is a vowel
  # ignores case
  # handles weird inputs gracefully

#add_period
  # takes in a string
  # adds a period to the end of the sentence
  # does not add a period if one is already there
  # does not add a period if any form of terminal punctuation is present
  # returns the sentence


###########################
#### LOOPS & ITERATORS ####
###########################
#count_spaces
  # takes in a string
  # counts the spaces in a string
  # returns number of spaces


  def count_spaces(string)
        array = string.split('')
        puts array
        count = 0
        array.each do |char|

              if char == ' '
                count +=1
              end
        end
        count

  end
#string_lengths
  # takes in an array of strings
  # returns an array containing the lengths of the strings

  def string_lengths (array = [])
    array.map {|string| string.length}

  end


#remove_falsy_values
  # takes in a list
  # filters out falsy values from a list
  # returns the updated list

def remove_falsy_values (array = [])
    selected = array.select do |item|
              item
    end
    selected


end

#exclude_last
  # takes in an array or string
  # removes the last item from the array or string
  # returns it

  def exclude_last (something)
    if something.class == String
      something.chop
      something
    elsif something.class == Array
      something.pop
     something
    end
  end



#exclude_first
  # takes in an array or string
  # removes the first item from an array
  # removes the first character from a string
  # returns a new string - does not alter the original input (non-destructive)

  def exclude_first (something)
    if something.class == String
    net =  something[1..-1]
      puts something
       net
    elsif something.class == Array
    #   dope = something[1..-1]
    #  print something
       something.delete_at(0)
     something
    end
  end



#exclude_ends
  # takes in an array or string
  # removes the first and last items from an array
  # removes the first and last characters from a string

def exclude_ends (something)


        something[1..-2]

end

#select_every_even
  # takes in an array
  # returns a list of even-indexed items from the input

# def select_every_even(array = [])
#   net = array.select do |dope, i|
#   dope if i % 2 == 0
#   end
# end

def select_every_even(array = [])
  net =  array.each_index.select{|i|
      i == 0 || i % 2 == 0
    }
    list = net.map do |num|
      array[num]
    end
    list
end


#select_every_odd
  # takes in an array
  # returns a list of odd-indexed items

  def select_every_odd(array = [])
    net =  array.each_index.select{|i|
        i == 1 || i % 2 != 0
      }
      list = net.map do |num|
        array[num]
      end
      list
  end

#select_every_n
  # takes in an array
  # returns a list of items at an index evenly divisible by n
  # defaults to an n value of 1

  def select_every_n (array = [], n = 1)

    net =  array.each_index.select{|i|
        i % n == 0
      }
      list = net.map do |num|
        array[num]
      end
      list

  end

## STRETCH ##
#compile_agenda
  # converts a list of agenda items into a single string
  # titles start with a bullet ("*") and are separated by line breaks ("/n")
  # sorts items by priority ascending (low to high) by default
  # sort order can (optionally) be changed to priority descending
  # the bullet can (optionally) be changed to any symbol

##############################
#### MANIPULATING NUMBERS ####
##############################
#count_to
  # takes in a number
  # returns an array containing every integer from 0 to n
  # counts up or down
  # rounds off decimals

  def count_to (num)
      array = []
      num = num.round
      if num >= 0
        for i in 0..num do
          array.push(i)
        end
      else
        for i in (num..0).reverse_each do
          array.push(i)
        end
      end
    array

  end

#is_integer?
  # takes in a number
  # returns true for Fixnums and Bignums (whole number or 'integer' types)
  # returns true for Floats (decimals) equal to integers
  # returns false for non-integer decimals
  # returns false for Float::NAN
  # returns false for non-numbers

  def is_integer(num)
      if !num.is_a? Numeric
        return false
      else
        # WHY THE HELL IS NUM.CLASS == FIXNUM || BIGNUM EVALUATING TO TRUE FOR FLOATS?
        if num.is_a? Fixnum || Bignum
          puts num.class
          puts 'great'
          return true
        elsif num.class == Float
          if !num.finite?
            puts 'what the hell'
            return false
          elsif num - (num.floor) != 0
            puts 'gucci'
            return false
          else
            puts 'happy'
            return true

          end
        end
      end
  end


#is_prime?
  # takes in a number and checks if it's prime
  # returns false for non-integer decimals
  # returns false for numbers less than or equal to 1
  # returns false for numbers divisible by anything but 1 and themselves
  # returns true for prime numbers
  # Hint: google prime numbers!

  def is_prime? (num)
      print num.class
    if !num.is_a? Numeric
      return  'Enter in an integer'
    else
          if num.class == Float
              return false
          elsif num.class == Fixnum

              if num <= 1
                return false
              elsif num == 2
                return true
              else
                  for i in 2...num
                    print i
                    print num
                    if num % i == 0
                      return false
                    else
                      return true
                    end
                  end
              end
          end
    end
  end


#primes_less_than
  # takes in a number
  # returns an empty array if there are no primes below num
  # does not return the number itself
  # finds all primes less than the given number

def primes_less_than (num)
    print num.class
  array = []
  if !num.is_a? Numeric
    return  'Enter in an integer'
  else
        if num.class == Float
            return false
        elsif num.class == Fixnum

            if num <= 1
              return false

            else
                for i in 2...num
                  x=0
                  for o in 2...i

                                        if i % o == 0
                                          x=1
                                        end
                     if x == 1
                       break
                     end
                  end
                  if x==0
                    array.push(i)
                  end
                end
              return array
            end
        end
  end
end

## STRETCH ##
#iterative_factorial
  # takes in a number
  # returns 1 for 0 and 1
  # returns NaN for numbers less than 0
  # returns NaN for non-integers
  # calculates and returns the factorial of the input number



##############################
#### MANIPULATING OBJECTS ####
##############################
#character_count
  # takes in a string
  # counts how many times each character appears in a string
  # ignores case
  # returns the hash

  def character_count (string)
    if string.class != String
      return 'Enter in string'
    else
      object = {}
          string.downcase!
          string.each_char{ |c|
            if object[c]
              object[c] += 1
            else
            object[c] = 1
            end
          }

      return object
    end
  end



## STRETCH ##
#word_count
  # takes in a string
  # counts how many times a word appears in a string
  # ignores case
  # ignores characters that are not in the sequence a-z
  # returns a hash with all the words and their counts

## STRETCH ##
#most_frequent_word
  # takes in a string
  # finds the word in a string that appears with the most frequency
