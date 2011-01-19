core = 6.x
api = 2


;;;;;;;;;;;;;;;;;;;;;;;   Include the latest Pressflow core
;   CORE: Pressflow   ;     N.B.: Should track core updates
;;;;;;;;;;;;;;;;;;;;;;;     Last Updated: 01/18/2011
includes[pressflow] = "http://github.com/ergonlogic/Makefiles/raw/master/el_pressflow.make"


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;   Get the Feature Server profiles
;   PROFILE: Feature Server   ;     As per: 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;     Last updated: 01/18/2011

projects[feature_server][type] = "profile"
projects[feature_server][download][type] = "git"
projects[feature_server][download][url] = "https://github.com/mig5/feature_server.git"

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;    ADDITIONAL CUSTOM FEATURES    ;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;TODO make API site config into a feature
