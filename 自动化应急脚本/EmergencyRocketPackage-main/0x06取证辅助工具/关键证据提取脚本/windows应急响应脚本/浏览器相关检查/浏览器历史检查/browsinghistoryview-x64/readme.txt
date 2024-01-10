


BrowsingHistoryView v2.51
Copyright (c) 2012 - 2022 Nir Sofer
Web site: https://www.nirsoft.net



Description
===========

BrowsingHistoryView is a utility that reads the history data of different
Web browsers (Mozilla Firefox, Google Chrome, Internet Explorer,
Microsoft Edge, Opera) and displays the browsing history of all these Web
browsers in one table. The browsing history table includes the following
information: Visited URL, Title, Visit Time, Visit Count, Web browser and
User Profile. BrowsingHistoryView allows you to watch the browsing
history of all user profiles in a running system, as well as to get the
browsing history from external hard drive.
You can also export the browsing history into csv/tab-delimited/html/xml
file from the user interface, or from command-line, without displaying
any user interface.



Versions History
================


* Version 2.51:
  o Added 'Visit Duration' column. This column is available only for
    Chrome and Chromium-based Web browsers.
  o Improved the 'Visited From' column in new versions of Chrome.

* Version 2.50:
  o Added option to change the sorting column from the menu (View ->
    Sort By). Like the column header click sorting, if you click again
    the same sorting menu item, it'll switch between ascending and
    descending order. Also, if you hold down the shift key while choosing
    the sort menu item, you'll get a secondary sorting.

* Version 2.48:
  o Added toolbar button to the 'Display QR Code' option.
  o Fixed bug: When using the /SaveDirect command-line option, the
    'Visited From' column contained incorrect value.

* Version 2.47:
  o Added 'Copy QR Code' option (Under the Edit menu), which allows
    you to copy the QR Code image to the clipboard.
  o Updated to work properly in high DPI mode.

* Version 2.46:
  o Added support for Brave Web browser.

* Version 2.45:
  o Added 'Display QR Code' option (Under the View menu): When it's
    turned on, QR Code of the selected URL is displayed in the lower
    pane, and you can use QR Code Reader app on your Smartphone to
    instantly open the URL in the Web browser of your Smartphone.

* Version 2.41:
  o Fixed the /cfg command-line option to load the .cfg file from the
    current directory if full path is not specified.

* Version 2.40:
  o Added new date/time filter: 'Load history items from the
    following time range and date range (separately)'. For example... You
    can search browsing history items that their modified date is between
    01/01/2019 - 01/01/2020 and their modified time is between 02:00 -
    04:00.

* Version 2.36:
  o Added button on the toolbar to delete Chrome / Firefox history
    records.

* Version 2.35:
  o Added 'Delete Selected History Records' option (Ctrl+Delete),
    which allows you to delete individual history records of Chrome and
    Firefox Web browsers (Including Web browsers that use the same
    history database of Chrome/Firefox, like Waterfox, SeaMonkey,
    Vivaldi, and so on...)
  o Other Web browsers are not supported.

* Version 2.30:
  o Added new columns: 'History File' and 'Record ID'.

* Version 2.26:
  o Added 'Double-Click Action' option, which allows you to choose
    what to do when you double-click on history item - Open properties
    window or open the URL in Web browser.

* Version 2.25:
  o Added support for Waterfox Web browser.

* Version 2.21:
  o Added option to specify the time range in local time (Instead of
    GMT).

* Version 2.20:
  o BrowsingHistoryView now automatically detects the Chromium-based
    Edge Web browser.

* Version 2.17:
  o You can now specify environment variables in the history files of
    the 'Load history from the specified history files' option.

* Version 2.16:
  o Fixed to work with Firefox 61.0

* Version 2.15:
  o Added support for Pale Moon Web browser.

* Version 2.12:
  o Added new options to the 'Quick Filter' feature.

* Version 2.11:
  o The remote computer name ('Load history from remote computer'
    option ) is now saved in the .cfg file. Also, you can set the remote
    computer from command-line with /ComputerName command-line option.

