class Helpers

    def self.current_user(session)
        session[:user_id]
        @user = User.find_by(id: session[:user_id])
        @user
    end

    def self.is_logged_in?(session)
        if session[:user_id]
            true
        end
    end



end