Devise

https://github.com/plataformatec/devise

    $ rails _5.0.6_ new devise_app
    
    gem 'devise' -> bundle install
    	- waden은 세션 관리
    
    $ rails g controller home index
    $ rails g devise:install
    Running via Spring preloader in process 1562
          create  config/initializers/devise.rb
          create  config/locales/devise.en.yml
    ===============================================================================
    
    Some setup you must do manually if you haven't yet:
     1. Ensure you have defined default url options in your environments files. Here is an example of default_url_options appropriate for a development environment in config/environments/development.rb:
           config.action_mailer.default_url_options = { host: 'localhost', port: 3000 }
    
         In production, :host should be set to the actual host of your application.
    
      2. Ensure you have defined root_url to *something* in your config/routes.rb.
         For example:
    
           root to: "home#index"
    
      3. Ensure you have flash messages in app/views/layouts/application.html.erb.
         For example:
    
           <p class="notice"><%= notice %></p>
           <p class="alert"><%= alert %></p>
    
      4. You can copy Devise views (for customization) to your app by running:
    
           rails g devise:views
    

    $ rails g devise users
    Running via Spring preloader in process 1698
    [WARNING] The model name 'users' was recognized as a plural, using the singular 'user' instead. Override with --force-plural or setup custom inflection rules for this noun before running the generator.
          invoke  active_record
          create    db/migrate/20180702014149_devise_create_users.rb
          create    app/models/user.rb
          invoke    test_unit
          create      test/models/user_test.rb
          create      test/fixtures/users.yml
          insert    app/models/user.rb
           route  devise_for :users
        
    $ rake db:migrate    

http://my-first-rails-app-wonwon.c9users.io/users/sign_in -> 알아서 만들어지는 

    $ rake routes
                      Prefix Verb   URI Pattern                    Controller#Action
            new_user_session GET    /users/sign_in(.:format)       devise/sessions#new
                user_session POST   /users/sign_in(.:format)       devise/sessions#create
        destroy_user_session DELETE /users/sign_out(.:format)      devise/sessions#destroy
           new_user_password GET    /users/password/new(.:format)  devise/passwords#new
          edit_user_password GET    /users/password/edit(.:format) devise/passwords#edit
               user_password PATCH  /users/password(.:format)      devise/passwords#update
                             PUT    /users/password(.:format)      devise/passwords#update
                             POST   /users/password(.:format)      devise/passwords#create
    cancel_user_registration GET    /users/cancel(.:format)        devise/registrations#cancel
       new_user_registration GET    /users/sign_up(.:format)       devise/registrations#new
      edit_user_registration GET    /users/edit(.:format)          devise/registrations#edit
           user_registration PATCH  /users(.:format)               devise/registrations#update
                             PUT    /users(.:format)               devise/registrations#update
                             DELETE /users(.:format)               devise/registrations#destroy
                             POST   /users(.:format)               devise/registrations#create
                        root GET    /                              home#index
     
    $ rails g devise:views  #뷰파일 생성

views/session/new.html.erb는 이메일, 패스워드를 가지고 있는 유저와  관련

     $ rails g devise:controllers users

controllers/users/sessions_controller.rb는 원래 로직은 살려두고 Devise::SessionsController 상속받았다.

Omniauthcontroller.rb는 소셜 로그인할때 외부에서 받아온 정보들을 어떻게 처리할 것인지를 하는
