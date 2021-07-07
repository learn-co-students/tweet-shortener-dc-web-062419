def dictionary
 {
  "hello" => 'hi',
  "to" => '2', 
  "two" => '2',
  "too" => '2', 
  "for" => '4', 
  "four" => '4',
  'be' => 'b',
  'you' => 'u',
  "at" => "@", 
  "and" => "&"
  }
end

def word_substituter(string)
  dictionary
  a = string.split
  i = 0
  a.each do |word|

    if  dictionary.has_key?(word.downcase)

    a[i] = dictionary[word.downcase]
    end
    i += 1
 end
 a.join(" ")
end


def bulk_tweet_shortener(tweets)

def word_substituter(string)
  dictionary
  a = string.split
  i = 0
  a.each do |word|

    if  dictionary.has_key?(word.downcase)

    a[i] = dictionary[word.downcase]
    end
    i += 1
 end
 a.join(" ")
end
tweets.each do |string|
	puts word_substituter(string)
end
end




def selective_tweet_shortener(string)
  
  def word_substituter(string)
  dictionary
  a = string.split
  i = 0
  a.each do |word|

    if  dictionary.has_key?(word.downcase)

    a[i] = dictionary[word.downcase]
    end
    i += 1
 end
 a.join(" ")
end
  
  
  if string.length > 140
   word_substituter(string)
else
  string
     end
end 


def shortened_tweet_truncator(string)
  
      def word_substituter(string)
  dictionary
  a = string.split
  i = 0
  a.each do |word|

    if  dictionary.has_key?(word.downcase)

    a[i] = dictionary[word.downcase]
    end
    i += 1
 end
 a.join(" ")
end
  
  
  if string.length > 140
  a = word_substituter(string)
  
  a[0...140]
else
  string
     end
end 
  
  
  
  
  
  
  
  
  
