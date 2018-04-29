# Business Intelligence and Data Warehouse Course

## Session 6

The topic of this session is **Data Integration** (in particular, ETL). This repository includes the content discussed in class.

  - ETL processes
  - Videos
  - Data Sets

## Main Concepts

  - ETL subsystems
  - ETL design and implementation

## How to use this content

  - Download the folders
  - Required Software:
	  - MySQL
	  - Pentaho Data Integration
	  - Java JDK
  - All ETL processes have been created with Pentaho Data Integration.
  - Transformation TR8-P1 and TRA8-P2 require MySQL.
  
## FAQ

### Does PDI support user input?

Yes. It supports arguments, parameters and variables. You can read about it [here](https://help.pentaho.com/Documentation/8.0/Products/Data_Integration/Data_Integration_Perspective/050).

### How can we create an ETL environment independent?

Using varialble in the path such as

``` 
${Internal.Entry.Current.Directory}
``` 

### Key criteria for selecting ETL tools

When selecting an ETL tool, it is recommended to consider, at least, the following criteria: 

 - Infrastructure
 - Functionality
 - Performance
 - Native connectivity
 - Usability
 - Platforms supported
 - Debugging facilities
 - Data Quality & profiling
 - Reusability
 - Scalability
 - Batch vs Real-time
 - Future prospects
