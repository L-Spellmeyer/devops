#!/bin/bash

cd ~
cd .ssh
eval $(ssh-agent)
ssh-add gcpgithub
