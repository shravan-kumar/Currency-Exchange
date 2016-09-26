package currency_converter

class UrlMappings {

    static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        "/"(controller: 'login', view: 'index')
        "500"(view:'/error')
        "404"(view:'/notFound')
    }
}
