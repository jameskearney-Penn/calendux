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

function search_events() {
  printf "Type in an event to search\n"
  read search
  gcalcli search "$search"
}

function search_agenda() {
  printf "Type in a start day for the agenda\n"
  read start
  printf "Type in a end day for the agenda\n"
  read end
  gcalcli agenda $start $end
}

function edit_event() {
  printf "Which event would you like to edit \n"
  read event
  if [ ! -z "$event" ]; then
    printf "loading... \n" 
    gcalcli edit $event
  fi
}

#Shows agenda for the current week
function show_week_agenda() {
  printf "loading... \n"
  gcalcli agenda
}

#Shows calendar view of current week
function show_week_calendar() {
  printf "loading... \n"
  gcalcli calw
}

#Shows agenda for the current month
function show_month_agenda() {
  printf "loading... \n"
  gcalcli agenda 1 30
}

function switch_accounts() {
  printf "enter client_id: \n"
  read client_id
  printf "enter client_secret: \n"
  read client_secret
  gcalcli --client-id=$client_id.apps.googleusercontent.com --client-secret=$client_secret list
}

#Shows calendar view of current month
function show_month_calendar() {
  printf "loading... \n"
  gcalcli calm
}

#Shows agenda for current day
function show_day_agenda() {
  printf "loading... \n"
  gcalcli agenda today
}

#Prints menu screen for user to pick option
function print_main_menu() {
  printf "Welcome to the Calendux!\n"
  printf "What would you like to do?\n"
  printf "[1] Show Day Agenda\n"
  printf "[2] Show Week Agenda\n"
  printf "[3] Show Month Agenda\n"
  printf "[4] Show Week Calendar\n"
  printf "[5] Show Month Calendar\n"
  printf "[6] Add Event\n"
  printf "[7] Edit Event\n"
  printf "[8] Search Event\n"
  printf "[9] Search Agenda\n"
  printf "[10] Switch Accounts\n"
  printf "[<Enter> or CTRL+D] Quit\n"
}

#Main function that is running and recieving user prompts
function main_menu() {
  print_main_menu
  read option
  while [ ! -z "$option" ]; do
    case "$option" in
      1)
        show_day_agenda
        ;;
      2)
        show_week_agenda
        ;;
      3)
        show_month_agenda
        ;;
      4)
        show_week_calendar
        ;;
      5)
        show_month_calendar
        ;;
      6)
        add_event
        ;;
      7)
        edit_event
        ;;
      8)
        search_events
        ;;
      9)
        search_agenda
        ;;
      10)
        switch_accounts
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