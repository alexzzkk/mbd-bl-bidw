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

  - Download Java JDK v8 from: http://www.oracle.com/technetwork/java/javase/downloads/index-jsp-138363.html (in our case: Java SE 8u171/8u172/8u181)
  - Install and follow the instructions

**Install MySQL**

  - Download the right version of MySQL and MySQL Workbench for your OS (in our case: MySQL Community Server 8.0.12 and MySQL Workbench 8.0.12)
    - MySQL: http://dev.mysql.com/downloads/mysql/
    - MySQL Workbench: http://dev.mysql.com/downloads/workbench/
    - [Windows] MySQL Workbenck in windows requires [Microsoft .NET Framework 4.5](https://www.microsoft.com/en-us/download/details.aspx?id=30653) and [Visual C++ Redistributable for Visual Studio 2015](https://www.microsoft.com/en-us/download/details.aspx?id=48145)
  - Install all the programs and follow the instructions:
    - [Windows] During the installation process you will configure the password for root user (choose pentaho2018 o a password that you will remember).
    - [Mac] During the installation process you will configure the password for root user (choose pentaho2018 o a password that you will remember). If you forget the password you will be able to change it from system preferences.
    - PDI and MYSQL Workbench only supports legacy password encription, not the new strong encription available in MySQL 8.

> Note: for Microsoft Windows it is just one installer for MAC, two files.

Remember to start the server to be able to use the database. Open MySQL Workbench and create a new connection using the right user and password and the standard parameters for configuration.

**Install PDI**

We will use the community version of Pentaho Data Integration (a.k.a PDI). It can be downloaded from this [link](https://sourceforge.net/projects/pentaho/files/Pentaho%208.1/client-tools/) (in our case: pdi-ce-8.1.0.0-365.zip).

  - Download the file and unzip.
    - [Mac] Move the data-integration folder into Applications folder
    - [Windows] Move the data-integration folder into C:/ folder
  - Open PDI
    - [Windows] Double-click spoon.bat inside data-integratioon folder
    - [Mac] Open the terminal and execute:
    
```
cd /Applications/data-integration/
./spoon.sh
```    
  - [Optional] Activate data-integration.app as a double-click app using the terminal:
  
``` 
sudo xattr -dr com.apple.quarantine /Applications/data-integration/Data\ Integration.app
```  

  - Install MySQL 5.X plugin for PDI:
    - Open PDI
    - Go the tools menu > Marketplace > MySQL Plugin and install
    - Restart PDI
  - Configuring a JDBC Connection to MySQL 8.x Using PDI:
    - Download the MySQL 8.x JDBC driver (platform independent, zip) to the computer running Pentaho from: https://dev.mysql.com/downloads/connector/j/
    - Unzip the file mysql-connector-java-8.0.12.zip
    - Copy mysql-connector-java-8.0.12.jar to the Pentaho lib folder. [Windows]: C:\Program Files\pentaho\design-tools\data-integration\lib. [Mac OS]: …/pentaho/design-tools/data-integration/lib
    - Configure a Generic Database connection in Pentaho: (1) Connection jdbc:mysql://localhost:3306/<database_name> (2) Driver Class Name: com.mysql.cj.jdbc.Driver (3) use the previous user and password
    - In case the server time zone value 'AEST' is unrecognized or represents more than one time zone, then consider: jdbc:mysql://localhost:3306/<database_name>?useLegacyDatetimeCode=false&serverTimezone=UTC

**Install Tableau Desktop**

We can access student licenses due to the Academic Partnership. Tableau has versions for Mac and Windows. Follow these instructions:

  - Download the latest version of Tableau Desktop [here](https://www.tableau.com/academic).
  - Copy Tableau Desktop License from campus.
  - Install the software following the instructions in the screen.
  - Update your license in the application: Help menu -> Manage Product Keys

## FAQ

### Is there a Pentaho Release Product Version Matrix?

Yes! You can find it [here](https://wiki.pentaho.com/display/PEOpen/Pentaho+Release+Product+Version+Matrix+8.x).

### Any recommendation for MySQL SQL syntax?

Yes, check [MySQL™ Notes for Professionals book](http://books.goalkicker.com/MySQLBook/) and [MySQL Documentation](https://dev.mysql.com/doc/).

### How can I have this repository?

Fork it using [github](https://www.github.com) and [github desktop](https://www.desktop.github.com).
