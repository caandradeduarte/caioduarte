class LanguagesController < ApplicationController
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

    if @language.save
      redirect_to @language, notice: 'Language was successfully created.'
    else
      render action: "new"
    end
  end

  def update
    @language = Language.find(params[:id])

    if @language.update_attributes(params[:language])
      redirect_to @language, notice: 'Language was successfully updated.'
    else
      render action: "edit"
    end
  end

  def destroy
    @language = Language.find(params[:id])
    @language.destroy
  
    redirect_to languages_url
  end
end
