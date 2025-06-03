# Integrate nwaku in Status Desktop, relay mode only

**Estimated date of completion**: TODO new date

**Resources Required for 2025H2**:
- 1 nwaku engineer for 1 month TBC

With this milestone, Status Desktop builds can use nwaku instead of go-waku.
However, it should be seen as a MVP as further hardening and implementation of light client mode will be missing.
Go-waku will still be used for Status Mobile.

This strategy enables concrete steps toward sunsetting go-waku in a short period of time,
avoiding a perpetual prototyping phase where many high risk problems (e.g. mobile bundle size, etc) have to be solved before the switch can be made.

The next milestone will then focus on hardening the nwaku Desktop build
and implement missing features such as Reliability Protocol for resource-restricted.
Once done, it will reduce the scope of go-waku maintenance to light clients only and
drastically reduce the duplicate work done between nwaku and go-waku.

Note that we want to draw the line to RLN in terms of go-waku maintenance,
meaning that if Status were to use RLN (see Scale 1:1 chat messages PoC), then it should happen with nwaku.

**FURPS**:

- [nwaku](/FURPS/application/nwaku.md): F1-2, S1-2, +1
- [status-go](/FURPS/application/status_go.md): F1, U1, R1, P1, S1-2, +1

**GitHub Milestone and deliverables**: https://github.com/waku-org/pm/milestone/33
