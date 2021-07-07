def dictionary(word)
  compareWord = word.downcase.intern
  dictionary = {
    "hello": "hi",
    to: "2",
    too: "2",
    two: "2",
    four: "4",
    for: "4",
    be: "b",
    you: "u",
    at: "@",
    and: "&"
  }
  if dictionary.key?(compareWord)
    return dictionary[compareWord]
  else
    return word
  end
end

def word_substituter(tweet)
  tweetArray = []
  tweet.split().each do |word|
    tweetArray.push(dictionary(word))
  end
  return tweetArray.join(" ")
end

def bulk_tweet_shortener(tweetArray)
  tweetArray.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length <= 140
    return tweet
  else
    return word_substituter(tweet)
  end
end

def shortened_tweet_truncator(tweet)
  if tweet.length <= 140
    return tweet
  else
    if word_substituter(tweet).length <= 140
      return word_substituter(tweet)
    else
      return truncate(word_substituter(tweet))
    end
  end
end

def truncate(string)
  return "#{string[0...137]}..."
end
