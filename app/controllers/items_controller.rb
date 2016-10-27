class ItemsController < ApplicationController
  before_action :authenticate_user!

  def index
    @items = Item.all
    @item = Item.new
  end

  def create
    @item = Item.new(params.require(:item).permit(:name))
    @item.save
    flash.notice = "'#{@item.name}' was added!"
    redirect_to items_path
  end

  def destroy
    @item = Item.find(params[:id])
    @item.destroy
    flash.notice = "'#{@item.name}' was Deleted!"
    redirect_to items_path
  end
end
