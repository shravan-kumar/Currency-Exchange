package currency_converter

import grails.plugins.rest.client.RestBuilder

class TransactionController extends RestBuilder {

    def index() {

        RestBuilder restBuilder = new RestBuilder()

        def resp = restBuilder.get('https://openexchangerates.org/api/latest.json?app_id=b583d249de9b4917ae0f545c818914d4')
        def content = resp.getJson()
        render (view: 'index', model: [data: content.rates])
    }

    def send() {
        String name = params.name
        render (view: 'send', model: [name: name])
    }
}
