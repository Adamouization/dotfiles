# Linux: Top command cheat sheet

#### Line 1

* The time
* How long the computer has been running
* Number of users
* Load average (shows the system load time for the last 1, 5 and 15 minutes)

#### Line 2

* Total number of tasks
* Number of running tasks
* Number of sleeping tasks
* Number of stopped tasks
* Number of zombie tasks

 
#### Line 3

* CPU usage as a percentage by the user
* CPU usage as a percentage by system
* CPU usage as a percentage by low priority processes
* CPU usage as a percentage by idle processes
* CPU usage as a percentage by io wait
* CPU usage as a percentage by hardware interrupts
* CPU usage as a percentage by software interrupts
* CPU usage as a percentage by steal time

CPU usage = how much the processor is working

#### Line 4

* Total system memory
* Free memory
* Memory used
* Buffer cache

#### Line 5

* Total swap available
* Total swap free
* Total swap used
* Available memory

#### Table

* Process ID
* User
* Priority
* Nice level
* Virtual memory used by process
* Resident memory used by a process
* Shareable memory
* CPU used by process as a percentage
* Memory used by process as a percentage
* Time process has been running
* Command

#### Keep Linux Top Running All The Time In The Background

You can keep the top command easily available without having to type the word **top** each time into your terminal window.

To pause top so that you can continue using the terminal, press **CTRL and Z** on the keyboard.

To bring top back to the foreground, type **fg**.

#### Key Switches For The Top Command:

* -h - Show the current version
* -c - This toggles the command column between showing command and program name
* -d - Specify the delay time between refreshing the screen
* -o - Sorts by the named field
* -p - Only show processes with specified process IDs
* -u - Show only processes by the specified user
* -i - Do not show idle tasks

#### Show The Current Version

Type the following to show the current version details for top:

    top -h

Output is in the form `procps -ng version 3.3.10`

#### Specify A Delay Time Between Screen Refreshes

To specify a delay between the screen refreshes whilst using top type the following:

    top -d

To refresh every 5 seconds type top -d 5

#### Obtain A List Of Columns To Sort By

To get a list of the columns with which you can sort the top command by type the following:

    top -O

There are a lot of columns so you might wish to pipe the output to less as follows:

    top -O | less

#### Sort The Columns In The Top Command By A Column Name

Use the previous section to find a column to sort by and then use the following syntax to sort by that column:

    top -o

To sort by %CPU type the following:

    top -o %CPU

#### Only Show The Processes For A Specific User

To show only the processes that a specific user is running use the following syntax:

    top -u

For example to show all the processes that the user gary is running type the following:

    top -u gary

#### Hide Idle Tasks

The default top view can seem cluttered and if you want to see only active processes (i.e those that are not idle) then you can ran the top command using the following command:

    top -i

#### Adding Extra Columns To The Top Display

Whilst running top you can press the 'F' key which shows the list of fields that can be displayed in the table:

Use the arrow keys to move up and down the list of fields.

To set a field so that it is displayed on the screen press the 'D' key. To remove the field press "D" on it again. An asterisk (*) will appear next to displayed fields.

You can set the field to sort the table by simply by pressing the "S" key on the field you wish to sort by.

Press the enter key to commit your changes and press "Q" to quit.

#### Toggling Modes

Whilst running top you can press the "A" key to toggle between the standard display and an alternate display.

#### Changing Colors

Press the "Z" key to change the colors of the values within top.

There are three stages required to change the colors:

    Press either S for summary data, M for messages, H for column headings or T for task information to target that area for a color change
    Choose a color for that target, 0 for black, 1 for red, 2 for green, 3 for yellow, 4 for blue, 5 for magenta, 6 for cyan and 7 for white
    Enter to commit

Press the "B" key to make text bold.

#### Change The Display Whilst Running Top

Whilst the top command is running you can toggle many of the features on and off by pressing relevant keys whilst it is running.

The following table shows the key to press and the function it provides:
Function Keys

| Function Key 	|                              Description                              	|
|:------------:	|:---------------------------------------------------------------------:	|
| A            	| Alternative display (default off)                                     	|
| d            	| Refresh screen after specified delay in seconds (default 1.5 seconds) 	|
| H            	| Threads mode (default off), summarises tasks                          	|
| p            	| PID Monitoring (default off), show all processes                      	|
| B            	| Bold enable (default on), values are shown in bold text               	|
| l            	| Display load average (default on)                                     	|
| t            	| Determines how tasks are displayed (default 1+1)                      	|
| m            	| Determines how memory usage is displayed (default 2 lines)            	|
| 1            	| Single cpu (default off) - i.e. shows for multiple CPUs               	|
| J            	| Align numbers to the right (default on)                               	|
| j            	| Align text to the right (default off)                                 	|
| R            	| Reverse sort (default on) - Highest processes to lowest processes     	|
| S            	| Cumulative time (default off)                                         	|
| u            	| User filter (default off) show euid only                              	|
| U            	| User filter (default off) show any uid                                	|
| V            	| Forest view (default on) show as branches                             	|
| x            	| Column highlight (default off)                                        	|
| z            	| Color or mono (default on) show colors                                	|

#### Summary

There are more switches available and you can read more about them by typing the following into your terminal window:

    man top
    
#### Credits

[Lifewire - How To Use The Linux Top Command To Show Running Processes ](https://www.lifewire.com/linux-top-command-2201163)
