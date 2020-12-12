Handler = Proc.new do |request, response|
    response.status = 200
    response['Content-Type'] = 'application/json'
    response.body = JSON[response_type: 'in_channel', text: "Hello #{request.method(:body).user_name}, the date and time is #{Time.new}."]
end