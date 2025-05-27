# Status-go FURPS

## Functionality

1. Nwaku is the used Waku implementation for relay mode.

## Usability

1. Status Desktop CI builds with 

## Reliability

1. status-backend built with nwaku can pass the status-cli tests **(Vac-QA)**.

## Performance

1. status-backend built with nwaku has similar performance than go-waku based status-backend within 10% margin, 
   on metrics measured by existing simulations (Vac-DST).

## Supportability

1. Status Desktop binary for Linux, Mac and Windows.
2. Relay mode is supported; no edge/light mode.

## + (Privacy, Anonymity, Deployments)

1. Status Desktop CI builds binaries with nwaku, alongside go-waku-based binaries.