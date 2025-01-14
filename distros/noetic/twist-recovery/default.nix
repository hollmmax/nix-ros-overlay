
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, base-local-planner, catkin, costmap-2d, geometry-msgs, nav-core, pluginlib, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-noetic-twist-recovery";
  version = "0.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/navigation_experimental-release/archive/release/noetic/twist_recovery/0.4.0-1.tar.gz";
    name = "0.4.0-1.tar.gz";
    sha256 = "efaf93a0fdec9670c8c0703c607b31d137d7d383a5d563257f78d3404f7634b5";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ base-local-planner costmap-2d geometry-msgs nav-core pluginlib tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A recovery behavior that performs a particular used-defined twist.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
