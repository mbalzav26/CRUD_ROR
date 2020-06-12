class StoresController < ApplicationController

  before_action :set_store, only: [:show, :edit, :update, :destroy]

  def index
    @stores = Store.all
  end

  def show

  end

  def new
    @store = Store.new
  end

  def create
    @store = Store.new(store_params)
    if @store.save
      redirect_to stores_path
    else
      render :new
    end

  end

  def edit
    @store = Store.find(params[:id])
  end

  def update
    @store = Store.find(params[:id])
    if @store.update(store_params)
      redirect_to stores_path
    else
      render :edit
    end
  end

  def destroy
      @store = Store.find(params[:id])
      @store.destroy
      respond_to do |format|
        format.html { redirect_to stores_url, notice: 'Person was successfully destroyed.' }
        format.json { head :no_content }
      end
    end

  private

  def set_store
      @store = Store.find(params[:id])
    end

  def store_params
    params.require(:store).permit(:cod, :nombre, :proveedor)
  end
end
