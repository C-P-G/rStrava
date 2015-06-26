######
# testing and examples for rStrava
# Oct. 2014

######
# test api functions

# get authentication token to access functions
# 'app_name', 'id', 'secret' were assigned to me
# other users will have to get their own values by registering an app on strava
# visit http://www.strava.com/developers, http://strava.github.io/api/

##
# create oath token
# 'stoken' created using 'strava_oauth' function and user-specific access id, secrete

stoken <- config(token = strava_oauth(app_name, app_client_id, app_secret)

# setup info for rate-limiter
usage_left <- as.integer(c(600, 30000))

# get basic user info
get_basic('https://strava.com/api/v3/athlete', stoken)

# get data for another athlete
get_athlete(stoken, '2527465')

# get following
get_following('followers', stoken, '2837007')

# get activities (mine)
tmp <- get_activity_list(stoken)


