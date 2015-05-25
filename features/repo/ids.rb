WAIT_TIME=30
STAGING_URL='http://gl-stage.blzng.com/global-lab/app/#/'
LIVE_URL='http://www.globallab4health.org/global-lab/app/#/'
USERNAME='test global'
LOGIN_VALIDATION='.modal-body>span'
LOGGED_IN_USERNAME='.dropdown-toggle.ng-binding'
LOGIN_CANCEL_BUTTON='html/body/div[4]/div/div/form/div[2]/button[1]'
LOGOUT_BUTTON=".//*[@id='ng-app']/div[1]/nav/div/div/ul[2]/li[1]/div/a"
LOGOUT=".//*[@id='ng-app']/div[1]/nav/div/div/ul[2]/li[1]/div/ul/li[3]/a"
BROWSE_BUTTON=".//*[@id='ng-app']/div[1]/nav/div/div/ul[1]/li[2]/a"
INNOVATION_INVENTORY=".//*[@id='ng-app']/div[2]/div[1]/div[1]/div/h3"
INNOVATION_CARD=".//*[@id='ng-app']/div[2]/div[1]/div[2]/div[2]/div/div[1]/gl-innovation-card/div"
SUBMIT_BUTTON=".//*[@id='ng-app']/div[1]/nav/div/div/ul[1]/li[1]/a"
MY_SAVED_INNOVATION=".//*[@id='ng-app']/div[2]/div/div[2]/div[1]/div/div[2]/div[2]/div/label/input"
INNOVATIONS=".//*[@id='ng-app']/div[2]/div[1]/div[2]/div[2]/div/div[1]/gl-innovation-card/div/div/div/h3"
SUBMIT_INNOVATION=".//*[@id='home']/div[2]/div/div[1]"
TERMS_AND_CONDITION=".//*[@id='#footer']/div/nav/div/nav/div/div/ul/li[1]/a"
PRIVACY=".//*[@id='#footer']/div/nav/div/nav/div/div/ul/li[2]/a"
CONTACT=".//*[@id='#footer']/div/nav/div/nav/div/div/ul/li[3]/a"
ADD_GROUP=".//*[@id='model-group']/ul/li[1]/a"

module ApplicationID
	SAVE_CONTINUE_EDIT=".//*[@id='group_form']/div/footer/ul/li[3]/input"
	DELETE=".//*[@id='group_form']/div/footer/ul/li[1]/a"
	SAVE_ANOTHER=".//*[@id='group_form']/div/footer/ul/li[2]/input"
	ADD_GROUP_HEADER=".//*[@id='grp-content-title']/h1"
	HISTORY=".//*[@id='grp-content-title']/ul/li/a"
	GROUPS=".//*[@id='model-group']/a/strong"
	ADOPTER_ADD=".//*[@id='model-adopterinterview']/ul/li[1]/a"
	DELETE_ADOPTER=".//*[@id='adopterinterview_form']/div/footer/ul/li[1]/a"
	HISTORY=".//*[@id='grp-content-title']/ul/li/a"
	CHANGE_ADOPTER=".//*[@id='app_global_lab']/div[1]/ul/li[2]/a"
	GLOBAL_CRUMB=".//*[@id='grp-breadcrumbs']/ul/li[2]/a"
	ADDED_ADOPTER=".//*[@id='result_list']/tbody/tr[1]/th/a"
	ABOUT_BUTTON=".//*[@id='ng-app']/div[1]/nav/div/div/ul[1]/li[5]/a"
  ADD_CHALLENGE=".//*[@id='model-challenge']/ul/li[1]/a"
  SAVE_CHALLENGE=".//*[@id='challenge_form']/div/footer/ul/li[1]/input"
end