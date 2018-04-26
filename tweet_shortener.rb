# Write your code here.
require 'pry'
def dictionary(long_word)
  dictionary = {
    "hello" => ['hi'],

    "two" => ['2'],

    "to" => ['2'],

    "too" => ['2'],

    "be" => ['b'],

    "you" => ['u'],

    "at" => ['@'],

    "and" => ['&'],

    "for" => ['4']

  }
  dictionary.each do |word|
    if long_word.downcase == word[0]
      return word[1]
    end
  end
  return long_word.split
end

def word_substituter(tweet)
  tweet_arry = tweet.split
  shortened_tweet = []
  i = 0
  while i < tweet_arry.length
    shortened_tweet += dictionary(tweet_arry[i])
    i += 1
  end
  return shortened_tweet.join(" ")
end

def bulk_tweet_shortener(tweets)
  i = 0
  while i < tweets.length
    puts word_substituter(tweets[i])
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
    word = word_substituter(tweet)
    if word.length > 140
      return word[0..139]
    end
  else
    return tweet
  end
end
