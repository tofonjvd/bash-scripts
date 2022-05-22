#!/bin/bash

read -p "Type your username: " USER_NAME

read -p "Type your Full Name: " FULL_NAME

read -p "Type your Password: " PASSWORD

useradd -c "${FULL_NAME}" -m "${USER_NAME}"

echo "${PASSWORD}" | passwd --stdin "${USER_NAME}"

passwd -e ${USER_NAME}