class StylesController < ApplicationController
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
      redirect_to @style, nitice: "スタイル投稿完了"
    else
      flash.now[:alert] = "スタイルの投稿に失敗"
      render :new
    end
  end

  def update
    if @style.update(style_params)
      redirect_to @style, notice: "スタイルの更新完了"
    else
      flash.now[:alert] = "スタイルの更新に失敗"
      render :edit
    end
  end

  def destory
    if @style.destory
      flash[:notice] = "スタイルが削除されました"
    else
      flash[:alert] = "スタイルの削除に失敗"
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
