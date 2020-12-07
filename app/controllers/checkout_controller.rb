class CheckoutController < ApplicationController
  #POST /checkout/create, uses the shopping cart in session
  def create
    #Load up the shopping cart
    if !cart.present?
      redirect_to root_path
      return
    end
    #establish a connection with Stripe

    items = []
    total = 0
    cart.each do |pr|
      items << {
        name: pr.name,
        description: pr.description,
        amount: (pr.price * 100).to_i,
        currency: "cad",
        quantity: 1
      }
      total += (pr.price * 100).to_i
    end
    province = current_customer.province
    items << {
      name: "GST",
      description: "Goods and services tax",
      amount: (total * province.gst).to_i,
      currency: "cad",
      quantity: 1
    }
    items << {
      name: "PST",
      description: "Provincial Sales tax",
      amount: (total * province.pst).to_i,
      currency: "cad",
      quantity: 1
    }
    items << {
      name: "HST",
      description: "HST",
      amount: (total * province.hst).to_i,
      currency: "cad",
      quantity: 1
    }

    @session = Stripe::Checkout::Session.create(
      payment_method_types: ["card"],
      success_url: checkout_success_url,
      cancel_url: checkout_cancel_url,
      line_items: items
    )

    #redirect to payment

    respond_to do |format|
      format.js # render app/views/checkout/create.js.erb
    end
  end

  def success
    #took money
  end

  def cancel
    #something went wrong
  end
end
