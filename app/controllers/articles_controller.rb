class ArticlesController < ApplicationController
	#accedo con GET /articles
 def index
 	#todos los articulos del modelo article.rb(tabla)
 	@articles = Article.all 
 end
#GET /articles/:id
 def show 
 	#encontrar un registro por id
	@article = Article.find(params[:id])
 end

 #GET /articles/new 
 #crear un nuevo articulo(no se guarda en la bd solo esta en memoria)
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


def destroy
	#delete from article
	@article= Article.find(params[:id])
	@article.destroy #elimina el obj de la bd
	redirect_to article_path
end


#PUT /articles/:id
def update
	# @article.update_attributes({title: 'Nuevo titulo'})
end

private
def article_params

	params.require(:article).permit(:title,:body)
	
end


end