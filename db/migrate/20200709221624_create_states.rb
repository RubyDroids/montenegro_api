class CreateStates < ActiveRecord::Migration[6.0]
  def change
    create_table :states do |t|
      t.string  :name
      t.string  :zipcode
      t.string  :iso_code
      
      # Geo info
      t.text    :geo
      t.string  :latitude
      t.string  :longitude
      t.string  :min_latitude
      t.string  :min_longitude
      t.string  :max_latitude
      t.string  :max_longitude
      
      # Relations
      t.string  :country_code
             
      t.timestamps
    end
  end
end
