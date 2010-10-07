core = 6.x
api = 2

; include Pressflow core
includes[pressflow] = "http://github.com/ergonlogic/Makefiles/raw/master/el_pressflow.make"

; Mig5's profile
projects[feature_server][type] = "profile"
projects[feature_server][download][type] = "git"
projects[feature_server][download][url] = "git://git.mig5.net/drupal/profiles/feature_server"

; DevSeed's feature & theme
projects[fserver][location] = "http://code.developmentseed.org/fserver"
projects[singular][location] = "http://code.developmentseed.org/fserver"

; dependencies
projects[] = cck
projects[] = context
projects[] = features
projects[] = filefield
projects[] = install_profile_api
projects[] = views
projects[] = ctools
projects[tao][location] = "http://code.developmentseed.org/fserver"
