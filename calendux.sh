#!/bin/bash

####################################
# Name: James Kearney
# CIS 1910 - Spring 2023
# Final Project
####################################
# not logged in main menu

function add_event() {
  gcalcli add
  printf "The event was added\n"
}

function edit_event() {
  printf "Which event would you like to edit \n"
  printf "[1] Show Events of this month\n"
  read event
  if [ ! -z "$event" ]; then
    case "$option" in
      1)
        gcalcli agenda 1 30
    esac
    printf "loading... \n" 
    gcalcli edit $event
  fi
}

function show_week_agenda() {
  printf "loading... \n"
  gcalcli agenda
}

function show_week_calendar() {
  printf "loading... \n"
  gcalcli calw
}

function show_month_agenda() {
  printf "loading... \n"
  gcalcli agenda 1 30
}

function show_month_calendar() {
  printf "loading... \n"
  gcalcli calm
}

function print_main_menu() {
  printf "Welcome to the Calendux James!\n"
  printf "What would you like to do?\n"
  printf "[1] Show Week Agenda\n"
  printf "[2] Show Month Agenda\n"
  printf "[3] Show Week Calendar\n"
  printf "[4] Show Month Calendar\n"
  printf "[5] Add Event\n"
  printf "[6] Edit Event\n"
  printf "[<Enter> or CTRL+D] Quit\n"
}

function main_menu() {
  print_main_menu
  read option
  while [ ! -z "$option" ]; do
    case "$option" in
      1)
        show_agenda
        ;;
      2)
        add_event
        ;;
      3)
        edit_event
        ;;
      4)
        show_week
        ;;
      5)
        gcalcli calm
        ;;
      *)
        printf "Invalid option.\n"
        ;;
    esac
    print_main_menu
    read option
  done
  printf "Shutting down...\n"
  exit 0
}

main_menu