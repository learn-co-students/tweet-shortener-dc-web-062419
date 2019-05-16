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


=begin def bulk_tweet_shortener(tweets)

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
	puts word_substituter(string)
end
=end
