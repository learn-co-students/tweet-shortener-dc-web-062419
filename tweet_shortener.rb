# Write your code here.

def dictionary
  dictionary = {
    
   "too" => "2",
  "to" => "2",
  "two" =>"2",
  "four" => "4",
  "for" => "4",
  "be" => "b",
  "you" => "u",
  "at" => "@",
  "and" => "&"
  }
end 

def word_substituter(string)
  string.split.map do |words|
    if dictionary.include?(words.downcase)
     words = dictionary[words.downcase]
      else 
        words
      end
    end.join(" ")
end

def bulk_tweet_shortener(array)
  array.each do |tweet|
    puts word_substituter(tweet)
  end 
end 

def selective_tweet_shortener(words)
  if words.length > 140
    word_substituter(words)
  else 
    words
  end
end

def shortened_tweet_truncator(words)
  if word_substituter(words).length > 140
    word_substituter(words)[0...137] << "..."
  else
    words
  end
end