* Version 2.10:
  o Added new option: 'Automatically stop the cache task of
    IE10/IE11/Edge for unlocking the database file.' If this option is
    turned on - BrowsingHistoryView automatically stops the 'CacheTask'
    Scheduled task to unlock the database file of IE10/IE11/Edge
    (WebCacheV01.dat).
  o When you use the 'Load history from remote computer' option,
    BrowsingHistoryView will stop the 'CacheTask' Scheduled task on the
    remote computer, so you'll be able to view the history of
    IE10/IE11/Edge remotely.

* Version 2.05:
  o Added 'Load history from remote computer' option in 'Advanced
    Options' window. Be aware that this option works only when you have
    full admin access to the remote computer. Also, the history of
    IE10/IE11 is only available before the user logged-on to the system,
    because after the log-on the history database of IE10/IE11 is locked.
  o Fixed bug: 'Copy Selected Items' worked improperly when setting
    the 'Unicode/Ascii Save Mode' to 'Always UTF-8'.

* Version 2.00:
  o Added 'Visit Type' column for Chrome and Firefox Web browsers.
    (Link, Typed URL, Bookmark, and so on)

* Version 1.95:
  o Added 'Quick Filter' feature (View -> Use Quick Filter or
    Ctrl+Q). When it's turned on, you can type a string in the text-box
    added under the toolbar and BrowsingHistoryView will instantly filter
    the history table, showing only lines that contain the string you
    typed.

* Version 1.91:
  o Fix bug: When using /SaveDirect command-line option, the file was
    always saved according to the default encoding, instead of using the
    selected encoding in Options -> Save File Encoding.

* Version 1.90:
  o Added support for Vivaldi Web browser.
  o When 'Load history from the specified profiles folder' option is
    selected, the folders combo-box is filled with the profiles folders
    stored in shadow copies of your hard drive. When loading history from
    shadow copies, you may find history items older than what you can
    find in your current system.

* Version 1.87:
  o Added secondary sorting support: You can now get a secondary
    sorting, by holding down the shift key while clicking the column
    header. Be aware that you only have to hold down the shift key when
    clicking the second/third/fourth column. To sort the first column you
    should not hold down the Shift key.
  o Fixed bug: BrowsingHistoryView crashed when using the find option
    while the last item was selected.

* Version 1.86:
  o You can now choose the desired encoding (ANSI, UTF-8, UTF-16) to
    save the csv/xml/text/html files. (Under the Options menu)

* Version 1.85:
  o Added new option to the 'Advanced Options' window: Load only URLs
    contain one of the specified strings (comma-delimited list).
  o Added new option to the 'Advanced Options' window: Don't load
    URLs that contain one of the specified strings (comma-delimited list).

* Version 1.81:
  o The 'Web Browser' column now displays 'Internet Explorer 10/11 /
    Edge' for items of IE10/IE11/Edge (In previous versions it displayed
    'Internet Explorer 10')

* Version 1.80:
  o Added support for Yandex Web browser.

* Version 1.77:
  o The properties window is now larger and resizable.

* Version 1.76:
  o Added option to skip duplicate URLs that their visit time
    difference is less than xx seconds. (In 'Advanced Options' window)
    Sometimes, A web browser may record a Web page visit multiple times
    with a difference of a few seconds, even when the Web page was
    visited only once. This option allows you to hide these duplicate
    history records.

* Version 1.75:
  o Added support for Microsoft Edge/Project Spartan (On Windows 10).
  o Fixed issue: When Internet Explorer 10/11 was opened by multiple
    users, BrowsingHistoryView displayed all history records of IE 10/11
    multiple times.

* Version 1.71:
  o Fixed issue: When loading large amount of history items, some
    actions, like selecting items and copying selected items to the
    clipboard were very slow.

* Version 1.70:
  o Added 'Typed Count' column (Only relevant to Chrome Web browser).

* Version 1.69:
  o Fixed issue: On some systems, BrowsingHistoryView failed to read
    the history of IE10/IE11 from WebCacheV01.dat

* Version 1.68:
  o BrowsingHistoryView now detects the portable version of Firefox
    if it's running in the background.

* Version 1.67:
  o Added 'URL Length' column.

* Version 1.66:
  o Added 'Load history items from the last xx minutes' to the
    'Advanced Options' window.
  o Fixed bug: BrowsingHistoryView failed to remember the last
    size/position of the main window if it was not located in the primary
    monitor.

* Version 1.65:
  o Added support for Opera (Version 15 or later).

