#!/bin/bash

sudo rsync -va  "./../../karaf_data"  "./../../karaf_data_backup/karaf_data_$(date +%y%m%d%H%M%S)"

