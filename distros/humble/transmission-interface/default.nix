
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-lint-auto, ament-lint-common, hardware-interface, pluginlib }:
buildRosPackage {
  pname = "ros-humble-transmission-interface";
  version = "2.9.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_control-release/archive/release/humble/transmission_interface/2.9.0-1.tar.gz";
    name = "2.9.0-1.tar.gz";
    sha256 = "2471c3a236120f8851ecf9050fcf7d482849215617646de10ce5f62b36f9db20";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gmock ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ hardware-interface pluginlib ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''transmission_interface contains data structures for representing mechanical transmissions, methods for propagating values between actuator and joint spaces and tooling to support this.'';
    license = with lib.licenses; [ asl20 ];
  };
}