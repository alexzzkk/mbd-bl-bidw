# Business Intelligence and Data Warehouse Course

## Session 2

The topic of this session is components of **Business Intelligence** and **Data Warehousing**. This repository includes the content discussed in class.

## Main Concepts

  - Data Warehousing Components
  - Data Warehouse architecture
  - Data Warehouse Design methodologies
  - Business Intelligence Components

## FAQ

### Do we have different environments in DW/BI?

Yes. We can have four environments:

 - **Developer Environment (Developer Sandbox)**: DW/BI system’s development environment
 - **Quality Assurance Environment (QA)**: all developers’ changes are integrated in this environment and the DW/BI system quality controls are performed
 - **Pre-production environment (PRE-PROD)**: is a production-like environment, tests and end-user demonstrations run on this environment
 - **Production Environment (PROD)**: DW/BI system production-ready
 
A DW/BI must have, at least, the developer and production environments.
 
### Is it recommended to use a Control Version System in DW/BI?
 
Yes. It is recommended to use a version control system (SCM) to version all artefacts created during the project: (schema, sql scripts, data, etls, reports,...). Some options: [git](https://git-scm.com), [SVN](https://subversion.apache.org/), [CVS](http://www.nongnu.org/cvs/).

### Agile Methodologies. What are you talking about?

Some concepts (from [here](https://www.wsj.com/articles/are-you-agile-enough-for-agile-management-11565607600?))

 - **Agile**: A tool kit of practices for turning complex projects over to self-managed teams that work closely with customers to deliver work in stages and respond quickly to change.
 - **Backlog**: A prioritized list of everything that needs to be done to complete a project.
 - **Sprint**: A work period of a fixed length, usually one to four weeks, that ends in a demonstration of work accomplished.
 - **Promise**: The work a team has committed to deliver during the current sprint.
 - **Scrum**: A popular framework for putting agile methods into practice. 
 - **Scrum master**: A person who helps teams manage themselves, making sure they have the information and resources they need.
 - **Stand-up (or huddle, scrum or check-in)**: A meeting held at the same time every day when team members report briefly on work completed, tasks planned for that day and obstacles that are getting in the way.
 - **Kanban or scrum board**: A display showing one sticky note for each task in progress, aligned in separate columns based on their status—to-do, doing or done.                                                            Stories: Narratives defining features, functions and other work to be delivered, explaining for whom the task is being done, what the customer wants and why.
 - **Timebox**: A maximum period of time allotted to produce something of value for the customer.
 - **Waterfall method**: A traditional method of organizing projects, moving an entire body of work in steps from planning to designing, testing and launching.

### I'm interested in combining agile methodologies and github. Can I use them with github?

Yes! Check [Zenhub](https://www.zenhub.com).

### How can we provision the different environments?

This usually is called **IaC** (Infrastructure as Code). Infrastructure as Code is the approach to defining computing and network infrastructure through source code that can then be treated just like any software system. We can use, for example, [Ansible](https://www.ansible.com/), a platform that allows you to create [YAML](http://yaml.org) code for provisioning environments, and works together with [Vagrant](https://www.vagrantup.com/) which is a virtual environment manager.

### Does it make sense to have a PSA (Persistent Staging Area) in your EDW (Enterprise Data Warehouse)?

In short, **NO**. You can read an interesting discussion about Pros and Cons [here](https://www.hansmichiels.com/2017/02/18/using-a-persistent-staging-area-what-why-and-how/).

### Is there a benchmark for Decision Suport Systems?

Yes. Check [TCP](http://www.tpc.org/default.asp), a non-profit corporation founded to define transaction processing and database benchmarks and to disseminate objective, verifiable TPC performance data to the industry.

### Should Your Data Warehouse Have an SLA (Service Level Agreement)?

Yes. Interesting explanation here: [part 1](https://www.locallyoptimistic.com/post/data-warehouse-sla-p1/) and [part 2](https://www.locallyoptimistic.com/post/data-warehouse-sla-p2/).

### I need a BI (Business Intelligence) platform. Which options do I have?

 - **Open Source**: [SpagoBI](http://www.spagobi.org), [SealReport](http://www.sealreport.org), [BIRT](http://www.eclipse.org/birt/), [Knowage](https://www.knowage-suite.com) among many others.
 - **Open Source/Commercial**: [Hitachi Ventara (formely Pentaho)](https://www.hitachivantara.com), [Tibco Jaspersoft](https://www.jaspersoft.com), [ReportServer](https://reportserver.net), [LinceBI](http://www.lincebi.com), [Jedox](https://www.jedox.com) among many others.
 - **Proprietary**: [Microstrategy](https://www.microstrategy.com), [IBM](https://www.ibm.com/analytics/business-intelligence), [Oracle](https://www.oracle.com/solutions/business-analytics/business-intelligence/index.html), [SAP](https://www.sap.com/products/analytics/business-intelligence-bi.html), [Tableau](https://www.tableau.com), [Qlik](https://www.qlik.com), [Microsoft](https://www.microsoft.com/en-us/sql-server/business-intelligence), [Gooddata](https://www.gooddata.com), [Birst](http://www.birst.com), [SiSense](https://www.sisense.com), [Information Builders](https://www.informationbuilders.com), [Domo](http://domo.com), [Open Text](https://www.opentext.com/what-we-do/products/analytics), [Grow](https://www.grow.com), [Amazon QuickSight](https://aws.amazon.com/quicksight/), [Yellowfin](https://www.yellowfinbi.com), [ptmind](http://www.ptmind.com/) among many others.
