
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamic-reconfigure, geometry-msgs, nav-msgs, roscpp, roslaunch, roslint, tf }:
buildRosPackage {
  pname = "ros-melodic-mocap-optitrack";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/mocap_optitrack-release/archive/release/melodic/mocap_optitrack/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "26c631a93df50d62e137b502d5f942e99ae9df69416cb3fc225a99b2ff450599";
  };

  buildType = "catkin";
  checkInputs = [ roslaunch roslint ];
  propagatedBuildInputs = [ dynamic-reconfigure geometry-msgs nav-msgs roscpp tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Streaming of OptiTrack mocap data to tf
    <p>
    This package contains a node that translates motion capture data from an
    OptiTrack rig to tf transforms, poses and 2D poses. The node receives
    packets that are streamed by a NatNet compliant source, decodes them and
    broadcasts the poses of configured rigid bodies as tf transforms, poses,
    and/or 2D poses.
    </p>
    <p>
    Currently, this node supports the NatNet streaming protocol v3.0
    </p>
    <p>
    Copyright (c) 2013, Clearpath Robotics<br/> 
    Copyright (c) 2010, University of Bonn, Computer Science Institute VI<br/>
    All rights reserved.
    </p>'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}