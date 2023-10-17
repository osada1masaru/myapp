module StylesHelper
  def style_image(style)
    style.image.presence || "style/Sorry not Image.jpg"
  end

  def is_own_style?(style)
    style.user == current_user
  end
end
