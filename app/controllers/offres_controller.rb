class OffresController < ApplicationController

  def index

    @offres = Offre.all

  end

  def show

    @offre = Offre.find(params[:id])


  end

  def edit
    @offre = Offre.find(params[:id])

  end

  def update

    @offre = Offre.find(params[:id])
    @offre.update(offre_params)

    redirect_to offres_path

  end

  def new

    @offre = Offre.new

  end

  def create

    offre = Offre.create(offre_params)
    redirect_to offre_path(offre.id)

  end

  def destroy

    @offre = Offre.find(params[:id])
    @offre.destroy

    redirect_to offres_path

  end

  private

  def offre_params

    params.require(:offre).permit(:poste, :contrat)

  end


end
