# frozen_string_literal: true

class OrdersController < ApplicationController
  def index
    # @drivers = Driver.all
    @ordera = Order.order(:fullName)
  end

  def show
    @order = Order.find(params[:id])
  end
end
