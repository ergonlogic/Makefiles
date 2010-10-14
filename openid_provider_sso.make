core = 6.x
api = 2


; include Pressflow core
includes[pressflow] = "http://github.com/ergonlogic/Makefiles/raw/master/el_pressflow.make"

; include base feature
includes[el_base] = "http://github.com/ergonlogic/Makefiles/raw/master/el_base.make"

; download osso_provider module itself
projects[osso_provider][type] = "module"
projects[osso_provider][download][type] = "git"
projects[osso_provider][download][url] = "http://github.com/developmentseed/osso_provider.git"

; /////////////////////////////////////////////////////////////////////////////////
; Everything from here down is from http://github.com/developmentseed/osso_provider
; /////////////////////////////////////////////////////////////////////////////////

; Drupal queue
projects[drupal_queue][version] = "1.1"

; KeyAuth
projects[keyauth][type] = "module"
projects[keyauth][download][type] = "git"
projects[keyauth][download][url] = "git://github.com/developmentseed/keyauth.git"

; Open ID Provider
projects[openid_provider][type] = "module"
projects[openid_provider][download][type] = "cvs"
projects[openid_provider][download][module] = "contributions/modules/openid_provider"
projects[openid_provider][download][revision] = "DRUPAL-6--1:2010-03-02"
; http://drupal.org/node/621956#comment-2665966
projects[openid_provider][patch][] = "http://drupal.org/files/issues/621956-13_openid_provider_form.patch"
; http://drupal.org/node/810784
projects[openid_provider][patch][] = "http://drupal.org/files/issues/openid_provider-slow_association.patch"

; Open ID Provider SSO
projects[openid_provider_sso][type] = "module"
projects[openid_provider_sso][download][type] = "git"
projects[openid_provider_sso][download][url] = "git://github.com/developmentseed/openid_provider_sso.git"

; PuSH Hub
projects[push_hub][type] = "module"
projects[push_hub][download][type] = "git"
projects[push_hub][download][url] = "git://github.com/developmentseed/push_hub.git"

; XRDS Simple
projects[xrds_simple][version] = "1.0"


