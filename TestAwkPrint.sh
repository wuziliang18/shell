#! /bin/sh
awk -F: '{print "用户名:",$1,"手机号是:",$2 }' csv.data