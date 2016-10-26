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
end
