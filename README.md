# Entrega1
aqui en este proyecto se subira la entrega # 1 de topicos de telematica

Creando la aplicacion
rails new blog

mi primera pagina: "Bienvenido a mi blog"
rails generate controller welcome index
edit:
    app/views/welcome/index.html.erb
    config/routes.rb


generar controlador
rails generate Article title body:text visits_count:integer

Crear form.html
edit: app/views/articles/new.html.erb:
<%= form_for :article do |f| %>
<p>
  <%= f.label :title %><br>
  <%= f.text_field :title %>
</p>

<p>
  <%= f.label :text %><br>
  <%= f.text_area :text %>
</p>
<p>
  <%= f.submit %>
</p>
<% end %>

añadir 'create' action to ArticlesController:
 def new 
 	@article = Article.new
 end
def edit
  @article = Article.find(params[:id]) 
end
#POST /articles
#INSERT INTO
def create
	@article = Article.new(article_params)
#para guardar en la bd
#que si el articulo pudo guardarse(validaciones) y si no no deja crear el articulo
@article.valid?
	if @article.save
		redirect_to @article
	else
		render :new
	end
end


corriendo  Migration
rails db:migrate

Guardando en  el  controlador
app/controllers/articles_controller.rb
def create
  @article = Article.new(params[:article])

  @article.save
  redirect_to @article
end

Corriendo servidor
rails server

Desplegando heroku

heroku create
heroku login
heroku open

LENGUAJE DE PROGRAMACIÓN
Ruby
FRAMEWORK WEB - BACKEND
Rails
FRAMEWORK WEB - FRONTEND (Si aplica)
utilizará Templates HTML
WEB APP SERVER
Apache Web Server

WEB SERVER
Apache Web Server

BASE DE DATOS
Postgres