* Version 1.60:
  o Added 'Browser Profile' column, which displays the folder name of
    the Web browser profile (For Firefox and Chrome Web browsers).

* Version 1.55:
  o Added 'Save Configuration To File' and 'Load Configuration From
    File' options.

* Version 1.52:
  o Fixed bug: When getting history information from a remote
    computer and both local computer and remote computer have IE10 or
    IE11, BrowsingHistoryView displayed the IE10/IE11 history of the
    local computer... (Be aware that BrowsingHistoryView cannot display
    the IE10/IE11 history of a remote computer while the WebCacheV01.dat
    file on the remote computer is locked)

* Version 1.51:
  o Fixed to find the correct item when typing the string you want to
    search into the main List View.

* Version 1.50:
  o Added 'Load history from the specified history files' option in
    the 'Advanced Options' window.

* Version 1.44:
  o Fixed bug from v1.43: BrowsingHistoryView stopped working on
    Windows 2000.

* Version 1.43:
  o Fixed to display date/time values according to daylight saving
    time settings.

* Version 1.42:
  o Added /cfg command-line option, which instructs
    BrowsingHistoryView to use a config file in another location instead
    if the default config file, for example:
    BrowsingHistoryView.exe /cfg "%AppData%\BrowsingHistoryView.cfg"

* Version 1.41
  o Fixed a bug with displaying IDN URLs (URLs containing non-English
    characters) from Firefox history.

* Version 1.40
  o Added new data source in the 'Advanced Options' window: Load
    history from the specified custom folders. In this option, you can
    select the correct AppData folder, Local AppData folder, and the
    History folder of the profile you want to inspect.

* Version 1.36
  o Fixed the problem with the 'Advanced Options' window on Windows
    2000.

* Version 1.35
  o Added 'Show Advanced Options On Start' option. You can turn off
    this option if you don't want that the 'Advanced Options' window will
    appear on every time that you run BrowsingHistoryView.

* Version 1.33
  o Improved the detection of AppData and Local AppData folders when
    reading the history from external drive.

* Version 1.32
  o Added secondary sorting: When clicking the 'Web Browser' column
    header, the list is sorted by the 'Web Browser' column, and then by
    the 'Visit Time' column.

* Version 1.31
  o Added option to get the history from Internet Explorer API,
    instead of reading the file directly. (Available only when loading
    the history of the current user).

* Version 1.30
  o Added improved support for Internet Explorer 10, which works
    smoothly and doesn't require to run BrowsingHistoryView as
    administrator. There is no need to execute BrowsingHistoryView with
    any additinal command-line option in order to read the locked file of
    IE10 (WebCacheV24.dat or WebCacheV01.dat), and the
    /UseVolumeShadowCopy command-line option added on v1.15 was removed
    from this version.
    Be aware that during browsing on IE10, you may get corrupted history
    result, because the database is not fully flushed to the disk.
    Also, be aware that BrowsingHistoryView cannot read a locked IE10
    file on a remote network system.

* Version 1.27
  o Fixed bug: BrowsingHistoryView failed to load Firefox profile
    located on a drive letter which is different from the drive letter
    where the Windows profiles (c:\users ...) are located.
  o Fixed the flickering appeared while scrolling the history items.

* Version 1.26
  o Fixed bug: When exporting browser history data with /SaveDirect
    command-line option, BrowsingHistoryView added byte order mark of
    Unicode, while the file was saved as Ascii.

* Version 1.25
  o BrowsingHistoryView now reads the history of all profiles from
    Chrome and Chrome Canary Web browsers.

* Version 1.21
  o Fixed bug: BrowsingHistoryView displayed corrupted URLs from
    partially deleted records of Internet Explorer history file.

* Version 1.20
  o Added support for Chrome Canary and SeaMonkey Web browsers.
  o Added 'Mark Odd/Even Rows' option, under the View menu. When it's
    turned on, the odd and even rows are displayed in different color, to
    make it easier to read a single line.

* Version 1.16
  o Fixed bug: BrowsingHistoryView failed to read some of the history
    items of Internet Explorer 10.

* Version 1.15
  o Added support for Internet Explorer 10 (WebCacheV24.dat or
    WebCacheV01.dat). There are some limitations and problems with this
    version of Internet Explorer. See the 'Internet Explorer 10 Support'
    section for more information.

