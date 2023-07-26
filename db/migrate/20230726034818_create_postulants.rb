class CreatePostulants < ActiveRecord::Migration[7.0]
  def change
    create_table :postulants do |t|
      t.string :description
      t.string :message
      t.references :user, null: false, foreign_key: true
      t.references :offer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
