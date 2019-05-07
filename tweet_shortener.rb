# Write your code here.

def dictionary 
  dictionary = {
    "hello" => 'hi',
    "to" => '2',
    "two" => '2',
    "too" => '2',
    'be' => 'b',
    "for" => '4',
    "For" => '4',
    'you' => 'u',
    "at" => "@",
    "and" => "&"
  }
end
  
  
def word_substituter(string)
  words = string.split(" ")
  indx = 0 
  dictionary 
   while indx < words.length 
    dictionary.each do |now, after|
      if now == words[indx]
        words[indx] = after  
      end
  end 
    indx += 1 
  end 
return words.join(" ")
end


def bulk_tweet_shortener(array_of_tweets)
  i = 0 
  while i < array_of_tweets.length
    puts "#{word_substituter("#{array_of_tweets[i]}")}"
  i += 1 
  end 
end 


def selective_tweet_shortener(tweets)
   if tweets.length > 140 
    word_substituter(tweets)
  elsif tweets.length < 130 
    puts "#{tweets}"
end 
end 