class Usuario < ApplicationRecord
    has_secure_password
       
    validates :nome, presence: true
    validates :email, presence: true, uniqueness: true    
    validates :senha, presence: true, confirmation: true
end
