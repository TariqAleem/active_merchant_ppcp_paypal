module ActiveMerchant #:nodoc:
  module Billing #:nodoc:
    class PaypalCustomerGateway < PaypalExpressRestGateway

      def register_partner(options)
        post('v2/customer/partner-referrals', options)
      end

      def create_order(options)
        post('v2/checkout/orders', options)
      end

      def get_token(options)
        post('v1/oauth2/token', options)
      end

      def authorize(order_id, options)
        post("v2/checkout/orders/#{ order_id }/authorize", options)
      end
    end
  end
end
## Calling Mechanism
# paypal_customer = ActiveMerchant::Billing::PaypalCustomer.new(paypal_options)
# paypal_customer.register_partner({})
