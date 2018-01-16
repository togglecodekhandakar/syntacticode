json.extract! employee, :id, :employee_id, :first_name, :last_name, :email_address, :mobile_number, :user_name, :password, :manager_id, :created_at, :updated_at
json.url employee_url(employee, format: :json)
