#!/bin/bash
date +%s | md5sum | base64 | head -c 16 ; echo
