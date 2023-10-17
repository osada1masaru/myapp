# frozen_string_literal: true

class StylesController < ApplicationController
  before_action :set_own_style, only: %i[edit update destroy]

  def index
    @styles = Style.with_attached_image
  end

  def show
    @style = Style.find(params[:id])
  end

  def new
    @style = Style.new
  end

  def edit; end

  def create
    @style = current_user.styles.build(style_params)

    if @style.save
      redirect_to @style, nitice: 'スタイル投稿完了'
    else
      flash.now[:alert] = 'スタイルの投稿に失敗'
      render :new
    end
  end

  def update
    if @style.update(style_params)
      redirect_to @style, notice: 'スタイルの更新完了'
    else
      flash.now[:alert] = 'スタイルの更新に失敗'
      render :edit
    end
  end

  def destroy
    if @style.destroy
      flash[:notice] = '施設が削除されました。'
    else
      flash[:alert] = '施設の削除に失敗しました。'
    end

    redirect_to styles_url
  end

  def own
    @styles = current_user.styles.with_attached_image
  end

  private

  def set_own_style
    @style = current_user.styles.find(params[:id])
  end

  def style_params
    params.require(:style).permit(:name, :menu, :detail, :image)
  end
end
