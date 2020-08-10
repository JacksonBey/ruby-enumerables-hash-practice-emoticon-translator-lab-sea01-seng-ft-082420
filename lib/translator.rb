# require modules here
require 'yaml'
require 'pry'

def load_library(string)
lib = YAML.load_file(string)
emoticons = {}
lib.each do |(key,value)|
  value.each_with_index do |emote,index|
    if index != 1
      emoticons[key] +=[{:english=>"#{emote}"}]
    else
      emoticons[key] +=[{:japanese=>"#{emote}"}]
      binding.pry
    end
  end
end
return emoticons
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end