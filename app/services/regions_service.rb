require 'json'
require 'ostruct'

class RegionsService
  def validate_zipcode(code = nil)
    if code.present?
      zipcode = code
      district  = District.where(zipcode: zipcode).take

      unless district.nil?
        # Distric found
        zipcode   = district.try(:zipcode)
        state     = district.try(:state)
        city      = district.city_id.present? ? City.find(district.city_id) : state.try(:cities).try(:first)
        city_name = district.try(:city_display_name)

        response = {
            status: :valid,
            message: "Código postal es válido.",
            code: zipcode,
            district: {
              id: district.id,
              name: district.district_display_name
            },
            state: {
              id: state.id,
              name: state.name
            },
            city: {
              id: city.try(:id),
              display_name: city_name
            }}
      else
        # Distric not found
        response = { status: :not_exists, message: "Código postal existe en nuestra base de datos." }
      end
    else
      response = { status: :not_valid, message: "Ingresa un código postal de 4 digitos." }
    end
  end
end
