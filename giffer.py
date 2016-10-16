import tweepy
import sys
import requests
import random
from datetime import datetime

# figure out how to get the below twitter things
twitter_consumer_key= 'FILL_IT_IN'
twitter_consumer_secret= 'FILL_IT_IN'
twitter_access_token = 'FILL_IT_IN'
twitter_access_token_secret = 'FILL_IT_IN'
tweet_text = "{:%B %d, %Y at %H:%M}".format(datetime.now())

# Only need to fill these in if you're also adding pinboard tags to your tweets
pinboard_token = 'FILL_IT_IN'
pinboard_url = 'https://api.pinboard.in/v1/posts/recent'

twitter_auth = tweepy.OAuthHandler(twitter_consumer_key, twitter_consumer_secret)
twitter_auth.set_access_token(twitter_access_token, twitter_access_token_secret)
theGif = sys.path[0] + '/lastHour.gif'

# this part can be uncommented if you want to add the pinboard links-as-text feature
'''
payload = {'auth_token': pinboard_token, 'format': 'json'}
ttags = []
r = requests.get(pinboard_url, params=payload)
j = r.json()
for foo in j['posts']:
    # print foo
    if len(foo['tags']) > 1:
        # print foo['tags']
        f = foo['tags'].split(' ')
        for i in f:
            ttags.append(i)
s = set(ttags)
qqq = random.sample(s, 2)
# for t in qqq:
# 	print t
tweet_text = ' | '.join(qqq)
print tweet_text

api = tweepy.API(auth)
api.update_with_media(theGif, tweet_text)
'''

api = tweepy.API(auth)
api.update_with_media(theGif, tweet_text)