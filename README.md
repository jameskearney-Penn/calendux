# calendux
CIS1910 Linux/Unix-Final Project
Calendux by James Kearney

## Introduction:
Calendux is a Linux-based calendar/notification system designed to provide a customizable and efficient way to manage schedules and events. With the ability to connect to Google Calendar and provide a streamlined user interface, Calendux aims to simplify the process of managing and organizing events on Linux.

## Project Goals:
- Calendar application is able to be run through the shell: Calendux will be designed as a command-line application that can be easily run through the Linux shell
- Users can add/delete/edit tasks on the calendar: Calendux will allow users to easily add, delete, and edit tasks on the calendar, providing flexibility and control over their schedule.
- Integration with Google Calendar: Calendux will utilize Google's API to connect with Google Calendar, allowing users to load events from their Google Calendar directly into the application.
- Full calendar view of months, weeks, and days: Calendux will provide a comprehensive calendar view that allows users to see their events for months, weeks, and days at a glance, providing a clear overview of their schedule.
- List of activities for certain days: Calendux will provide a feature to display a list of activities for specific days, making it easy for users to view their events for a particular day in a concise and organized manner.

## How to Operate:
- Calendux is run by running the bash script calendux.sh
`\calendux.sh`
- From here users are shown a main menu where they can pick one of 9 options<br/> 
`Welcome to the Calendux James!`<br/> 
`What would you like to do?`<br/> 
`[1] Show Day Agenda`<br/> 
`[2] Show Week Agenda`<br/> 
`[3] Show Month Agenda`<br/> 
`[4] Show Week Calendar`<br/> 
`[5] Show Month Calendar`<br/> 
`[6] Add Event`<br/> 
`[7] Edit Event`<br/> 
`[8] Search Event`<br/> 
`[9] Search Agenda`<br/> 
`[<Enter> or CTRL+D] Quit`<br/> 

- Users can select an option by entering 1-9
- From here users will be directed to the different actions where they will be either directed to either enter information, or wait for information 
from the Google API

## How Calendux is different:
Calendux aims to provide a unique and customizable calendar/notification system for Linux users. By leveraging Google's API, Calendux will provide seamless integration with Google Calendar, allowing users to sync their events and interact with their calendar using custom controls through the command-line interface. This will enable users to efficiently manage their schedule and save time compared to using traditional calendar interfaces.
