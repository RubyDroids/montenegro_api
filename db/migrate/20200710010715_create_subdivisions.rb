class CreateSubdivisions < ActiveRecord::Migration[6.0]
  def change
    create_table :subdivisions do |t|
      t.string :name
      t.string :display_name
      t.string :postcode
      t.text   :boundingbox
      t.string :lat
      t.string :lon
      t.string :reference_id
      
      t.timestamps
    end
    
    add_reference :subdivisions, :state, index: true
  end
end
