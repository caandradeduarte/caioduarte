class LanguagesController < ApplicationController
  before_filter :require_authentication, :only => [:create, :update, :destroy]

  def index
    @languages = Language.all
  end

  def new
    @language = Language.new
  end

  def edit
    @language = Language.find(params[:id])
  end

  def create
    @language = Language.new(params[:language])
    @language.bio= Bio.new

    if @language.save
      redirect_to languages_path, :notice => t('flash.notice.language.created')
    else
      render action: "new"
    end
  end

  def update
    @language = Language.find(params[:id])

    if @language.update_attributes(params[:language])
      redirect_to languages_path, :notice => t('flash.notice.language.updated')
    else
      render action: "edit"
    end
  end

  def destroy
    @language = Language.find(params[:id])
    
    if @language.destroy
      redirect_to languages_url
    else
      redirect_to languages_url, :alert => "#{@language.errors[:base][0].to_s}"
    end
  end
end
