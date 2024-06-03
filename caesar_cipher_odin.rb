#this changes text based on ceaser cipher 


#This makes sure key is a positive int
def get_integer
    input = nil
    loop do
      print "Please enter an integer: "
      input = gets.chomp
      break if input.match?(/^\d+$/) && input.to_i >= 0
    end
    input.to_i
end
  


# this coverts plain text to cipher text
def ct(p, k)
    result = ""
    p.each_char do |char|
      # Encrypt uppercase characters
      if char.match?(/[A-Z]/)
        encrypted_char = ((char.ord - 'A'.ord + k) % 26 + 'A'.ord).chr
        result += encrypted_char
      # Encrypt lowercase characters
      elsif char.match?(/[a-z]/)
        encrypted_char = ((char.ord - 'a'.ord + k) % 26 + 'a'.ord).chr
        result += encrypted_char
      else
        result += char
      end
    end
    result
  end


  # this coverts cipher text to plain text
  def pt(c,k)
    result = ""
    c.each_char do |char|
      # Decrypt uppercase characters
      if char.match?(/[A-Z]/)
        encrypted_char = ((char.ord - 'A'.ord - k) % 26 + 'A'.ord).chr
        result += encrypted_char
      # Derypt lowercase characters
      elsif char.match?(/[a-z]/)
        encrypted_char = ((char.ord - 'a'.ord - k) % 26 + 'a'.ord).chr
        result += encrypted_char
      else
        result += char
      end
    end
    result
  end


  #controls the flow
  print "Enter e to ENCRYPT d to DECRYPT: "
  ans = gets.chomp
  if ans =='e'
    print "Insert Massage: "
    p =gets.chomp
    k = get_integer
    puts ct(p, k)
  elsif ans == 'd'
    print "Insert Massage: "
    p =gets.chomp
    k = get_integer
    puts pt(p,k)
  else
    puts "fuckOff"
  end 




  

