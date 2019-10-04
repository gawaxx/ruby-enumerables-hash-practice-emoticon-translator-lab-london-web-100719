require "yaml"

def load_library(file_path)
  
  emoties = YAML.load_file(file_path)
  
  newh = {
    'get_meaning' => {},
    'get_emoticon' => {}
  }

  emoties.map do |key,value|
    newh['get_emoticon'][value[0]] = emoties[key][1]
    newh['get_meaning'][value[1]] = key
    
  end

  newh
  
end

def get_japanese_emoticon(file_path, emotie)
  
  result = load_library(file_path)['get_emoticon'][emotie]
  result ? result : "Sorry, that emoticon was not found"
  
end

def get_english_meaning(file_path, emotie)
  
  result = load_library(file_path)['get_meaning'][emotie]
  result ? result : "Sorry, that emoticon was not found"
  
end