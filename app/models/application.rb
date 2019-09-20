class Application < ApplicationRecord

    
    has_secure_token
    has_many :chats, dependent: :destroy
    has_many :messages, dependent: :destroy


end
