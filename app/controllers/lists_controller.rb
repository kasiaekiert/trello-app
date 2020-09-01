class ListsController < ApplicationController
    before_action :set_list, only: [:destroy, :show, :edit, :update]

  def index
    @lists = List.all
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(create_params)
    @list.board_id = params[:board_id]
    if @list.save
      redirect_to boards_path, notice: 'list created'
    else
      render :new
    end
  end

  def destroy
    @list.destroy!
    redirect_to lists_path, notice: 'list deleyed'
  end

  def show
  end

  def edit
  end

  def update
    board_attributes = update_params
    if @list.update(name: params[:list][:name])
      redirect_to lists_path, notice: 'list updated!'
    else
      render :edit
    end
  end

  private

  def set_list
    @list = List.find(params[:id])
  end

  def create_list_params
    params.require(:list).permit(:name, :board_id)
  end

  def create_params
    params.require(:list).permit(:name)
  end
end
