class PinterestsController < ApplicationController
    def index
        @pinterests = Pinterest.all.order("id DESC")
    end

    def show
        @pinterest = Pinterest.find(params[:id])
    end

    def new
        @pinterest = Pinterest.new
    end

    def create
        @pinterest = Pinterest.new(pinterest_params)
        if @pinterest.save
            redirect_to :pinterests, notice: t("flash.pinterests.create.notice")
        else
            render :new, alert: t("flash.pinterests.create.alert")
        end
    end

    def edit
        @pinterest = Pinterest.find(params[:id])
    end

    def update
        @pinterest = Pinterest.find(params[:id])
        if @pinterest.update_attributes(pinterest_params)
            redirect_to pinterests_path, notice: t("flash.pinterests.update.notice")
        else
            render :edit, alert: t("flash.pinterests.update.alert")
        end
    end

    def destroy
        @pinterest = Pinterest.find(params[:id])
        if @pinterest.destroy
            redirect_to pinterests_path, notice: t("flash.pinterests.destroy.notice")
        else
            redirect_to @pinterest, alert: t("flash.pinterests.destroy.alert")
        end
    end

    def pinterest_params
        params.require(:pinterest).permit(:title, :image, :description)
    end
end
