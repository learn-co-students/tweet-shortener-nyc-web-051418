def dictionary
  words_to_be_substituted = {"hello" => 'hi',
                            "to" => '2',
                            "two" => '2',
                            "too" => '2',
                            "for" => '4',
                            "For" => '4',
                            "four" => '4',
                            "be" => 'b',
                            "you" => 'u',
                            "at" => "@",
                            "and" => "&"}
end

def word_substituter(tweet)
  tweet.split.collect do |word|
    if dictionary.keys.include? word
      dictionary[word]
    else
      word
    end
  end.join(" ")
end


def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  tweet.length > 140 ? word_substituter(tweet) : tweet
end

def shortened_tweet_truncator(tweet)
  selective_tweet_shortener(tweet)[0,140]
end