* Version 1.10
  o Added 'Visited From' column (Only for Firefox and Chrome), which
    displays the URL that the user has visited prior to the Web page
    specified under the URL column.

* Version 1.06
  o Fixed BrowsingHistoryView to display the Web page title for
    Internet Explorer Web browser.

* Version 1.05
  o Added 'Copy URLs' option (Ctrl+U)
  o Added 'Open URL In Web Browser' option.

* Version 1.01
  o BrowsingHistoryView now reads the profiles.ini file of Firefox to
    get the correct profile folders.

* Version 1.00 - First release.



System Requirements
===================

This utility works on any version of Windows, starting from Windows 2000,
and up to Windows 11. Both 32-bit and x64 systems are supported.

The following Web browsers are supported:
* Internet Explorer (Version 4.00 and greater)
* Mozilla Firefox (Version 3.00 and greater)
* Microsoft Edge
* Google Chrome
* Safari
* Opera (Version 15 or later, which is based on Chrome Web browser)
* Yandex Web browser
* Vivaldi Web browser
* SeaMonkey Web browser



Known Limitations and Problems
==============================


* 'Visit Count' on Internet Explorer Web browser: The 'Visit Count'
  column is taken "as is" from the history file of Internet Explorer.
  Unfortunately, Internet Explorer tend to extremely bloat the 'Visit
  Count' number, which means that you cannot assume that the 'Visit
  Count' number represents the actual number of times that the user
  visited the specified Web site. This remark is only relevant for
  Internet Explorer. Other Web browsers count the number of visits
  properly, as far as I know.
* Limitations and problems with reading the history of IE10, IE11 and
  Microsoft Edge: Version 10 and 11 of Internet Explorer stores the
  history data inside WebCacheV01.dat, and this file is locked by the
  operating system most of the time, even when IE is closed.
  In order to unlock the history database file, you should turn on the
  'Automatically stop the cache task of IE10/IE11/Edge' option. If you
  use the 'Load history from remote computer' option -
  BrowsingHistoryView will stop the cache task of IE10/IE11/Edge on the
  specified remote system, so you'll be able to see the history of
  IE10/IE11/Edge remotely.



Start Using BrowsingHistoryView
===============================

BrowsingHistoryView doesn't require any installation process or
additional dll files. In order to start using it, simply run the
executable file - BrowsingHistoryView.exe

After you run BrowsingHistoryView, the 'Advanced Options' window is
displayed. By default, BrowsingHistoryView offers you to load the history
of all Web browsers and all user profiles in the last 10 days, but you
can change the options according to your needs.

After pressing 'Ok' in the 'Advanced Options' window, BrowsingHistoryView
loads and displays the browsing history according to the options you
chose.



The 'Advanced Options' Window
=============================


* Filter by visit date/time: Allows you to load the history from the
  last number of days/hours, or from specific date/time range.
* Web Browsers: BrowsingHistoryView will load the history only from the
  selected Web browsers. For example, if you want to only get the
  browsing history of Internet Explorer, then you need to select the
  'Internet Explorer' check-box and deselect all others.
* Load history from: Allows you to choose the data source of the
  browsing history:
  o Load history from the current running system (All users): If you
    choose this option, BrowsingHistoryView scans all the user profiles
    on your system (C:\Documents and Settings or C:\Users) and loads the
    history data from them.
    Be aware that the Registry file of every user profile (NTUSER.DAT)
    should be readable, because BrowsingHistoryView uses the Registry
    file to locate the correct history file/folder of every Web browser.
    If BrowsingHistoryView cannot read NTUSER.DAT, it'll try to locate
    the correct folders in other less reliable ways.
  o Load history from the current running system (Only current user):
    If you choose this option, BrowsingHistoryView loads only the
    browsing history of the current logged-on user.
  o Load history from the specified profiles folder: If you choose
    this option, BrowsingHistoryView scans all the user profiles under
    the specified folder. The specified folder should be something like
    H:\Documents and Settings (On Windows XP) or H:\Users (On Windows
    7/2008/Vista/8).
    Be aware that the Registry file of every user profile (NTUSER.DAT)
    should be readable, because BrowsingHistoryView uses the Registry
    file to locate the correct history file/folder of every Web browser.
    If BrowsingHistoryView cannot read NTUSER.DAT, it'll try to locate
    the correct folders in other less reliable ways.
  o Load history from the specified profile: If you choose this
    option, BrowsingHistoryView loads the history from the specified
    profile folder. The specified profile folder should be something like
    H:\Documents and Settings\Administrator (On Windows XP) or
    H:\Users\Administrator (On Windows 7/2008/Vista/8).

  o Load history from the specified custom folders: If you choose
    this option, you should specify the following folders of the user
    profile you want to load: History (e.g:
    C:\Users\user01\AppData\Local\Microsoft\Windows\History ), App Data
    (e.g: C:\Users\user01\AppData\Roaming), Local App Data (e.g:
    C:\Users\user01\AppData\Local)
  o Load history from the specified history files: If you choose this
    option, you have to specify the history file of every Web browser
    that you want to load.
  o Load history from remote computer: Allows you to load the
    browsing history from remote computer on your network. Be aware that
    this option works only when you have full admin access to the remote
    computer. If you want to view the history of IE10/IE11/Edge Web
    browser, you have to turn on the following option: 'Automatically
    stop the cache task of IE10/IE11/Edge for unlocking the database
    file.'




