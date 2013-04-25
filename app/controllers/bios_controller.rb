class BiosController < ApplicationController
  def edit_multiple
    @bios = Bio.all
  end

  def update_multiple
    params[:bios].each do |bio|
      @bio = Bio.find bio[0]
      @bio.update_attributes(bio[1])
    end

    redirect_to edit_multiple_bios_path, :notice => 'Bios were successfully updated'
  end
end
