# Write your code here.

def dictionary
  dictionary = {
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

def word_substituter(string)
  dictionary
  string_array = []
  new_string_array = []
  string_array = string.split(" ")
  list_of_options = dictionary.keys
#  puts "This is the list of options: #{list_of_options}"
#  dictionary.each do |long_word, short_word|
#    puts "#{long_word} will become #{short_word}"
#    puts string_array
#    if string_array.include?(long_word)
#      puts "We found #{long_word}"
#    end
#    puts short_word

    string_array.each do |word|
#      if word == long_word 
#        word = short_word 
       if list_of_options.include?(word.downcase)
#        puts "yes we see you"
        new_string_array << dictionary[word.downcase]
      else 
#        puts "but this word is ok we mean okay"
        new_string_array << word
      end
    end
#    string = string_array.join(" ")
 
#    string_array.each do|word|
#      if word == long_word
#        word = short_word
#      end  
#    end
#    puts new_string_array
#    string_array = string_array
#  end
  new_string_array.join(" ")
#  puts string
end

#string = "hello to you two and you are too much for be at"
#word_substituter(string)


def bulk_tweet_shortener(tweet_array)
    new_tweet = ""
    tweet_array.each do |string|
      new_tweet = word_substituter(string)
      puts new_tweet
    end
end


def selective_tweet_shortener(tweet)
#  tweet_array.each do |tweet|
    if tweet.length > 140
#      puts "This shit is long"
      word_substituter(tweet)
    else
#      puts "Eh it's ok"
    tweet
    end
#  end
end

#selective_tweet_shortener(["sdflksdjfooiadmakmsd;calksdm;akldc;alkdcm;alsdkm;aldkmca;lsdkm;alcma;lsdkcma;ldkcm;aldkcma;lcmiadmakmsd;calksdm;akldc;alkdcm;alsdkm;aldkmca;lsdkm;alcma;lsdkcma;ldkcm;aldkcma;lcma;ldkcma;ldkcm;aldkcma;ldma;ldkcma;ldkcm;aldkcma;ldmiadmakmsd;calksdm;akldc;alkdcm;alsdkm;aldkmca;lsdkm;alcma;lsdkcma;ldkcm;aldkcma;lcma;ldkcma;ldkcm;aldkcma;ldmiadmakmsd;calksdm;akldc;alkdcm;alsdkm;aldkmca;lsdkm;alcma;lsdkcma;ldkcm;aldkcma;lcma;ldkcma;ldkcm;aldkcma;ldmasdkl", "lkjsldkfjsdfkjsdf", "sdflksdjfooiadmakmsd;calksdm;akldc;alkdcm;alsdkm;aldkmca;lsdkm;alcma;lsdkcma;ldkcm;aldkcma;lcmiadmakmsd;calksdm;akldc;alkdcm;alsdkm;aldkmca;lsdkm;alcma;lsdkcma;ldkcm;aldkcma;lcma;ldkcma;ldkcm;aldkcma;ldma;ldkcma;ldkcm;aldkcma;ldmiadmakmsd;calksdm;akldc;alkdcm;alsdkm;aldkmca;lsdkm;alcma;lsdkcma;ldkcm;aldkcma;lcma;ldkcma;ldkcm;aldkcma;ldmiadmakmsd;calksdm;akldc;alkdcm;alsdkm;aldkmca;lsdkm;alcma;lsdkcma;ldkcm;aldkcma;lcma;ldkcma;ldkcm;aldkcma;ldmasdkl",])



def shortened_tweet_truncator(tweet)
  if tweet.length > 140
    tweet[0...140]
  else
    tweet
  end
end