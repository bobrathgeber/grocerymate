class ListsController < ApplicationController
  before_action :authenticate_user!

  def index
    @lists = List.all
  end

  def new
    @list = List.new
  end

  def show
    @list = List.find(params[:id])
  end

  def create
    @list = List.new(name: params[:list][:name])
    @list.save
    flash.notice = "New list '#{@list.name}' created!"
    redirect_to list_path(@list)
  end

  def edit
    @list = List.find(params[:id])
    @items = Item.all
  end

  def update
    @list = List.find(params[:id])
    @items = Item.all
    flash.notice = "Updated!"
  end

  def destroy
    @list = List.find(params[:id])
    @list.destroy
    flash.notice = "'#{@list.name}' was Deleted!"
    redirect_to lists_path
  end
end
