# 7  Data Structures

IDV BB requires data objects, below are the main ones involved listed:

* **Identities** of individual identified by a unique identifiers
* **Identifiers**:&#x20;
  * Token number associated uniquely to a set of data, identifiers are used to refer to those data without having to actually copying them
  * They can be stored then in separate repositories with specific restricted access.
  * Identifiers can be used to uniquely identify Foundational ID or Functional IDs.
  * Token identifiers can be used to avoid data aggregation and ensure capacity to forget an identity.
  * As identity data should be stored in different storage to ensure privacy protection allowing then data separation and data minimization principles, it’s necessary to use different identifiers for different types of data.
* **Credentials**:
  * Issued for individuals or presented by them, ID Credentials related to an individual should be traced and accessible in the system in order to have capacity to identify fraud and do investigation on them, so has performing auditing.
* **Registration requests**
  * Requests will be received by the IDV BB, for example identity enrollment request or identity data update registration request, those requests will be then managed by the different subsystems and the workflows of IDV BB.
* **Identification Services**
  * A set of services will be offered on top of identities to identify a person, check some of his/her attributes (ie age) or obtain some certified personal information when needed and authorized.
* **3rd parties services user entities**
  * External entities which could be GovStack building blocks or not, will have access and use the services, for that purpose their access will be granted, consent may be given by the individuals and their activities will be logged.

Schema below shows their interactions and bring more details on involved data objects

![](.gitbook/assets/image4.png)
