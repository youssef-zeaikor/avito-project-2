class Article < ApplicationRecord
    belongs_to :user

    validates :title, presence:true,length: { minimum: 10,maximum:100 }
    validates :description, presence:true ,length: { minimum: 100,maximum:255 }
    validates :price, presence:true 
    validates :image_url, presence:true 
    validates :etat, presence:true 
    validates :annee_modele, presence:true 
    validates :orgine, presence:true 
    validates :premiere_main, presence:true 
    validates :marque, presence:true 
    validates :nombre_portes, presence:true 
    validates :modele, presence:true 
    validates :kilometrage, presence:true 
    validates :ville, presence:true 
    

end