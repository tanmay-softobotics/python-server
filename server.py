def myapp(request, start_response):
    print(request)

    status = "200 OK"

    response_headers = [
        ('Content-Type', 'application/json')
    ]

    resp_body = "Hello world".encode('utf-8')

    start_response(status, response_headers)

    return [resp_body]