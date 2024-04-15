require "pry"

class User
    attr_accessor :user_email, :user_age
    @@all_user = []

    def initialize(user_email_to_save, user_age_to_save)
        @user_age = user_age_to_save
        @user_email = user_email_to_save
        @@all_user << self
    end
   
    def self.all
        return @@all_user
    end
end

