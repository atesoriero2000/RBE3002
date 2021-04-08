#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/toner/rbe500-ros/src/turtlebot3/turtlebot3_teleop"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/toner/rbe500-ros/install/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/toner/rbe500-ros/install/lib/python2.7/dist-packages:/home/toner/rbe500-ros/build/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/toner/rbe500-ros/build" \
    "/usr/bin/python2" \
    "/home/toner/rbe500-ros/src/turtlebot3/turtlebot3_teleop/setup.py" \
     \
    build --build-base "/home/toner/rbe500-ros/build/turtlebot3/turtlebot3_teleop" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/toner/rbe500-ros/install" --install-scripts="/home/toner/rbe500-ros/install/bin"
