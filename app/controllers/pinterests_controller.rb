class PinterestsController < ApplicationController
  before_action :set_pinterest, only: [:show, :edit, :update, :destroy, :ativo]

  def index
    @pinterests = Pinterest.all
  end

  def show
  end

  def new
    @pinterest = Pinterest.new
  end

  def edit
  end

  def create
    @pinterest = Pinterest.create(pinterest_params)
    if @pinterest.save
      redirect_to :pinterests, notice: t("flash.pinterests.create.notice")
    else
      flash[:alert] = t("flash.pinterests.create.alert")
      render :new
    end
  end

  def update
    if @pinterest.update(pinterest_params)
      redirect_to :pinterests, notice: t("flash.pinterests.update.notice")
    else
      flash[:alert] = t("flash.pinterests.update.alert")
      render :edit
    end
  end

  def destroy
    if @pinterest.destroy
      redirect_to pinterests_path, notice: t("flash.pinterests.destroy.notice")
    else
      flash[:alert] = t("flash.pinterests.create.notice")
      redirect_to pinterests_path, notice: t("flash.pinterests.destroy.notice")
    end
  end
  
  def ativo
    if @pinterest.ativo
      redirect_to({ action: 'index' }, notice: "Pinterest is ativo.")
    else
      redirect_to({ action: 'index' }, notice: "Problem in put Pinterest ativo.")
    end
  end

  private
    def set_pinterest
      @pinterest = Pinterest.find(params[:id])
    rescue ActiveRecord::RecordNotFound
      flash[:alert] = "Pinterest não encontrado."
      redirect_to pinterests_path
    end

    def pinterest_params
      params
          .require(:pinterest)
          .permit(:description, :status)
    end
end

