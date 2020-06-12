class SweetsController < ApplicationController
  #おかし新規登録ページの表示
  def new
    @sweet = Sweet.new
  end
  def create
    @sweet = Sweet.new(sweet_params)
    @sweet.save
    redirect_to sweets_path
  end
  def index
  end
  def show
  end
end
