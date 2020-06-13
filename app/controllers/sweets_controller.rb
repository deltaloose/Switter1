class SweetsController < ApplicationController
  #おかし新規登録ページの表示
  def new
    @sweet = Sweet.new
  end
  #おかしの新規作成
  def create
    @sweet = Sweet.new(sweet_params)
    @sweet.save
    redirect_to sweets_path
  end
  def index
  end
  def show
  end
  private
    def sweet_params
      params.require(:sweet).permit(:name, :opinion, :sweet_image)
    end
end
