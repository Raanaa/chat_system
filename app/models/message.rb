class Message < ApplicationRecord
    belongs_to :chat


    before_validation( :on => :create ) do 
        chat_messages_nums = self.chat.messages.collect { | m | m.number }
        self.number = chat_messages_nums.empty? ? 1 :chat_messages_nums.max+1

        a = self.chat
        if a.messages_count.nil? 
            a.messages_count = 1
            a.save
        else
            a.messages_count += 1
            a.save
        end
    end

end
