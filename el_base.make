core = 6.x
api = 2

; get el_base feature from github
projects[el_base][type] = "module"
projects[el_base][download][type] = "git"
projects[el_base][download][url] = "git://github.com/ergonlogic/el_base.git"

; features & its dependencies
projects[] = features
projects[] = ctools
projects[] = strongarm
projects[] = context
projects[] = diff
projects[] = views

; include openid_relying
includes[openid_relying] = "https://github.com/ergonlogic/el_openid_relying/raw/master/el_openid_relying.make"

; dependencies
projects[] = admin_menu
