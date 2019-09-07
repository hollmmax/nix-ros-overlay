
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, roslint, sensor-msgs, catkin, serial, message-generation, message-runtime, roscpp }:
buildRosPackage {
  pname = "ros-melodic-um6";
  version = "1.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/um6-release/archive/release/melodic/um6/1.1.2-1.tar.gz";
    name = "1.1.2-1.tar.gz";
    sha256 = "4290d7ad2a7964728372067e79bf4ea48b27b6233ea5a6eb4ecf19ff2868d933";
  };

  buildType = "catkin";
  buildInputs = [ roslint sensor-msgs serial message-generation roscpp ];
  propagatedBuildInputs = [ sensor-msgs serial message-runtime roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The um6 package provides a C++ implementation of the CH Robotics serial protocol, and a
    corresponding ROS node for publishing standard ROS orientation topics from a UM6.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}