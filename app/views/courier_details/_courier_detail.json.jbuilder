json.extract! courier_detail, :id, :sender_name, :sender_address, :sender_contact, :sender_pincode, :receiver_name, :receiver_address, :receiver_contact, :receiver_pincode, :parcel_weight, :service_type, :service_cost, :payment_mode, :user_id, :created_at, :updated_at
json.url courier_detail_url(courier_detail, format: :json)
