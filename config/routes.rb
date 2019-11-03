# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  resources :orders, only: %i[index show]
  resources :customers, only: %i[index show]
  resources :products, only: %i[index show]
  resources :categories, only: %i[show]

  root to: 'admin/dashboard#index'
end
