# Business Intelligence and Data Warehouse Course

## Session 5

The topic of this session is **Data Integration** (in particular, ETL). This repository includes the content discussed in class.

  - Datasets
  - Videos

## Main Concepts

  - What is data integration
  - What is ETL
  - ETL subsystems

## How to use this content

  - Watch the videos
  - Download the folder
  - If you want to reproduce download the dataset (customer_data.csv) and install the programs
  - Required Software:
    - JDK v8
    - Pentaho Data Integration (latest version)
  
## What you can learn in the videos

  - [PDI - Our First ETL](https://vimeo.com/234685308)

## FAQ

### Why is PDI not working?

Many reasons:

 - Your computer has JRE not JDK
 - Your computer has JDK v8 not v9
 - Your computer have several java virtual machines (7, 8 and/or 9).
 - PDI is not in the right folder
 - PDI has not been extracted from the zip file.
 
### How to solve the problem

Move PDI to the right location:

  - [Mac]: In the applications folder
  - [Windows]: In C:/

We must uninstall all JRE, JDK from our system and install the right JDK version.

[Windows]

  - Go to control panel > Uninstall programs. Delete all JRE and JDK not required. You have more information [here](https://java.com/en/download/help/uninstall_java.xml)
  - Download Java SE Development Kit 8u162 from [Oracle](http://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html)
  - Install JAVA following the steps of the installer.

[Mac]

  - Uninstall Java. Open the terminal and execute:

``` 
sudo rm -fr /Library/Internet\ Plug-Ins/JavaAppletPlugin.plugin
sudo rm -fr /Library/PreferencePanes/JavaControlPanel.prefpane
sudo rm -fr ~/Library/Application\ Support/Java
cd /Library/Java/JavaVirtualMachines
sudo rm -rf jdk*
``` 

  - Download Java SE Development Kit 8u162 from [Oracle](http://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html)
  - Install JAVA following the steps of the installer.

## References

  - [Hitachi Ventara Pentaho - Documentation](https://help.pentaho.com/Documentation/)
  - [Hitachi Ventara Pentaho - Documentation PDI](https://help.pentaho.com/Documentation/8.0/Products/Data_Integration)
  - [PDI - Transformation Steps](https://help.pentaho.com/Documentation/8.0/Products/Data_Integration/Transformation_Step_Reference)
  - [PDI - Job Steps](https://help.pentaho.com/Documentation/8.0/Products/Data_Integration/Job_Entry_Reference)
  - [PDI - Market Place](https://help.pentaho.com/Documentation/8.0/Products/Data_Integration/Marketplace)
  - [Hitachi Ventara Pentaho - Community](https://community.hds.com/community/products-and-solutions/pentaho/)
  - [Hitachi Ventara Pentaho - Wiki](https://wiki.pentaho.com)
  - [Hitachi Ventara Pentaho - Wiki - PDI](https://wiki.pentaho.com/display/EAI/Latest+Pentaho+Data+Integration+(aka+Kettle)+Documentation)
