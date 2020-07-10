class AddCountryIdToStates < ActiveRecord::Migration[6.0]
  def change
    add_reference :states, :country, index: true
  end
end
