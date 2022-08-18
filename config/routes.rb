Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  namespace :api do
    namespace :v1 do
       #/api/v1
       resources :validation_codes, only: [:create]
       # 发送验证码
       # 只保留创建功能
       resource :session, only: [:create, :destroy]
       # 登入/登出
       resource :me, only:[:show]
       # 当前用户
       resources :items
       # 记账数据
       resources :tags
       #创建标签
    end
  end
end
