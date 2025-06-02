# [Foundation for Communities Optimisation](https://github.com/waku-org/pm/milestone/31)

**Estimated date of completion**: 7-Apr-2025 - to be reviewed TODO

**Resources Required for 2025H2**:
- App/Chat engineer: Pablo 100% for X months - TODO

Once completed, the usage of content topics by Communities will be simplified,
enabling both improvements in terms of store queries and light mode message reception,
but also enabling future optimization and improvements at a lower cost.
Moreover, Communities traffic will be separated from other functionalities.
This enables easy bandwidth and performance improvements (remove usage of relay for large messages,
reduce message retention and hence DB size for control messages), as well as protecting users that do not
use communities from Communities traffic.
Finally, Communities traffic will be segregated in a few shards, per message types;
enabling future bandwidth or performance optimization such as setting up different DB per message type,
reducing retention time for control messages, or disabling the usage of relay for large messages.


**FURPS**: [Status Communities](/FURPS/application/statuscommunities.md): all.

**Milestone and deliverables**: https://github.com/waku-org/pm/milestone/31 