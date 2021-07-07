

def dictionary
  convert = {
   "hello" => "hi",
   "to" => "2",
   "two" => "2",
   "too" => "2",
   "for" => "4",
   "four" => "4",
   "be" => "b",
   "you" => "u",
   "at" => "@",
   "and" => "&"
}
end

def word_substituter(tweet)
   dictionary= dictionary() 
    tweet=tweet.split(" ")
  new_tweet=tweet.map{ |word|
    unless dictionary[(word.downcase)] == nil
      dictionary[(word.downcase)]
    else
    word
    end
  }
  new_tweet.join(" ")  
end

def bulk_tweet_shortener(lots_o_tweets)
    lots_o_tweets.map{|tweet|
     puts word_substituter(tweet)
    }
end 

def selective_tweet_shortener(tweet)
    if tweet.length>140
        word_substituter(tweet)
    else
     tweet 
    end
end

def shortened_tweet_truncator(tweet)
    converted_tweet=selective_tweet_shortener(tweet)
    if converted_tweet.length>140
        return (converted_tweet[0..136]+"...")
    else 
        return converted_tweet
    end
end 