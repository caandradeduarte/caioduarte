class BiosController < ApplicationController
  before_filter :require_authentication, :only => :update_multiple

  def edit_multiple
    @bios = Bio.all
  end

  def update_multiple
    params[:bios].each do |bio|
      @bio = Bio.find bio[0]
      @bio.update_attributes(bio[1])
    end

    redirect_to edit_multiple_bios_path, :notice => t('flash.notice.bio.updated')
  end
end
