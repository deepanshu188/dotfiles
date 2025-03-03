#!/bin/bash

riverctl rule-add -app-id 'float*' -title 'foo' float
riverctl rule-add -app-id 'bar' csd
riverctl rule app-id Thunar title 'File Operation Progress' float
