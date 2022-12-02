class HomeController < ApplicationController
  def index
    @home = Home.all
  end

  def show
    @home = Home.find(params[:id])
  end

def new
  @home = Home.new
end

def create
  @home = Home.new(article_params)

  if @home.save
    redirect_to @home
  else
    render :new, status: :unprocessable_entity
  end
end

def edit
  @home = Home.find(params[:id])
end

 def update
@home = Home.find(params[:id])
if @home.update(home_params)
  redirect_to @home
else
  render :edit, status: :unprocessable_entity
 end
end

def destroy
  @home = Home.find(params[:id])
  @home.destroy

  redirect_to root_path, status: :see_other
end

private
def home_params
  params.require(:article).permit(:title, :body)
end
end
