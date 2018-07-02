# frozen_string_literal: true

class Users::SessionsController < Devise::SessionsController
  # 원래 로직은 살려두고 Devise::SessionsController 상속받았다.
  # before_action :configure_sign_in_params, only: [:create]

  # GET /resource/sign_in
  # def new
  #   super # 부모에 있는 거 그대로 가져오는 
  # end

  # POST /resource/sign_in
  # def create
  #   super
  # end

  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end
end
