module EuGdpr::Backend
  class PersonalDataController < Itsf::Backend::Resource::BaseController
    def self.resource_class
      EuGdpr::PersonalData
    end

    private

    def load_collection
      @collection = Kaminari.paginate_array(load_collection_scope.all).page(params[:page])
    end

    def permitted_params
      params.require(:personal_data_registry).permit()
    end
  end
end
