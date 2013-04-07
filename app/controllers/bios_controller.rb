class BiosController < ApplicationController
  def edit
    @bio = Bio.find(params[:id])
  end

  def update
    @bio = Bio.find(params[:id])

    if @bio.update_attributes(params[:bio])
      redirect_to @bio, notice: 'Bio was successfully updated.'
    else
      render action: "edit"
    end
  end
end
