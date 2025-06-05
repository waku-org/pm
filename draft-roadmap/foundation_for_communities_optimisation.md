# [Foundation for Communities Optimisation](https://github.com/waku-org/pm/milestone/31)

**Estimated date of completion**: 31 Oct 2025 (Final clean-up to be merged after a few Status app releases)

**Resources Required for 2025H2**:
- 1 App/Chat engineer for 2 weeks (only work will be to rebase and merge an existing clean-up PR)
- Vac/QA to run status-backend tests
- Status/QA and dev for reviews and testing

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


**FURPS**: [Status Communities](/FURPS/application/status_communities.md): all.

**Milestone and deliverables**: https://github.com/waku-org/pm/milestone/31 