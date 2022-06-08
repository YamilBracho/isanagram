def isAnagram(str)
   # Empty string
   if str.length == 0 
     return false
   end
  
   # Split string
   tokens = str.split('=', -1)
   if tokens.length != 2 
      return false
   end
    
   # tokens should be of the same length
   len0 = tokens.at(0).length
   if len0 != tokens.at(1).length 
     return false
   end
    
   # Compare each character
   str1 = tokens.at(1) 
   tokens.at(0).each_char { |c| 
     if !(str1.include? c)
       return false
     end
   }
  
   return true
end

	arr = ["123=320",
          "dog=god",
          "cat=tac",
          "pool=loop",
          "cool=loco",
          "jira=raji",
          "bees=bese",
          "kilo=loki",
          "",
          " = ",
          "asfgfasgasfsagdf==",
          "01234567890123456789012345678901234567890=09876543210987654321098765432109876543210",
          "abc=bca"
    ]
  
  arr.each { |str| 
    if isAnagram(str) 
      puts "#{str} is an anagram"
    else 
      puts "#{str} is not an anagram" 
    end  
  }
  