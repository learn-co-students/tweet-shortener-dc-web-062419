# Write your code here.

def dictionary
    word_list = {
        "hello" => "hi",
        "to" => "2",
        "two" => "2",
        "for" => "4",
        "four" => "4",
        "too" => "2",
        "be" => "b",
        "you" => "u",
        "at" => "@",
        "and" => "&"
      }
end

def word_substituter(tweet)
    words = tweet.split(" ")
    words.collect do |word|
        if dictionary.keys.include?(word.downcase)
            word = dictionary[word.downcase]
        else
            word
        end
    end.join(" ")

end

def bulk_tweet_shortener(array)
    array.each do |tweet|
        result = word_substituter(tweet)
        puts result

    end
end

def selective_tweet_shortener(tweet)
    if tweet.chars.length > 140  
      word_substituter(tweet)
    else 
      tweet 
    end 
  end 
  

def shortened_tweet_truncator(tweet)
    if word_substituter(tweet).chars.length > 140  
      shortened = word_substituter(tweet).chars[0..136].push("...").join("")
    else 
      word_substituter(tweet) 
    end 
  end 