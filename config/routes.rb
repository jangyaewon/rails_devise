Rails.application.routes.draw do
  devise_for :users, controllers: {
        sessions: 'users/sessions'
      }
  # get 'home/index' 루트주소로
  root 'home#index' # devise 2번째 요건
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
