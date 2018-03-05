class PinterestController < ApplicationController
  before_action :set_task, only: [:ativo]
  
  def index
    @pinterests = Pinterest.where(status: :inativo)
    @pinterests_ativo = Pinterest.where(status: :ativo)
  end
  
  def create
    @pinterest = Pinterest.new(description: params[:description], status: :inativo)
    
    if @pinterest.save
      redirect_to({ action: 'index' }, notice: "Pinterest was successfully created.")
    else
      redirect_to({ action: 'index' }, notice: "Pinterest was not created.")
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
  def set_task
    @pinterest = Pinterest.find(params[:id])
  end
end
