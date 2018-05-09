def reformat_languages(languages)
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

#new hash 
#add wanted components of orig hash to new hash 
#add the last style key value pair 
#return new hash 

oo_hash = {}
functional_hash={}
merged_hash={}

oo = languages[:oo]
functional = languages[:functional]

oo.each do |lang, type|
  oo_hash[lang] = type
end 

oo_hash.each do |lang, type|
  type[:style] = [:oo]
end 

functional.each do |lang, type|
  functional_hash[lang] = type
end 

functional_hash.each do |lang, type|
  type[:style] = [:oo]
end 

merged_hash = oo_hash.merge(functional_hash)

merged_hash
end
