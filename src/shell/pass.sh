#!/bin/bash
senha=$(zenity --entry --text="Senha é necessária para o processo!" --hide-text)
echo "sua senha é $senha"
