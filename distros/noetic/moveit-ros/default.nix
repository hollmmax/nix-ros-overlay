
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, moveit-ros-benchmarks, moveit-ros-manipulation, moveit-ros-move-group, moveit-ros-perception, moveit-ros-planning, moveit-ros-planning-interface, moveit-ros-robot-interaction, moveit-ros-visualization, moveit-ros-warehouse }:
buildRosPackage {
  pname = "ros-noetic-moveit-ros";
  version = "1.1.9-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/noetic/moveit_ros/1.1.9-1.tar.gz";
    name = "1.1.9-1.tar.gz";
    sha256 = "624c00a2099e14fdd95438e91b0f979d7197f2122d96c9f69e5c37514dd07963";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ moveit-ros-benchmarks moveit-ros-manipulation moveit-ros-move-group moveit-ros-perception moveit-ros-planning moveit-ros-planning-interface moveit-ros-robot-interaction moveit-ros-visualization moveit-ros-warehouse ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Components of MoveIt that use ROS'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
