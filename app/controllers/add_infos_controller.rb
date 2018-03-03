class AddInfosController < InheritedResources::Base

  private

    def add_info_params
      params.require(:add_info).permit(:name, :location, :number, :condition, :description, :image)
    end
end

