core = 6.x
api = 2

; include Pressflow core
includes[pressflow] = "http://github.com/ergonlogic/Makefiles/raw/master/el_pressflow.make"

; include basic stuff
includes[el_base] = "http://github.com/ergonlogic/Makefiles/raw/master/el_base.make"

; Mig5's profile (includes it's own .make)
projects[feature_server][type] = "profile"
projects[feature_server][download][type] = "git"
projects[feature_server][download][url] = "git://git.mig5.net/drupal/profiles/feature_server"

; Missing dependency
projects[] = strongarm
