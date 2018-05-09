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

def word_substituter(tweet)
  tweet.split.collect do |word|
    if dictionary.keys.include?(word.downcase)
      word = dictionary[word.downcase]
    else word
    end
  end
  .join(" ")
end

def bulk_tweet_shortener(array_of_tweets)
  #word_substituter(array_of_tweets)
  newish = array_of_tweets.collect do |x|
    word_substituter(x)
  end
  newish.each do |x|
    puts "#{x}"
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length >= 141
    word_substituter(tweet)
  else
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  if tweet.length >= 141
   new_short = word_substituter(tweet)
     if new_short.length >= 141
       new_short[1..140]
     end
  else tweet
  end
end
