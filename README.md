# timelapse-tweeter
a lil rasPi camera agent that tweets a timelapse every hour (with option to entangle your pinboard feed)  

Here's a simple RasPi setup that tweets a timelapse from the RasPi camera every hour.  
There is also the option to have the scripts tweet a random choice from your recent Pinboard bookmarks, a weird entanglement that I like.  

To install, be in your RasPi command line and do this:  
    git clone https://github.com/AKAMEDIASYSTEM/timelapse-tweeter.git
    
    cd timelapse-tweeter
    
    sudo nano upload.sh
    
    [ ADD YOUR TWITTER CONSUMER SECRET AND IF YOU LIKE, YOUR PINBOARD TOKEN TO UPLOAD.SH ]
    
    sudo chmod +x install.sh
    
    ./install.sh
    
    
...that is it! Now you will have to wait 2 hours (max) for the first timelapses to roll in.
If you'd like to get a headstart, you can force the creation of 60 photos by running:
    ./catchup.sh
    
All of this assumes you have your Pi Camera plugged in, enabled, etc. You will also have to `sudo pip install tweepy` 
