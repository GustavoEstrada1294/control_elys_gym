# NOTE: pin jquery to jsdelivr. this will make jquery global on import;
#       jspm wraps packages in a module [1], so jquery is not available globally.
pin "jquery", to: "https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.js"

# NOTE: a few answers suggested `jquery-ui-dist`. I couldn't add it with 
#       `bin/importmap`; use https://generator.jspm.io/ to get the url.
pin "jquery-ui-dist", to: "https://ga.jspm.io/npm:jquery-ui-dist@1.13.1/jquery-ui.js"

# works fine
pin "jqtree", to: "https://ga.jspm.io/npm:jqtree@1.6.2/lib/tree.jquery.js"