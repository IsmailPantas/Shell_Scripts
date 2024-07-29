#!/bin/bash

df -h | grep '^/dev/' | awk '{ print $5 " " $1}'I
