#!/bin/bash

origine='/home/potato/dati /home/potato/dati2'
data=$(date +"%Y_%m_%d_%H%M%S")
destinazione="/home/utente/backup/${data}.tar.gz"

tar -czf ${destinazione} ${origine}





