Reading Older History From Shadow Copies
========================================

If your hard drive has one or more shadow copies, you can view the
history stored inside these shadow copies by selecting the 'Load history
from the specified profiles folder' option in the 'Advanced Options'
window and then choosing the desired shadow copy path (I'll be something
like '\\?\GLOBALROOT\Device\HarddiskVolumeShadowCopy2\users') from the
path combo-box.
Inside shadow copies you may find old history items that don't exist in
the current system as well as history items there were deleted by
clearing the Web browser history.
Be aware that the shadow copies feature only works starting from Windows
Vista (XP is not supported).



Command-Line Options
====================



/cfg <Filename>
Start BrowsingHistoryView with the specified configuration file. For
example:
BrowsingHistoryView.exe /cfg "c:\config\bhv.cfg"
BrowsingHistoryView.exe /cfg "%AppData%\BrowsingHistoryView.cfg"

/stext <Filename>
Save the browsing history into a regular text file.

/stab <Filename>
Save the browsing history into a tab-delimited text file.

/scomma <Filename>
Save the browsing history into a comma-delimited text file (csv).

/stabular <Filename>
Save the browsing history into a tabular text file.

/shtml <Filename>
Save the browsing history into HTML file (Horizontal).

/sverhtml <Filename>
Save the browsing history into HTML file (Vertical).

/sxml <Filename>
Save the browsing history into XML file.

/sort <column>
This command-line option can be used with other save options for sorting
by the desired column. If you don't specify this option, the list is
sorted according to the last sort that you made from the user interface.
The <column> parameter can specify the column index (0 for the first
column, 1 for the second column, and so on) or the name of the column,
like "Title" and "URL". You can specify the '~' prefix character (e.g:
"~Visit Time") if you want to sort in descending order. You can put
multiple /sort in the command-line if you want to sort by multiple
columns.

Examples:
BrowsingHistoryView.exe /shtml "f:\temp\history.html" /sort 2 /sort ~1
BrowsingHistoryView.exe /shtml "f:\temp\history.html" /sort "URL" /sort
"Visit Time"

/nosort
When you specify this command-line option, the list will be saved without
any sorting.

/SaveDirect
Save the browsing history in SaveDirect mode. For using with the other
save command-line options ( /scomma, /stab, /sxml, and so on...) When you
use the SaveDirect mode, the history lines are saved directly to the
disk, without loading them into the memory first. This means that you can
save a list with large amount of history lines into your disk without any
memory problem, as long as you have enough disk space to store the saved
file. The drawback of this mode: You cannot sort the lines according to
the column you choose with /sort command-line option.

/HistorySource <Source>
Specifies the type of history data source:
* 1 - Load history from the current running system (All users).
* 2 - Load history from the current running system (Only current user).
* 3 - Load history from the specified profiles folder
  (/HistorySourceFolder command-line parameter).
* 4 - Load history from the specified profile (/HistorySourceFolder
  command-line parameter).
* 5 - Load history from the specified custom folders
  (/CustomFolderAppData , /CustomFolderIEHistory ,
  /CustomFolderLocalAppData).
