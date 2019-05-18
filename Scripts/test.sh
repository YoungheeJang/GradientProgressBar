#
# test.sh
# Created by Felix Mau (https://felix.hamburg)
#
# Based on:
#  - http://www.mokacoding.com/blog/running-tests-from-the-terminal/
#  - https://github.com/supermarin/xcpretty#usage
#  - https://www.objc.io/issues/6-build-tools/travis-ci/
#

#!/bin/bash
cd Example/

xcodebuild \
  -workspace GradientProgressBar.xcworkspace \
  -scheme GradientProgressBar-Example \
  -enableCodeCoverage YES \
  -sdk iphonesimulator \
  -destination 'platform=iOS Simulator,name=iPhone XR,OS=12.0' \
  ONLY_ACTIVE_ARCH=NO \
  test | xcpretty && exit ${PIPESTATUS[0]}
