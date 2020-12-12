require 'cgi'

Handler = Proc.new do |request, response|
    response.status = 200
    response['Content-Type'] = 'application/json'
    response.body = JSON[response_type: 'in_channel', text: "Hello #{URI.decode_www_form(request.body).to_h['user_id']}, the date and time is #{Time.new}."]
end