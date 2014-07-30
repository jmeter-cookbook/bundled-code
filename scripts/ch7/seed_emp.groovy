import groovy.json.*

def builder = new JsonBuilder()

def df = new DateFormatThreadLocal().initialValue()

100.times {
	def id = it
	//println "$id..."
	def root =
	builder.emp {
		employeeId "$id"
		employeeName "first_$id last_$id"
		startDate df.format(new Date())
		if (id % 2 == 0) {
			endDate df.format(new Date() + 4)
		} else {
			endDate df.format(new Date() + 7)
		}
	}

	//println builder.toPrettyString()

	//writing to file
	def file = new File("my_requests.json")
	file << builder.toString()
}

//{"employeeId":666,"employeeName":"Stephen Lee","startDate":"2014-07-01T00:00:00Z","endDate":"2014-07-08T00:00:00Z"}