# Business Intelligence and Data Warehouse Course (blended)

This repository contains all necessary inputs to run the course hands-on labs. 

## Repository contents (by session)

  - Additional articles and documents
  - MySQL Workbench Schemas
  - ETL processes
  - Datasets
  - Tableau files
  - Videos

## Software Installation

  - **Data Warehouse**: MySQL (database) and MySQL Workbench (database modeling and SQL development)
  - **ETL**: Pentaho Data Integration (PDI)
  - **Business Intelligence/Data Visualization**: Tableau Desktop

### Steps

**Install Java**

  - Check if you have previous Java installed in your system If have more than one, uninstall all of them and follow the steps. If you already have Java JDK v8, it is not required to follow the steps.
  - Download Java JDK v8 from: http://www.oracle.com/technetwork/java/javase/downloads/index-jsp-138363.html (in our case: Java SE 8u231 or later). It may be possible you must create a new Oracle Account to download the JDK.
  - Install and follow the instructions
  - [Optional] Instead of using Oracle Java JDK, you can use
    - [Amazon Correto](https://aws.amazon.com/tw/corretto/). In particular [version 8](https://docs.aws.amazon.com/corretto/latest/corretto-8-ug/downloads-list.html). Consider the right installer for your OS. This is a long-term support production-ready distribution of the Open Java Development Kit (OpenJDK) supported by Amazon. 
    - [OpenJDK](https://openjdk.java.net/).
  - Remember to use only one JDK version.

> If you have problems with Oracle Java, uninstall and switch to Amazon Correto or OpenJDK.

**Install MySQL and MySQL Workbench**

  - Download the right version of MySQL and MySQL Workbench for your OS (in our case: MySQL Community Server 8.0.20 and MySQL Workbench 8.0.20 or later). Check in advance if your system is supported: [MySQL](https://www.mysql.com/support/supportedplatforms/database.html) and [MySQL Workbench](https://www.mysql.com/support/supportedplatforms/workbench.html).
  - Download the program(s) for your specific OS: 
    - [Mac] In this case: MySQL (http://dev.mysql.com/downloads/mysql/) and MySQL Workbench (http://dev.mysql.com/downloads/workbench/). You must download the DMG file.
    - [Windows] In this case download the MSI installer (bigger size, 64bits) from [http://dev.mysql.com/downloads/mysql/](http://dev.mysql.com/downloads/mysql/). This installer includes MySQL Workbench. Choose custom installation and only install the server, the workbench and the ODBC driver. Don't install anything else. 
    - These versions will work in MAC OSX and Windows (latest OS versions). In case you have a previous OS version then it may be required to use an older version for [Windows](https://downloads.mysql.com/archives/installer/) or [Mac](https://downloads.mysql.com/archives/community/).
  - MySQL configuration: During the installation process you will configure the password for root user (choose iembd2020). Choose **legacy password encryption**. If you forget the password you will be able to change it from system preferences (in MAC) or using MySQL Workbench o reinstalling (Windows). PDI and Tableau only support **legacy password encryption**, not the new strong encryption available in MySQL 8. Select this option until the strong encryption is supported.

> Note: for Microsoft Windows it is just one installer for MAC, two files.

Remember to start the server to be able to use the database. Open MySQL Workbench and create a new connection using the right user and password and the standard parameters for configuration.

**Install PDI**

We will use the community version of Pentaho Data Integration (a.k.a PDI, previously known
as Kettle). It can be downloaded from this [link](https://sourceforge.net/projects/pentaho/files/Pentaho%209.0/client-tools/) (in our case: pdi-ce-9.0.0.0-423.zip).

  - Download the file, unzip and follow these instructions:
    - [Mac] Move the data-integration folder into Applications folder
    - [Windows] Move the data-integration folder into C:/ folder
  - Open PDI
    - [Windows] Double-click spoon.bat inside data-integration folder. Optional: create a [shortcut](https://www.howtogeek.com/436615/how-to-create-desktop-shortcuts-on-windows-10-the-easy-way/).
    - [Mac] Open the terminal and execute:
    
```
cd /Applications/data-integration/
./spoon.sh
```  

  - [Optional, Recommended, Mac] Activate data-integration.app as a double-click app using the terminal:
  
``` 
sudo xattr -dr com.apple.quarantine /Applications/data-integration/Data\ Integration.app
```  

  - Configuring a JDBC Connection to MySQL 8.0.20 Using PDI:
    - Download the MySQL 8.0.20 JDBC driver  - or later - (select **platform independent**, zip) to the computer running Pentaho from [https://dev.mysql.com/downloads/connector/j/](https://dev.mysql.com/downloads/connector/j/)
    - Unzip the file mysql-connector-java-8.0.20.zip and enter inside the folder
    - Copy mysql-connector-java-8.0.20.jar to the Pentaho lib folder. [Windows]: C:\data-integration\lib. [Mac OS]: …/Applications/data-integration/lib
    - Configure a Generic Database connection in Pentaho: (1) Connection URL: **jdbc:mysql://localhost:3306/<database_name>** (at the beginning the only database is sys, subtitute <database_name> by sys) (2) Driver Class Name: **com.mysql.cj.jdbc.Driver** (3) use the previous user and password
    - In case the server time zone value 'AEST' (or other time zone) is unrecognized or represents more than one time zone, then consider: jdbc:mysql://localhost:3306/<database_name>?useLegacyDatetimeCode=false&serverTimezone=UTC
  - [Not required, only if you use MySQL 5.x] Install MySQL 5.x plugin for PDI:
    - Open PDI
    - Go the tools menu > Marketplace > MySQL Plugin and install
    - Restart PDI

**Install Tableau Desktop**

We can access student licenses due to the Academic Partnership. Tableau has versions for Mac and Windows. Follow these instructions:

  - Download the latest version of Tableau Desktop [here](https://www.tableau.com/academic).
  - Copy Tableau Desktop License from campus.
  - Install the software following the instructions in the screen.
  - Update your license in the application: Help menu -> Manage Product Keys
  - Download the driver for MySQL from [here](https://www.tableau.com/support/drivers)

**(Optional) Atom**

In case you need a multipurpose text editor, I recommend [Atom](https://atom.io).

## FAQ

### Is there a Pentaho Release Product Version Matrix?

Yes! You can find it [here](https://wiki.pentaho.com/display/PEOpen/Pentaho+Release+Product+Version+Matrix+8.x).

### Any recommendation for MySQL SQL syntax?

Yes, check [MySQL™ Notes for Professionals book](http://books.goalkicker.com/MySQLBook/) and [MySQL Documentation](https://dev.mysql.com/doc/).

### Any tutorials for MySQL Workbench?

Yes, check [MySQL Workbench Manual](https://dev.mysql.com/doc/workbench/en/).

### Any book for SQL?

Yes, check [SQL notes for professionals](https://goalkicker.com/SQLBook/)

### MySQL and PDI don't open in MacOS due to security issues, what can I do?

Go to preferences > Security and Privacy and allow the application to open.

### How can I have this repository?

Fork it using [github](https://www.github.com) and [github desktop](https://www.desktop.github.com). Are you interested in how Github works? Start [here](https://guides.github.com/activities/hello-world/).

  - [Sign up](https://github.com/join) for a free GitHub account
  - Then follow this guide to [fork your own copy](https://guides.github.com/activities/forking/) of the course repository
  - [Clone a copy of your forked repository](https://help.github.com/articles/cloning-a-repository/)
