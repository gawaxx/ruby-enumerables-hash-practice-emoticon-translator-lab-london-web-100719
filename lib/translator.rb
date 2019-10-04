require "yaml"

def load_library(file_path)
  theHash = {get_meaning: {},get_emoticon: {}}
  emoties = YAML.load_file(file_path).each { |key, value|
  
    theHash'get_emoticon'][value[0]] = emoties[key][1]
    theHash['get_meaning'][value[1]] = key
  }
  
  #theHash = {get_meaning: {},get_emoticon: {}}
  return theHash
  
end

def get_japanese_emoticon(file_path, emotie)
  
  result = load_library(file_path)['get_emoticon'][emotie]
  result ? result : "Sorry, that emoticon was not found"
  
end

def get_english_meaning(file_path, emotie)
  
  result = load_library(file_path)['get_meaning'][emotie]
  result ? result : "Sorry, that emoticon was not found"
  
end