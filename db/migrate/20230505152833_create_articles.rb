class CreateArticles < ActiveRecord::Migration[6.1]
  def change
    create_table :articles do |t|
      t.string :type
      t.string :title
      t.text :description
      t.text :image_url
      t.string :price
      t.integer :etat
      t.integer :annee_modele 
      t.text :orgine 
      t.boolean :premiere_main 
      t.string :marque 
      t.integer :nombre_portes 
      t.integer :modele 
      t.integer :kilometrage 
      t.string :ville


      t.timestamps
    end
  end
end
