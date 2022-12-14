#
# -----------------
# Benchmark: PostgreSQL 9.x Security Technical Implementation Guide
# Status: Accepted
#
# This Security Technical Implementation Guide is published as a tool to improve
# the security of Department of Defense (DoD) information systems. The
# requirements are derived from the National Institute of Standards and
# Technology (NIST) 800-53 and related documents. Comments or proposed revisions
# to this document should be sent via email to the following address:
# disa.stig_spt@mail.mil.
#
# Release Date: 2017-01-20
# Version: 1
# Publisher: DISA
# Source: STIG.DOD.MIL
# uri: http://iase.disa.mil
# -----------------

control 'V-72983' do
  title "PostgreSQL must provide audit record generation capability for
  DoD-defined auditable events within all DBMS/database components."
  desc "Without the capability to generate audit records, it would be difficult
  to establish, correlate, and investigate the events relating to an incident or
  identify those responsible for one.
  Audit records can be generated from various components within PostgreSQL
  (e.g., process, module). Certain specific application functionalities may be
  audited as well. The list of audited events is the set of events for which
  audits are to be generated. This set of events is typically a subset of the
  list of all events for which the system is capable of generating audit records.
  DoD has defined the list of events for which PostgreSQL will provide an audit
  record generation capability as the following:
  (i) Successful and unsuccessful attempts to access, modify, or delete
  privileges, security objects, security levels, or categories of information
  (e.g., classification levels);
  (ii) Access actions, such as successful and unsuccessful logon attempts,
  privileged activities, or other system-level access, starting and ending time
  for user access to the system, concurrent logons from different workstations,
  successful and unsuccessful accesses to objects, all program initiations,
  and all direct access to the information system; and
  (iii) All account creation, modification, disabling, and termination actions.
  Organizations may define additional events requiring continuous or ad hoc
  auditing."
  impact 0.5
  tag "severity": 'medium'
  tag "gtitle": 'SRG-APP-000089-DB-000064'
  tag "gid": 'V-72983'
  tag "rid": 'SV-87635r1_rule'
  tag "stig_id": 'PGS9-00-007400'
  tag "cci": ['CCI-000169']
  tag "nist": ['AU-12 a', 'Rev_4']
  tag "check": "Check PostgreSQL auditing to determine whether
  organization-defined auditable events are being audited by the system.
  If organization-defined auditable events are not being audited, this is a
  finding."
  tag "fix": "Configure PostgreSQL to generate audit records for at least the
  DoD minimum set of events.
  Using pgaudit PostgreSQL can be configured to audit these requests. See
  supplementary content APPENDIX-B for documentation on installing pgaudit.
  To ensure that logging is enabled, review supplementary content APPENDIX-C for
  instructions on enabling logging."

  only_if { false }
end
