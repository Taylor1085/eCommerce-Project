# frozen_string_literal: true

Rails.application.routes.draw do
  get 'orders/index'
  get 'orders/show'
  get 'customers/index'
  get 'customers/show'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  resources :orders, only: %i[index show]
  resources :customers, only: %i[index show]

  root to: 'admin/dashboard#index'
end
