require 'pry'

def dictionary(input)
    list = {
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
    if list.keys.include?(input.downcase)
        list[input.downcase]
    else 
        input
    end
end

def word_substituter(tweet)
    tweet.split.map { |word| dictionary(word) }.join(" ")
end

def bulk_tweet_shortener(tweets)
    tweets.each { |tweet| puts word_substituter(tweet) }
end

def selective_tweet_shortener(tweet)
    if tweet.length > 140
        word_substituter(tweet)
    elsif tweet.length < 130
        tweet
    else
        tweet
    end
end

def shortened_tweet_truncator(tweet)
    if selective_tweet_shortener(tweet).length > 140
        tweet[0..136] + "..."
    elsif tweet.length < 140
        tweet
    end
end

