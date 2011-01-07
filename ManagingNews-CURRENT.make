core = 6.x
api = 2

; include Pressflow core
includes[pressflow] = "http://github.com/ergonlogic/Makefiles/raw/master/el_pressflow.make"

; get MN from managingnews.com

projects[managingnews][type] = "profile"
projects[managingnews][download][type] = "cvs"
projects[managingnews][download][module] = "contributions/profiles/managingnews"
projects[managingnews][download][revision] = "HEAD"