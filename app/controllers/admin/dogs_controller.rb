class Admin::DogsController < ApplicationController
  before_action :set_dog, only: [:show, :edit, :update, :destroy]

  # GET /admin/dogs
  # GET /admin/dogs.json
  def index
    @dogs = Dog.all
  end

  # GET /admin/dogs/1
  # GET /admin/dogs/1.json
  def show
  end

  # DELETE /admin/dogs/1
  # DELETE /admin/dogs/1.json
  def destroy
    @admin_dog.destroy
    respond_to do |format|
      format.html { redirect_to admin_dogs_url, notice: 'Dog was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dog
      @dog = Dog.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_dog_params
      params.fetch(:admin_dog, {})
    end
end
