require "pry"

def languages
languages = {
  :oo => {
    :ruby => {
      :type => "interpreted"
    },
    :javascript => {
      :type => "interpreted"
    },
    :python => {
      :type => "interpreted"
    },
    :java => {
      :type => "compiled"
    }
  },
  :functional => {
    :clojure => {
      :type => "compiled"
    },
    :erlang => {
      :type => "compiled"
    },
    :scala => {
      :type => "compiled"
    },
    :javascript => {
      :type => "interpreted"
    }

  }
}
end

def reformat_languages(languages)
  new_hash = {}
  languages.each do |language, data|
    data.each do |lang_name, info|
      info.each do |type, value|
        if new_hash.key?(lang_name) == false
          new_hash[lang_name] = {type => value, :style => [language]}
        else
          new_hash[lang_name][:style] << language
        end
      end
    end
  end
  new_hash
end

reformat_languages(languages)