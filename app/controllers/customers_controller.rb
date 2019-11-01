# frozen_string_literal: true

class CustomersController < ApplicationController
  def index
    # @drivers = Driver.all
    @customers = Customer.order(:name)
  end

  def show
    @customer = Customer.find(params[:id])
  end
end