* 6 - Load history from the specified history files
  (/CustomFiles.IEFolders , /CustomFiles.IE10Files ,
  /CustomFiles.FirefoxFiles, /CustomFiles.ChromeFiles ,
  /CustomFiles.SafariFiles ).
* 7 - Load history from remote computer (Use with /ComputerName
  command-line parameter).


/HistorySourceFolder <Folder>
Specifies the folder path if /HistorySource is 3 or 4.

/ComputerName <Computer Name>
Specifies the remote computer name if /HistorySource is 7.

/VisitTimeFilterType <Filter Type>
Specifies the type of date/time filter:
* 1 - Load history from any date/time.
* 2 - Load history from the last xx hours (xx specified in
  /VisitTimeFilterValue)
* 3 - Load history from the last xx days (xx specified in
  /VisitTimeFilterValue)
* 4 - Load history from the specified date/time range (The time range
  is specified in /VisitTimeFrom and /VisitTimeTo)


/VisitTimeFilterValue <Filter Value>
Specifies the filter value when /VisitTimeFilterType is 2 or 3

/VisitTimeFrom <Time>
/VisitTimeTo <Time>
Specifies the date/time range when /VisitTimeFilterType is 4. date/time
value must be in the following format: dd-mm-yyyy hh:nn:ss

For example:
BrowsingHistoryView.exe /VisitTimeFrom "10-01-2012 12:00:00" /VisitTimeTo
"18-02-2012 10:00:00"

/LoadIE <0 | 1>
/LoadFirefox <0 | 1>
/LoadChrome <0 | 1>
/LoadSafari <0 | 1>

Specifies whether to load the history of IE/Firefox/Chrome/Safari Web
browser. 0 = Don't load, 1 = Load.

/StopIECacheTask <0 | 1>

Specifies whether to stop the cache task of IE10/IE11/Edge (0 = No, 1 =
Yes).

Here's some command-line examples:
BrowsingHistoryView.exe /HistorySource 4 /HistorySourceFolder
"H:\Documents and Settings\User01" /stab "c:\temp\history.txt"
BrowsingHistoryView.exe /HistorySource 3 /HistorySourceFolder
"G:\Documents and Settings" /VisitTimeFilterType 3 /VisitTimeFilterValue
10 /scomma "c:\temp\history.csv"
BrowsingHistoryView.exe /HistorySource 1 /LoadIE 1 /LoadFirefox 0
/LoadChrome 0 /LoadSafari 0 /shtml "c:\temp\history.html"
BrowsingHistoryView.exe /HistorySource 2 /VisitTimeFilterType 4
/VisitTimeFrom "01-01-2011 00:00:00" /VisitTimeTo "01-01-2012 00:00:00"
/stab "c:\temp\history.txt"

Be aware that you can use any variable stored in tne .cfg file as
command-line parameter, even if it's not specified in the above
command-line list.



Translating BrowsingHistoryView to other languages
==================================================

In order to translate BrowsingHistoryView to other language, follow the
instructions below:
1. Run BrowsingHistoryView with /savelangfile parameter:
   BrowsingHistoryView.exe /savelangfile
   A file named BrowsingHistoryView_lng.ini will be created in the folder
   of BrowsingHistoryView utility.
2. Open the created language file in Notepad or in any other text
   editor.
3. Translate all string entries to the desired language. Optionally,
   you can also add your name and/or a link to your Web site.
   (TranslatorName and TranslatorURL values) If you add this information,
   it'll be used in the 'About' window.
4. After you finish the translation, Run BrowsingHistoryView, and all
   translated strings will be loaded from the language file.
   If you want to run BrowsingHistoryView without the translation, simply
   rename the language file, or move it to another folder.



License
=======

This utility is released as freeware. You are allowed to freely
distribute this utility via floppy disk, CD-ROM, Internet, or in any
other way, as long as you don't charge anything for this and you don't
sell it or distribute it as a part of commercial product. If you
distribute this utility, you must include all files in the distribution
package, without any modification !



Disclaimer
==========

The software is provided "AS IS" without any warranty, either expressed
or implied, including, but not limited to, the implied warranties of
merchantability and fitness for a particular purpose. The author will not
be liable for any special, incidental, consequential or indirect damages
due to loss of data or any other reason.



Feedback
========

If you have any problem, suggestion, comment, or you found a bug in my
utility, you can send a message to nirsofer@yahoo.com
