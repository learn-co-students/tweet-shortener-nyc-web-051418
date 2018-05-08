def word_substituter(tweet)
  words = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "For" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
  tweet_array = tweet.split(" ")
  i = 0 
  while i < tweet_array.length
    words.each do |key, value|
      if tweet_array[i] == key
        tweet_array[i] = value
      end
    end
    i += 1
  end
  return tweet_array.join(" ")
end

def bulk_tweet_shortener(tweet)
  i = 0 
  while i < tweet.length
    puts word_substituter(tweet[i])
    i += 1
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    return word_substituter(tweet)
  else
    return tweet
  end
end

def shortened_tweet_truncator(tweet)
  if tweet.length > 140
    "#{tweet[0..136]}..."
  else
    return tweet
  end
end










