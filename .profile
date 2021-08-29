########## Set Mount Point #####################################
export DEV_MOUNT_POINT=/home/freak/dev
HOME_DIR=/home/freak

########## Create Custom PATH Variables ########################
MONGODB_PATH=${DEV_MOUNT_POINT}/Applications/mongodb

# Node JS Path
NODEPATH=${DEV_MOUNT_POINT}/Applications/nodejs/bin

# Browser Variable
BROWSER=brave

########## Export Custom Variables #############################
export JAVA_HOME=$(dirname $(dirname $(readlink -f $(which javac))))

########## Append Custom PATH Variables to Freak PATH ##########
FREAK_PATH=$MONGODB_PATH\
:$NODEPATH\


########## Do Not Change This ##################################
########## Update System PATH Variable #########################
if [ "$PATH" = "" ]
then
	PATH=$FREAK_PATH
else
	PATH=$PATH:$FREAK_PATH
fi

export PATH PYTHONPATH GOROOT GOPATH BROWSER


########## Softlinks for Home Folders ##########################
rm -rf $HOME_DIR/Documents && ln -s $DEV_MOUNT_POINT/Home/Documents $HOME_DIR/Documents && \
rm -rf $HOME_DIR/Downloads && ln -s $DEV_MOUNT_POINT/Home/Downloads $HOME_DIR/Downloads && \
rm -rf $HOME_DIR/Music && ln -s $DEV_MOUNT_POINT/Home/Music $HOME_DIR/Music && \
rm -rf $HOME_DIR/Pictures && ln -s $DEV_MOUNT_POINT/Home/Pictures $HOME_DIR/Pictures && \
rm -rf $HOME_DIR/Videos && ln -s $DEV_MOUNT_POINT/Home/Videos $HOME_DIR/Videos && \
rm -rf $HOME_DIR/Projects && ln -s $DEV_MOUNT_POINT/Home/Projects $HOME_DIR/Projects && \
rm -rf $HOME_DIR/Games && ln -s $DEV_MOUNT_POINT/Home/Games $HOME_DIR/Games
