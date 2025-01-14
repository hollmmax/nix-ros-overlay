
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-index-cpp, binutils, boost, cppzmq, qt5, rclcpp }:
buildRosPackage {
  pname = "ros-galactic-plotjuggler";
  version = "3.4.4-r1";

  src = fetchurl {
    url = "https://github.com/facontidavide/plotjuggler-release/archive/release/galactic/plotjuggler/3.4.4-1.tar.gz";
    name = "3.4.4-1.tar.gz";
    sha256 = "bbb66613ad9ef0d3a49f89618a2ec8f8e84b576ee79938d3c07d17cd1525d956";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-index-cpp binutils boost cppzmq qt5.qtbase qt5.qtsvg qt5.qtwebsockets qt5.qtx11extras rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''PlotJuggler: juggle with data'';
    license = with lib.licenses; [ lgpl3Only ];
  };
}
