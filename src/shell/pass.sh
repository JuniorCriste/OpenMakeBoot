#!/bin/bash
senha=$(zenity --entry --text="Senha é necessária para o processo!" --hide-text)

clear
sudo boanoitetux
echo $senha
