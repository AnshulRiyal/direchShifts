# class Users::SessionsController < Devise::SessionsController
#   respond_to :json
#   def create
#     super
#     respond_to do |format|
#       format.html {
#         @user.save ? (render @user) : (render :new)
#       }
#       format.json {
#         @user.save ? (render :json => {:state => {:code => 0}, :data => @user }) : render (:json => {:state => {:code => 1, :messages => @user.errors.full_messages} })
#       }
#     end
#   private

#   def respond_with(resource, _opts = {})
#     render json: { message: 'You are logged in.' }, status: :ok
#   end

#   def respond_to_on_destroy
#     log_out_success && return if current_user

#     log_out_failure
#   end

#   def log_out_success
#     render json: { message: "You are logged out." }, status: :ok
#   end

#   def log_out_failure
#     render json: { message: "NO CHANGES."}, status: :unauthorized
#   end
# end
