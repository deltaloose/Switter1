class SweetsController < ApplicationController
  #おかし新規登録ページの表示
  def new
    @sweet = Sweet.new
  end
  #おかしの新規作成
  def create
    Sweet.create(sweet_params)
    #@sweet = Sweet.new(sweet_params)
    #@sweet.user_id = current_user.id
    #@sweet.save
    redirect_to sweets_path
  end
  def index
    @sweets = Sweet.all
  end
  def show
    @sweet = Sweet.find(params[:id])
  end

  private
    def sweet_params
      params.require(:sweet).permit(:name, :opinion, :sweet_image)
    end
end
