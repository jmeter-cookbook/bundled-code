def slurper = new XmlSlurper()
def response = new File('remotecontent.xml').text
def html = slurper.parseText(response)

println "$html"
def devs = html.developer.collect {
	[
		user: it.id,
		name: it.name,
		email: it.email//,
		//roles: it.roles.collect { role -> it.role.text() }
	]
}

println devs