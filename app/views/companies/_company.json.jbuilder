json.extract! company, :id, :name, :employees, :average_salary, :average_age, :listed, :listed_type, :flow, :industry_type, :hire, :magnification, :created_at, :updated_at
json.url company_url(company, format: :json)
