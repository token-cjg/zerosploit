extends HTTPRequest

var reference = null

func get_request(url, ref):
	reference = ref
	self.request(str("http://home-cjg.herokuapp.com/", url))

func _on_HTTPRequest_request_completed(result, response_code, headers, body):
	var json = JSON.parse(body.get_string_from_utf8())
	var ips  = []
	
	reference.handle_results(json.result)
