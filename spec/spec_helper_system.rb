require 'rspec-system/spec_helper'

RSpec.configure do |c|
  c.before :suite do
    # Insert some setup tasks here
    shell 'yum install -y ntp'
  end
end
