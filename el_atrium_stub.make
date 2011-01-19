core = "6.x"
api = 2

;;;;;;;;;;;;;;;;;;;;;;;   Include the latest Pressflow core
;   CORE: Pressflow   ;     N.B.: Should track core updates
;;;;;;;;;;;;;;;;;;;;;;;     Last Updated: 01/18/2011
includes[pressflow] = "http://github.com/ergonlogic/Makefiles/raw/master/el_pressflow.make"


;;;;;;;;;;;;;;;;;;;;;;;;;;;;   Get the Open Atrium profile from d.o via CVS
;   PROFILE: Open Atrium   ;     As per: https://community.openatrium.com/documentation-en/node/1420
;;;;;;;;;;;;;;;;;;;;;;;;;;;;     Last updated: 01/18/2011

projects[openatrium][type] = "profile"
projects[openatrium][download][type] = "cvs"
projects[openatrium][download][module] = "contributions/profiles/openatrium"
projects[openatrium][download][revision] = "DRUPAL-6--1-0-BETA9"
; TODO: create & apply patch to comment out some stuff that messes up Aegir installs
; TODO: create & apply patch(es) to overcome UID1 issue

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;    ADDITIONAL CONTRIB FEATURES   ;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;   Open Atrium OpenID Simple Sign-On Provider
;   OA OSSO provider  ;     As per: https://github.com/developmentseed/osso_provider/blob/master/README.markdown
;;;;;;;;;;;;;;;;;;;;;;;     Last updated: 01/18/2011

; TODO: create "keys" feature to pull auth_keys from private repo

projects[osso_provider][type] = module
projects[osso_provider][subdir] = features
projects[osso_provider][download][type] = git
projects[osso_provider][download][url] = git://github.com/developmentseed/osso_provider.git

; OSSO Provider dependencies
projects[drupal_queue][version] = "1.1"

projects[keyauth][type] = "module"
projects[keyauth][download][type] = "git"
projects[keyauth][download][url] = "git://github.com/developmentseed/keyauth.git"

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



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;    ADDITIONAL CUSTOM FEATURES    ;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; TODO: set up proper feature server, ideally integrated w/ API site
; TODO: rename oa_sheetnode to:
;projects[oa_spreadsheets][location] = "http://code.ergonlogic.net/fserver"
; TODO: rename oa_bookmark to:
;projects[oa_bookmarks][location] = "http://code.ergonlogic.net/fserver"
; TODO: create proper og_subgroups feature
; TODO: create proper node_hierarchy feature for casetracker

; Pending those TODOs:
projects[oa_sheetnode][type] = "module"
projects[oa_sheetnode][download][type] = "git"
projects[oa_sheetnode][download][url] = "https://ergonlogic@github.com/ergonlogic/OA-Sheetnode.git"

projects[oa_bookmark][type] = "module"
projects[oa_bookmark][download][type] = "git"
projects[oa_bookmark][download][url] = "https://ergonlogic@github.com/ergonlogic/OA-Bookmark.git"
