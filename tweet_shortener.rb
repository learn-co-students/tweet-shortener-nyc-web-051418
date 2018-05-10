require "pry"

$dictionary = {
"hello" => 'hi',
"to" => '2',
"two"=> '2',
"too"=> '2',
"for" => '4',
"four" => '4',
'be' => 'b',
'you' => 'u',
"at" => "@",
"and" => "&",
"For" => "4"
}

def word_substituter(long_string)


  array_strings = long_string.split(" ")
    array_strings.each_with_index do |word, index|
      $dictionary.each do |key, value|
        if word == key
          array_strings[index] = $dictionary[key]
        end
      end
    end

 array_strings.join(" ")

end

word_substituter("Hey guys, can anyone teach me how to be cool? I really want to be the best at everything, you know what I mean? Tweeting is super fun you guys!!!!")

def bulk_tweet_shortener(tweets_array)
  new_array = tweets_array.map do |element|
    puts word_substituter(element)
  end
end

def selective_tweet_shortener(tweet)
  #shorten the passed in tweet
  tweet.length > 140 ? "#{tweet[0...140]}" : tweet
end

def shortened_tweet_truncator(tweet)
  tweet.length > 140 ? "#{tweet[0...140]}" : tweet
end
