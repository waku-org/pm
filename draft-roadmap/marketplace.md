# Build a Web Marketplace MVP over Waku

**Estimated date of completion**: {Enter date}

**Resources Required for 2025H2**:
- {roles and % application to it}
- {external services consumed (Vac/IFT)}
- {infrastructure}

Build a usable MVP Web Marketplace to enable users to trade goods and services in a sovereign and censorship-resistance manner.

The marketplace builds on the Waku forum library, adding location-based, trading and other features.

The milestone has 2 main outputs:

- a library enabling anyone to build a web app marketplace
- a MVP marketplace web app, that uses said library

## FURPS

- [{Feature Name}]({path/to/furps/file}): {list of furps: F1, etc}

## Risks

| Risk   | (Accept, Own, Mitigation)     |
|--------|-------------------------------|
| [Risk] | [how to we address this risk] |

## Deliverables 

### Location based cells support in library

**Owner**: {one waku subteam}

**Feature**: [{Feature Name (only 1)}]({path/to/furps/file})

**FURPS**:

- F1. Cells are exclusively location based.
- F2. Validation of a location is done against OpenStreetMap or equivalent API.
- F3. Developer can select the level of accepted boundaries (in OSM, county would be 4), and the country.
- F4. Cells are considered valid and unique against OSM data, no restriction from users on cell creation.
- F5. Cells admin/moderators features are disabled.
- F. Users can bookmark Cells.


| Risk                                  | (Accept, Own, Mitigation)                                                                                                                                                                                                  |
|---------------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Who is the cell admin for a location? | For now, no cell admin available. At a later stage, the market can decide by letting the creation of several cells for one location, doing some magic merging at UI side, and letting the cell best moderated come on top. |

### Location based cells support in app

**Owner**: {one waku subteam}

**Feature**: [{Feature Name (only 1)}]({path/to/furps/file})

**FURPS**:

- F1. Location search bar enables to find cells for said location.
- F2. If no cell is found, user can create a new cell for a given location.
- F. Homepage displays most relevant cells (on interactions)

### Business profiles support in library

**FURPS**:

- F1. Any user can create a business profile (forum post?)
- F2. Business profiles must be linked to a location (cell)
- F3. Business profiles can have a picture, opening hours, address, description, website, contact details and "tags"
- F5. Forum relevance heuristics are used for business ordering
- F6. Any user can submit reviews for a business profile (comment?), with rating out of five, and a short comment
- F7. Relevance logic applies when calculating rating
- F. User can bookmark business profiles
- TODO: tags management (is physical store, is bakery, etc)
- 

| Risk                                                          | (Accept, Own, Mitigation)                                                             |
|---------------------------------------------------------------|---------------------------------------------------------------------------------------|
| potential abuse on business profile (create many, fakes, etc) | relevance ordering (see [F13-17](/FURPS/application/forum.md#functionality)) may help |
| potential abuse on reviews (create many, fakes, etc)          | relevance ordering (see [F13-17](/FURPS/application/forum.md#functionality)) may help |


Q: what is the difference between a Market and a Location?

### Business profiles support in app

### Products and Services lib

- F. A business can list product and services, with category, photos, title, descriptions and price.

### Products and Services lib

- F. Homepage displays most relevant product and services (on interactions).

### Messaging

- F. a user can contact a business profile via e2ee messages

Q: Chat SDK's protocol?

### Payment

- F. a user can initiate payment for online product or service via web app, using web3 wallet
- F. a user can initiate payment for physical product or service via web app, using web3 wallet

Q: do moderation first?