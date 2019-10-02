extends LineEdit

var Http = load("res://http.tscn")

func _ready():
	var http = get_node("../../../HTTPRequest")
	http.request("http://home-cjg.herokuapp.com/ips.json")
	var instance = Http.instance()
	self.add_child(instance)
	get_node("../LineEdit/HTTPRequest").get_request("ips.json", self)

func handle_results(results):
	# print(results)
	self.text = results.ip
