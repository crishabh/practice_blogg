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
def coupons
   
end

private
	def blog_params
   	       params.require(:blog).permit(:name, :author,:category)
	end
end
