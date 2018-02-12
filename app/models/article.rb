class Article < ActiveRecord::Base
	#la tabla => articles
	#campos => article.title() => 'devuelve el titulo del articulo'
	#Escribir metodos
	#validar que el elemento no este vacio
    #username :username, format: { with: /regex/ }

	validates :title, presence: true, uniqueness: true
	validates :body, presence: true , length: { minimum:10 }
end
