require "pry"

class User
    attr_accessor :user_email, :user_age
    @@all_user = []

    def initialize (user_email_to_save, user_age_to_save)
        @user_age = user_age_to_save
        @user_email = user_email_to_save
    end

    def all
        for User.each do iter
            @@all_user << iter
        end
        puts @@all_user []
    end
    
binding.pry
end

puts sdfsdfse