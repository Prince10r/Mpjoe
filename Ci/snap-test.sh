#!/bin/bash -e
########################################################################################################################
# CI Server Buildskript
#-----------------------------------------------------------------------------------------------------------------------
# \project    Mpjoe
# \file       snap-test.sh
# \creation   2015-01-30, Joe Merten
#-----------------------------------------------------------------------------------------------------------------------
# Testdurchführung aller Subprojekte via snap-ci.com
########################################################################################################################

cd ../Swing
mvn -q surefire:test
echo "----------"
ls -l
echo "----------"
ls -l target/
echo "----------"
java -jar target/Mpjoe-Swing-0.0.1-SNAPSHOT-jar-with-dependencies.jar --version
java -jar target/Mpjoe-Swing-0.0.1-SNAPSHOT-jar-with-dependencies.jar --help
cd ..

# TODO: Android Tests
