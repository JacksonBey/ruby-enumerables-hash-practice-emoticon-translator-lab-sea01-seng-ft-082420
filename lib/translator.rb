# require modules here
require 'yaml'
require 'pry'

def load_library(string)
lib = YAML.load_file(string)
emoticons = {}
lib.each do |(key,value)|
    emoticons[key]={:english =>"#{value[0]}",:japanese =>"#{value[1]}"}
end
return emoticons
end


def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
emoticons =load_library(string)
emoticons.each do |(key,value)|
  value.each do |values|
    if emote === values[1]
      return key
end
end
end
return "Sorry, that emoticon was not found"
end