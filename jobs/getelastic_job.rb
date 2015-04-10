# :first_in sets how long it takes before the job is first run. In this case, it is run immediately

#test="staging"

SCHEDULER.every '20s', :first_in => 0 do |job|
  send_event('API', text: get_build_value('api','staging') )
  send_event('SSO', text: get_build_value('sso','staging') )
  send_event('SF360', text: get_build_value('sf360','staging') )
  send_event('CLERK', text: get_build_value('clerk','staging') )
end
