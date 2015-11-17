

Rails.application.config.middleware.use OmniAuth::Builder do
provider :facebook, '967316299994613','9fe4bf5c30185a9be9d33b14544681a5', scope: 'email', info_fields: 'email,name'

end