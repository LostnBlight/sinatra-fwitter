require './config/environment'

if ActiveRecord::Migrator.needs_migration?
  raise 'Migrations are pending. Run `rake db:migrate` to resolve the issue.'
end

# line of code here for PATCH and DELETE requests
use Rack::MethodOverride

# mount other controllers with 'use'
run ApplicationController
