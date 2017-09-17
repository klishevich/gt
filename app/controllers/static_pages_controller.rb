class StaticPagesController < ApplicationController
  def home
  end

  def events
  end

  def gallery
  end

  def about_us
  end

  def curriculum
  end

  def apply
  end

  def view_image
    file_path = Rails.root.join('app/assets/images').join(params[:image]).exist?
    if file_path
      @file_name = params[:image]
    else
      @file_name = "logo2.png"
    end
  end

end
