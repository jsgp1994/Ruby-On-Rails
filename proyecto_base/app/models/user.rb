class User < ApplicationRecord
    has_many :posts
    validates :email, presence: true
    validates :name, presence: true
    validates :auth_token, presence: true

    after_initialize :generate_auth_token

    #Se invoca al generar un User.create
    #unless es decir if !auth_token.present?
    def generate_auth_token
        unless auth_token.present?
            #generar auth code
            self.auth_token = TokenGenerationService.generate
        end 
    end    


end
