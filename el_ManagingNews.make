core = 6.x
api = 2

; include Pressflow core
includes[pressflow] = "http://github.com/ergonlogic/Makefiles/raw/master/el_pressflow.make"

; get MN from managingnews.com

projects[managingnews][download][type] = "post"
projects[managingnews][download][url] = "http://managingnews.com/files/managingnews-1.1.zip"
