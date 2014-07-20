#!/usr/bin/env bash

cat ~/.ssh/id_rsa.pub | ssh vagrant@13.13.13.13 "cat - >> ~/.ssh/authorized_keys && chmod 600 ~/.ssh/authorized_keys"
