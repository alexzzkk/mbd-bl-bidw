# Business Intelligence and Data Warehouse Course

## Session 8

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

Yes. It supports arguments, parameters and variables. You can read about it [here](https://help.pentaho.com/Documentation/8.2/Products/Data_Integration/Data_Integration_Perspective/Run_Modifiers).

### How can we create an ETL environment independent?

Using variable in the path such as

``` 
${Internal.Entry.Current.Directory}
``` 

PDI supports other variables. Check this [link](https://help.pentaho.com/Documentation/8.3/Products/Variables) to discover all of them.

### How can we schedule an ETL process using PDI?

You can use [carte server](https://help.pentaho.com/Documentation/8.3/Products/Use_Carte_Clusters) (one of the components of PDI) and [cron](https://en.wikipedia.org/wiki/Cron) or an external tool such as [Azkaban](https://azkaban.github.io/) that combines both tools.

### How can I discover all the steps supported by PDI?

Check the following links:

- https://help.pentaho.com/Documentation/8.3/Products/Transformation_step_reference
- https://help.pentaho.com/Documentation/8.3/Products/Job_entry_reference

### How Metadata Injection Works

Check this [explanation](https://help.pentaho.com/Documentation/8.3/Products/ETL_metadata_injection). Basically, we are creating a dynamic ETL.

![Comparison](http://kettle.bleuel.com/wp-content/uploads/2016/04/MDI-Static-vs-MDI.png)

### Do we have Data lineage in PDI?

Yes, it does. PDI supports [Data Lineage](https://en.wikipedia.org/wiki/Data_lineage). Check this [explanation]()

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

### Best practices in Data Integration Projects

There are some best practices for PDI and MySQL:

 - Using an autoincremental PK can be slow, creating a sequence reduces the time.
 - Declare PK as BIGINT(), never as a VARCHAR().
 - If possible avoid Vlookup step (for example, using a sequence and persisting in the clean data set)
 - Create simple independent ETL flows, instead of one complex ETL
 - "Table Output" is much faster than "Insert/update"
 - If possible use Bulk Loading. For MAC we can use Bulk Load Transformation, or in general we can force the process adding "?useServerPrepStmts=false&rewriteBatchedStatements=true" to the URL connection

## References

The following references are academic papers that present advanced topics:

  - Optimizing ETL Dataflow Using Shared Caching and Parallelization Methods. [arXiv:1409.1639](https://arxiv.org/abs/1409.1639)
  - Two-level Data Staging ETL for Transaction Data. [arXiv:1409.1636](https://arxiv.org/abs/1409.1636)
  - Automatic approach for generating ETL operators. [arXiv:1212.6051](https://arxiv.org/abs/1212.6051)
  - Outlier Detection Techniques for SQL and ETL Tuning. [arXiv:1203.4163](https://arxiv.org/abs/1203.4163)
  - Outlier detection from ETL Execution trace. [arXiv:1203.1878](https://arxiv.org/abs/1203.1878)
  - DOD-ETL: Distributed On-Demand ETL for Near Real-Time Business Intelligence. [arXiv:1901.08151](https://arxiv.org/abs/1901.08151) 

