# Business Intelligence and Data Warehouse Course

## Session 2

The topic of this session is the components of **Business Intelligence**. This repository includes the content discussed in class.

## Main Concepts

  - Data Warehousing Components
  - Data Warehouse architecture
  - Data Warehouse Design methodologies
  - Business Intelligence Components

## FAQ

### Do we have different environments in DW/BI?

Yes. We can have four environments:

 - **Production Environment (PROD)**: DW/BI system production-ready
 - **Developer Environment (Developer Sandbox)**: DW/BI system’s development environment
 - **Quality Assurance Environment (QA)**: all developers’ changes are integrated in this environment and the DW/BI system quality controls are performed
 - **Pre-production environment (PRE-PROD)**: is a production-like environment, tests and end-user demonstrations run on this environment
 
 A DW/BI must have, at least, the first two.
 
 ### Is it recommended to use a Control Version System in DW/BI?
 
Yes. It is recommended to use a version control system (SCM) to version all artifacts created during the project: (schema, sql scripts, data, etls, reports,...). Some options: [git](https://git-scm.com), [SVN](https://subversion.apache.org/), [CVS](http://www.nongnu.org/cvs/).

### How can we provision the different environments?

This usually is called **IaC** (Infrastructure as Code). Infrastructure as Code is the approach to defining computing and network infrastructure through source code that can then be treated just like any software system. We can use, for example, [Ansible](https://www.ansible.com/), a platform that allows you to create YAML code for provisioning environments, and works together with [Vagrant](https://www.vagrantup.com/) which is a virtual environment manager.

### Does it make sense to have a PSA (Persistent Staging Area) in your EDW (Enterprise Data Warehouse)?

In short, **NO**. You can read an interesting discussion about Pros and Cons [here](https://www.hansmichiels.com/2017/02/18/using-a-persistent-staging-area-what-why-and-how/).

### Is there a benchmark for Decision Suport Systems?

Yes. Check [TCP](http://www.tpc.org/default.asp), a non-profit corporation founded to define transaction processing and database benchmarks and to disseminate objective, verifiable TPC performance data to the industry.
