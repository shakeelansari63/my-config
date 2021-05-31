########## Set Mount Point #####################################
export DEV_MOUNT_POINT=/home/freak/dev
HOME_DIR=/home/freak

########## Create Custom PATH Variables ########################
FLUTTER_PATH=${DEV_MOUNT_POINT}/Applications/flutter/bin
ANDROID_STUDIO_PATH=${DEV_MOUNT_POINT}/Applications/android-studio/bin
MONGODB_PATH=${DEV_MOUNT_POINT}/Applications/mongodb

# Custom Code for Jupyter
JUPY_PATH=${DEV_MOUNT_POINT}/Applications/JupyterNB

# Go Environment
GOROOT=${DEV_MOUNT_POINT}/Applications/go/goroot
GOPATH=${DEV_MOUNT_POINT}/Applications/go/gopath

# Node JS Path
NODEPATH=${DEV_MOUNT_POINT}/Applications/nodejs/bin

# Anaconda Path
CONDAPATH=${DEV_MOUNT_POINT}/Applications/anaconda3/condabin


########## Export Custom Variables #############################
export JAVA_HOME=$(dirname $(dirname $(readlink -f $(which javac))))
export ANDROID_HOME=${DEV_MOUNT_POINT}/Applications/android/

########## Append Custom PATH Variables to Freak PATH ##########
FREAK_PATH=$JUPY_PATH\
:$MONGODB_PATH\
:$GOROOT/bin:$GOPATH/bin\
:$NODEPATH\
:$CONDAPATH\
:$FLUTTER_PATH\
:$ANDROID_STUDIO_PATH\


FREAK_PYTHONPATH=''

########## Do Not Change This ##################################
########## Update System PATH Variable #########################
if [ "$PATH" = "" ]
then
	PATH=$FREAK_PATH
else
	PATH=$PATH:$FREAK_PATH
fi
if [ "$PYTHONPATH" = "" ]
then
	PYTHONPATH=$FREAK_PYTHONPATH
else
	PYTHONPATH=$PYTHONPATH:$FREAK_PYTHONPATH
fi
export PATH PYTHONPATH GOROOT GOPATH




########## Softlinks for Home Folders ##########################
rm -rf $HOME_DIR/Documents && ln -s $DEV_MOUNT_POINT/Home/Documents $HOME_DIR/Documents && \
rm -rf $HOME_DIR/Downloads && ln -s $DEV_MOUNT_POINT/Home/Downloads $HOME_DIR/Downloads && \
rm -rf $HOME_DIR/Music && ln -s $DEV_MOUNT_POINT/Home/Music $HOME_DIR/Music && \
rm -rf $HOME_DIR/Pictures && ln -s $DEV_MOUNT_POINT/Home/Pictures $HOME_DIR/Pictures && \
rm -rf $HOME_DIR/Videos && ln -s $DEV_MOUNT_POINT/Home/Videos $HOME_DIR/Videos && \
rm -rf $HOME_DIR/Projects && ln -s $DEV_MOUNT_POINT/Home/Projects $HOME_DIR/Projects && \
rm -rf $HOME_DIR/Games && ln -s $DEV_MOUNT_POINT/Home/Games $HOME_DIR/Games
