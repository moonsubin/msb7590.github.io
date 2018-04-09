class HomeController < ApplicationController
  def index
    @likelion=Lion.all
    #Lion데이터베이스에 대한 모든 정보를 보여달라 이를 @likelion에 할당시킨다.
  end

  def new
  end

  def create
    @post=Lion.new
    @post.title= params[:tiger_title]
    @post.content= params[:tiger_content]
    @post.save
    
    redirect_to '/home/index'
  end
end