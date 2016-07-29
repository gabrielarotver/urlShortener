class SiteController < ApplicationController
  def new
    @u = Url.new
  end

  def create

    if (!Url.find_by(long_url: site_params[:long_url]).nil?)
      @u = Url.find_by(long_url: site_params[:long_url])
      flash[:notice] = "success"
      render 'new'
    else
      @u = Url.new(site_params)
      begin
        @u.shortened_url = Randomstring.generate(4);
      end while(!Url.find_by(shortened_url: @u.shortened_url).nil?)
      if @u.save
        flash[:notice] = "success"
        render 'new'
      else
        render 'new'
      end
    end
  end

  private

  def site_params
    params.require(:url).permit(:long_url)
  end

end
