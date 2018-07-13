






def word_substituter(tweet)
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




    tweet.split(" ").collect do |word|
      if dictionary.keys.include?(word.downcase)
        word = dictionary[word.downcase]
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

    if tweet.length > 140
      word_substituter(tweet)
    else
      tweet
    end
  end
end

def shortened_tweet_truncator(tweet)
  tweet.split(" ").collect do |phrase|
    if phrase.length >= 140
      word_substituter(phrase)[0..140] + "..."
    else
      phrase
    end
  end.join(" ")
end
