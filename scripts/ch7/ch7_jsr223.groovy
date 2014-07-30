//OUT.println("processing label...$Label")
def response = prev.getResponseDataAsString()
def slurper = new XmlSlurper()
def html = slurper.parseText(response)
def cars =
        html.car.collect {
            [
                    name: it.@name.text(),
                    make: it.@make.text(),
                    year: it.@year.text(),
                    country: it.country

            ]
        }

int count = 0
cars.each {
  vars.putObject("car_${count++}", it)  
}
