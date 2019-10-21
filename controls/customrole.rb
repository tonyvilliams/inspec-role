title 'Practice InSpec Profile'

#  These are obviously dummy tests that will fail, but in the output you'll see 
# how it tested the nodes.
role = attribute('role', value:'server', description: 'type of node that the InSpec profile is testing')

# only_if %w(server linux).include? role do
#   include_controls 'linuxtests'
# end

# only_if %w(windows).include? role do
#   include_controls 'windowstests'
# end

# only_if %w(tomcat).include? role do
#   include_controls 'tomcattests'
# end

case role
when 'windows'
  include_controls 'windowstests' do
    skip_control 'check if ls exists'
  end
when 'tomcat'
  include_controls 'tomcattests'  do
    skip_control 'check if ls exists'
    skip_control 'check if free exists'
  end
when 'linux' && 'server'
  include_controls 'linuxtests' do
    skip_control 'check if free exists'
  end
end