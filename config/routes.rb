# @Author: xiaojiezhang
# @Date:   2019-01-28T18:03:06-05:00
# @Last modified by:   xiaojiezhang
# @Last modified time: 2019-01-30T10:24:41-05:00



# frozen_string_literal: true

Rails.application.routes.draw do
  resources :orders, except: %i[new edit]
  resources :products, except: %i[new edit]
  resources :categories, except: %i[new edit]
  resources :customers, except: %i[new edit]
  # RESTful routes
  resources :examples, except: %i[new edit]

  # Custom routes
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out' => 'users#signout'
  patch '/change-password' => 'users#changepw'
end
