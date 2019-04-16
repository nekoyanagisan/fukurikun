json.extract! coupon, :id, :category, :publisher, :detail, :start_date, :end_date, :created_at, :updated_at
json.url coupon_url(coupon, format: :json)
