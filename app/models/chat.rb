class Chat < ApplicationRecord
    belongs_to :application
    has_many :messages, dependent: :destroy

    before_validation( :on => :create ) do 
        app_chats_nums = self.application.chats.collect { | chat | chat.number }
        self.number = app_chats_nums.empty? ? 1 :app_chats_nums.max+1

        a = self.application
        if a.chats_count.nil? 
            a.chats_count = 1
        else
            a.chats_count += 1
        end
        a.save
    end

end
