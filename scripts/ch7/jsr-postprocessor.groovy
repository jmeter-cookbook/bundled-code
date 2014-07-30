import groovy.json.JsonSlurper

def res = prev.getResponseDataAsString()
def slurper = new JsonSlurper()
def result = slurper.parseText(res)
OUT.println(">>>> " + result.request.id)
vars.putObject("id", result.request.id as String)