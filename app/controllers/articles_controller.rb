class ArticlesController < ApplicationController

def index
     @post = Blog.all
     render "articles.html.erb"
end	

def show
    @r=Blog.find_by_name(params[:id])
end

def create
    Blog.create(blog_params)
end

def author_show
    @auth = Author.find_by_author_name(params[:author_id])
    @blog=Blog.where(:author_id => @auth.id)
end

private
	def blog_params
    params.require(:blog).permit(:name, :author,:category)
	end
end
