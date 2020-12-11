## PostgreSQL STIG Automated Compliance Validation Profile
<b>PostgreSQL 9.X</b>

<b>PostgreSQL 9.X</b> STIG Automated Compliance Validation Profile works with Chef InSpec to perform automated compliance checks of <b>PostgreSQL</b>.

This automated Security Technical Implementation Guide (STIG) validator was developed to reduce the time it takes to perform a security check based upon STIG Guidance from DISA. These check results should provide information needed to receive a secure authority to operate (ATO) certification for the applicable technology.
<b>PostgreSQL</b> uses [Chef InSpec](https://github.com/chef/inspec), which provides an open source compliance, security and policy testing framework that dynamically extracts system configuration information.

## PostgreSQL STIG Overview

The <b>PostgreSQL</b> STIG (https://public.cyber.mil/stigs/) by the United States Defense Information Systems Agency (DISA) offers a comprehensive compliance guide for the configuration and operation of various technologies.
DISA has created and maintains a set of security guidelines for applications, computer systems or networks connected to the DoD. These guidelines are the primary security standards used by many DoD agencies. In addition to defining security guidelines, the STIG also stipulates how security training should proceed and when security checks should occur. Organizations must stay compliant with these guidelines or they risk having their access to the DoD terminated.

[STIG](https://en.wikipedia.org/wiki/Security_Technical_Implementation_Guide)s are the configuration standards for United States Department of Defense (DoD) Information Assurance (IA) and IA-enabled devices/systems published by the United States Defense Information Systems Agency (DISA). Since 1998, DISA has played a critical role enhancing the security posture of DoD's security systems by providing the STIGs. The STIGs contain technical guidance to "lock down" information systems/software that might otherwise be vulnerable to a malicious computer attack.

The requirements associated with the <b>PostgreSQL</b> STIG are derived from the [National Institute of Standards and Technology](https://en.wikipedia.org/wiki/National_Institute_of_Standards_and_Technology) (NIST) [Special Publication (SP) 800-53, Revision 4](https://en.wikipedia.org/wiki/NIST_Special_Publication_800-53) and related documents.

While the PostgreSQL STIG automation profile check was developed to provide technical guidance to validate information with security systems such as applications, the guidance applies to all organizations that need to meet internal security as well as compliance standards.

### This STIG Automated Compliance Validation Profile was developed based upon:
- PostgreSQL Security Technical Implementation Guide


## Getting Started

### Requirements

#### PostgreSQL  
- PostgreSQL
- Access to the database
- Account providing appropriate permissions to perform audit scan


#### Required software on PostgreSQL machine
- git
- [InSpec](https://www.chef.io/products/chef-inspec/)

### Setup Environment on PostgreSQL machine 
#### Install InSpec
Goto https://www.inspec.io/downloads/ and consult the documentation for your Operating System to download and install InSpec.

#### Ensure InSpec version is at least 4.23.10 
```sh
inspec --version
```

### How to execute this instance  
(See: https://www.inspec.io/docs/reference/cli/)

#### Execute a single Control in the Profile 
**Note**: Replace the profile's directory name - e.g. - `<Profile>` with `.` if currently in the profile's root directory.
```sh
inspec exec <Profile>/controls/V-72841.rb --show-progress
```
or use the --controls flag to execute checking with a subset of controls
```sh
inspec exec <Profile> --controls=V-72841.rb V-72845.rb --show-progress
```

#### Execute a Single Control and save results as JSON 
```sh
inspec exec <Profile> --controls=V-72841.rb --show-progress --reporter json:results.json
```

#### Execute All Controls in the Profile 
```sh
inspec exec <Profile> --show-progress
```

#### Execute all the Controls in the Profile and save results as JSON 
```sh
inspec exec <Profile> --show-progress  --reporter json:results.json
```

## Check Overview:

**Manual Checks**

These checks are not included in the automation process.

| Control   Number | Description                                                                                                                                                                                                                  |
|------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| V-72841          | PostgreSQL   must be configured to prohibit or restrict the use of organization-defined   functions, ports, protocols, and/or services, as defined in the PPSM CAL and   vulnerability assessments.                                            |
| V-72845          | Security-relevant   software updates to PostgreSQL must be installed within the time period   directed by an authoritative source (e.g., IAVM, CTOs, DTMs, and STIGs).                                                                         |
| V-72859          | PostgreSQL   must enforce approved authorizations for logical access to information and   system resources in accordance with applicable access control policies.                                                                              |
| V-72861          | PostgreSQL   must associate organization-defined types of security labels having   organization-defined security label values with information in transmission.                                                                                |
| V-72863          | PostgreSQL   must limit the number of concurrent sessions to an organization-defined   number per user for all accounts and/or account types.                                                                                                  |
| V-72867          | PostgreSQL   must uniquely identify and authenticate non-organizational users (or   processes acting on behalf of non-organizational users).                                                                                                   |
| V-72869          | PostgreSQL   must associate organization-defined types of security labels having   organization-defined security label values with information in storage.                                                                                     |
| V-72871          | PostgreSQL   must check the validity of all data inputs except those specifically   identified by the organization.                                                                                                                            |
| V-72873          | PostgreSQL   and associated applications must reserve the use of dynamic code execution   for situations that require it.                                                                                                                      |
| V-72875          | PostgreSQL   and associated applications, when making use of dynamic code execution, must   scan input data for invalid values that may indicate a code injection attack.                                                                      |
| V-72877          | PostgreSQL   must allocate audit record storage capacity in accordance with   organization-defined audit record storage requirements.                                                                                                          |
| V-72883          | PostgreSQL   must enforce discretionary access control policies, as defined by the data   owner, over defined subjects and objects.                                                                                                            |
| V-72887          | PostgreSQL   must record time stamps, in audit records and application data, that can be   mapped to Coordinated Universal Time (UTC, formerly GMT).                                                                                           |
| V-72893          | PostgreSQL   must provide an immediate real-time alert to appropriate support staff of all   audit log failures.                                                                                                                               |
| V-72897          | Database   objects (including but not limited to tables, indexes, storage, trigger   procedures, functions, links to software external to PostgreSQL, etc.) must   be owned by database/DBMS principals authorized for ownership.              |
| V-72899          | The   PostgreSQL software installation account must be restricted to authorized   users.                                                                                                                                                       |
| V-72901          | Database   software, including PostgreSQL configuration files, must be stored in   dedicated directories separate from the host OS and other applications.                                                                                     |
| V-72903          | PostgreSQL   must include additional, more detailed, organization-defined information in   the audit records for audit events identified by type, location, or subject.                                                                        |
| V-72905          | Execution   of software modules (to include functions and trigger procedures) with   elevated privileges must be restricted to necessary cases only.                                                                                           |
| V-72907          | When   invalid inputs are received, PostgreSQL must behave in a predictable and   documented manner that reflects organizational and system objectives.                                                                                        |
| V-72911          | PostgreSQL   must isolate security functions from non-security functions.                                                                                                                                                                      |
| V-72917          | When   updates are applied to PostgreSQL software, any software components that have   been replaced or made unnecessary must be removed.                                                                                                      |
| V-72921          | PostgreSQL   must generate audit records when unsuccessful attempts to access security   objects occur.                                                                                                                                        |
| V-72947          | PostgreSQL   must be able to generate audit records when privileges/permissions are   retrieved.                                                                                                                                               |
| V-72951          | PostgreSQL   must generate audit records when unsuccessful accesses to objects occur.                                                                                                                                                          |
| V-72969          | PostgreSQL   must generate audit records when unsuccessful attempts to execute privileged   activities or other system-level access occur.                                                                                                     |
| V-72983          | PostgreSQL   must provide audit record generation capability for DoD-defined auditable   events within all DBMS/database components.                                                                                                           |
| V-72997          | PostgreSQL   must prohibit user installation of logic modules (functions, trigger   procedures, views, etc.) without explicit privileged status.                                                                                               |
| V-72999          | PostgreSQL   must separate user functionality (including user interface services) from   database management functionality.                                                                                                                    |
| V-73005          | PostgreSQL   must produce audit records containing sufficient information to establish the   sources (origins) of the events.                                                                                                                  |
| V-73007          | Unused   database components, PostgreSQL software, and database objects must be   removed.                                                                                                                                                     |
| V-73009          | Access   to external executables must be disabled or restricted.                                                                                                                                                                               |
| V-73011          | Unused   database components which are integrated in PostgreSQL and cannot be   uninstalled must be disabled.                                                                                                                                  |
| V-73013          | PostgreSQL   must associate organization-defined types of security labels having   organization-defined security label values with information in process.                                                                                     |
| V-73017          | PostgreSQL   must enforce access restrictions associated with changes to the configuration   of PostgreSQL or database(s).                                                                                                                     |
| V-73023          | The   system must provide a warning to appropriate support staff when allocated   audit record storage volume reaches 75% of maximum audit record storage   capacity.                                                                          |
| V-73027          | PostgreSQL   must require users to reauthenticate when organization-defined circumstances   or situations require reauthentication.                                                                                                            |
| V-73029          | PostgreSQL   must enforce authorized access to all PKI private keys stored/utilized by   PostgreSQL.                                                                                                                                           |
| V-73031          | PostgreSQL   must only accept end entity certificates issued by DoD PKI or DoD-approved   PKI Certification Authorities (CAs) for the establishment of all encrypted   sessions.                                                               |
| V-73033          | PostgreSQL   must produce audit records containing sufficient information to establish   what type of events occurred.                                                                                                                         |
| V-73037          | PostgreSQL   must invalidate session identifiers upon user logout or other session   termination.                                                                                                                                              |
| V-73039          | PostgreSQL   must protect its audit features from unauthorized access.                                                                                                                                                                         |
| V-73045          | PostgreSQL   must off-load audit data to a separate log management facility; this must be   continuous and in near real time for systems with a network connection to the   storage facility and weekly or more often for stand-alone systems. |
| V-73049          | PostgreSQL   must uniquely identify and authenticate organizational users (or processes   acting on behalf of organizational users).                                                                                                           |
| V-73051          | PostgreSQL   must automatically terminate a user session after organization-defined   conditions or trigger events requiring session disconnect.                                                                                               |
| V-73053          | PostgreSQL   must prevent non-privileged users from executing privileged functions, to   include disabling, circumventing, or altering implemented security   safeguards/countermeasures.                                                      |
| V-73055          | PostgreSQL   must map the PKI-authenticated identity to an associated user account.                                                                                                                                                            |
| V-73057          | Database   contents must be protected from unauthorized and unintended information   transfer by enforcement of a data-transfer policy.                                                                                                        |
| V-73071          | The   DBMS must be configured on a platform that has a NIST certified FIPS 140-2   installation of OpenSSL.                                                                                                                                    |

**Normal Checks**

These checks will follow the normal automation process and will report accurate STIG compliance PASS/FAIL.

| Control   Number | Description                                                                                                                                                                                                                                                                |
|------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| V-72843          | PostgreSQL must produce audit records containing sufficient   information to establish the outcome (success or failure) of the events.                                                                                                                                           |
| V-72847          | The audit information produced by PostgreSQL must be protected from unauthorized modification.                                                                                                                                                                                   |
| V-72849          | PostgreSQL must integrate with an organization-level   authentication/access mechanism providing account management and automation   for all users, groups, roles, and any other principals.                                                                                     |
| V-72851          | PostgreSQL must provide non-privileged users with error   messages that provide information necessary for corrective actions without   revealing information that could be exploited by adversaries.                                                                             |
| V-72853          | Privileges to change PostgreSQL software modules must be   limited.                                                                                                                                                                                                              |
| V-72855          | PostgreSQL must limit privileges to change functions and   triggers, and links to software external to PostgreSQL.                                                                                                                                                               |
| V-72857          | If passwords are used for authentication, PostgreSQL must   transmit only encrypted representations of passwords.                                                                                                                                                                |
| V-72865          | The role(s)/group(s) used to modify database structure   (including but not necessarily limited to tables, indexes, storage, etc.) and   logic modules (functions, trigger procedures, links to software external to   PostgreSQL, etc.) must be restricted to authorized users. |
| V-72885          | The audit information produced by PostgreSQL must be protected   from unauthorized deletion.                                                                                                                                                                                     |
| V-72889          | PostgreSQL must reveal detailed error messages only to the   ISSO, ISSM, SA and DBA.                                                                                                                                                                                             |
| V-72891          | PostgreSQL must allow only the ISSM (or individuals or roles   appointed by the ISSM) to select which auditable events are to be audited.                                                                                                                                        |
| V-72895          | PostgreSQL must maintain the confidentiality and integrity of   information during reception.                                                                                                                                                                                    |
| V-72909          | PostgreSQL must utilize centralized management of the content   captured in audit records generated by all components of PostgreSQL.                                                                                                                                             |
| V-72913          | PostgreSQL must produce audit records of its enforcement of   access restrictions associated with changes to the configuration of   PostgreSQL or database(s).                                                                                                                   |
| V-72915          | The audit information produced by PostgreSQL must be protected   from unauthorized read access.                                                                                                                                                                                  |
| V-72919          | PostgreSQL must generate audit records when categorized   information (e.g., classification levels/security levels) is accessed.                                                                                                                                                 |
| V-72923          | PostgreSQL must generate audit records when unsuccessful   logons or connection attempts occur.                                                                                                                                                                                  |
| V-72925          | PostgreSQL must generate audit records showing starting and   ending time for user access to the database(s).                                                                                                                                                                    |
| V-72927          | PostgreSQL must generate audit records when unsuccessful   attempts to modify security objects occur.                                                                                                                                                                            |
| V-72929          | PostgreSQL must generate audit records when   privileges/permissions are added.                                                                                                                                                                                                  |
| V-72931          | PostgreSQL must generate audit records when unsuccessful   attempts to delete categorized information (e.g., classification   levels/security levels) occur.                                                                                                                     |
| V-72933          | PostgreSQL must generate audit records when successful logons   or connections occur.                                                                                                                                                                                            |
| V-72939          | PostgreSQL must generate audit records when security objects   are deleted.                                                                                                                                                                                                      |
| V-72941          | PostgreSQL must generate audit records when unsuccessful   attempts to retrieve privileges/permissions occur.                                                                                                                                                                    |
| V-72945          | PostgreSQL must generate audit records when unsuccessful   attempts to delete privileges/permissions occur.                                                                                                                                                                      |
| V-72949          | PostgreSQL must generate audit records when unsuccessful   attempts to modify categorized information (e.g., classification   levels/security levels) occur.                                                                                                                     |
| V-72953          | PostgreSQL must generate audit records for all privileged   activities or other system-level access.                                                                                                                                                                             |
| V-72955          | PostgreSQL must generate audit records when unsuccessful   attempts to access categorized information (e.g., classification   levels/security levels) occur.                                                                                                                     |
| V-72957          | PostgreSQL must be able to generate audit records when   security objects are accessed.                                                                                                                                                                                          |
| V-72959          | PostgreSQL must generate audit records when   privileges/permissions are deleted.                                                                                                                                                                                                |
| V-72961          | PostgreSQL must generate audit records when concurrent   logons/connections by the same user from different workstations occur.                                                                                                                                                  |
| V-72963          | PostgreSQL must generate audit records when unsuccessful   attempts to delete security objects occur.                                                                                                                                                                            |
| V-72965          | PostgreSQL must generate audit records when   privileges/permissions are modified.                                                                                                                                                                                               |
| V-72971          | PostgreSQL must generate audit records when security objects   are modified.                                                                                                                                                                                                     |
| V-72973          | PostgreSQL must generate audit records when categorized   information (e.g., classification levels/security levels) is modified.                                                                                                                                                 |
| V-72975          | PostgreSQL must generate audit records when unsuccessful   attempts to modify privileges/permissions occur.                                                                                                                                                                      |
| V-72977          | PostgreSQL must generate audit records when unsuccessful   attempts to add privileges/permissions occur.                                                                                                                                                                         |
| V-72979          | PostgreSQL, when utilizing PKI-based authentication, must   validate certificates by performing RFC 5280-compliant certification path   validation.                                                                                                                              |
| V-72981          | PostgreSQL must maintain the confidentiality and integrity of   information during preparation for transmission.                                                                                                                                                                 |
| V-72985          | PostgreSQL must generate time stamps, for audit records and   application data, with a minimum granularity of one second.                                                                                                                                                        |
| V-72987          | PostgreSQL must produce audit records containing sufficient   information to establish the identity of any user/subject or process   associated with the event.                                                                                                                  |
| V-72989          | PostgreSQL must implement NIST FIPS 140-2 validated   cryptographic modules to generate and validate cryptographic hashes.                                                                                                                                                       |
| V-72991          | PostgreSQL must use NSA-approved cryptography to protect   classified information in accordance with the data owners requirements.                                                                                                                                               |
| V-72993          | PostgreSQL must implement NIST FIPS 140-2 validated   cryptographic modules to protect unclassified information requiring   confidentiality and cryptographic protection, in accordance with the data   owners requirements.                                                     |
| V-72995          | PostgreSQL must protect the confidentiality and integrity of   all information at rest.                                                                                                                                                                                          |
| V-73001          | PostgreSQL must initiate session auditing upon startup.                                                                                                                                                                                                                          |
| V-73003          | PostgreSQL must implement cryptographic mechanisms to prevent   unauthorized modification of organization-defined information at rest (to   include, at a minimum, PII and classified information) on   organization-defined information system components.                      |
| V-73015          | If passwords are used for authentication, PostgreSQL must   store only hashed, salted representations of passwords.                                                                                                                                                              |
| V-73019          | PostgreSQL must protect against a user falsely repudiating   having performed organization-defined actions.                                                                                                                                                                      |
| V-73025          | PostgreSQL must provide the means for individuals in   authorized roles to change the auditing to be performed on all application   components, based on all selectable event criteria within   organization-defined time thresholds.                                            |
| V-73035          | PostgreSQL must implement cryptographic mechanisms preventing   the unauthorized disclosure of organization-defined information at rest on   organization-defined information system components.                                                                                 |
| V-73041          | PostgreSQL must produce audit records containing time stamps   to establish when the events occurred.                                                                                                                                                                            |
| V-73043          | PostgreSQL must protect its audit features from unauthorized   removal.                                                                                                                                                                                                          |
| V-73047          | PostgreSQL must maintain the authenticity of communications   sessions by guarding against man-in-the-middle attacks that guess at Session   ID values.                                                                                                                          |
| V-73059          | Access to database files must be limited to relevant processes   and to authorized, administrative users.                                                                                                                                                                        |
| V-73061          | PostgreSQL must protect its audit configuration from   unauthorized modification.                                                                                                                                                                                                |
| V-73063          | PostgreSQL must use NIST FIPS 140-2 validated cryptographic   modules for cryptographic operations.                                                                                                                                                                              |
| V-73065          | Audit records must be generated when categorized information   (e.g., classification levels/security levels) is deleted.                                                                                                                                                         |
| V-73067          | PostgreSQL must generate audit records when successful   accesses to objects occur.                                                                                                                                                                                              |
| V-73069          | PostgreSQL must generate audit records for all direct access   to the database(s).                                                                                                                                                                                               |
| V-73123          | PostgreSQL must produce audit records containing sufficient   information to establish where the events occurred.                                                                                                                                                                |

## Authors

Defense Information Systems Agency (DISA) https://www.disa.mil/

STIG support by DISA Risk Management Team and Cyber Exchange https://public.cyber.mil/

## Legal Notices

Copyright © 2020 Defense Information Systems Agency (DISA)