# GitHub Action: is-in-orgs

An action to check if the user who initiated it is a member of one of the
specified orgs. If the user is in one of those orgs, this action will succeed;
otherwise, it will fail. A handy way to do some light authorization.

## Usage

```yml
jobs:
  myJob:
    runs-on: ubuntu-latest
    name: the job I'm running
    steps:
      - name: check org membership
        id: org-check
        uses: mgwalker/action-is-in-orgs@v2.0.1
        with:
          orgs: org1 org2 org3
     - if: ${{ steps.org-check.in_orgs == 'true' }}
       name: do a thing
       run: "my next command"
```

#### Parameters

|name|description|
|---|---|
|`orgs`|A space-delimited list of organizations to check against. **Required**

#### Outputs

|name|description|
|---|---|
|`in_orgs`|A boolean indicating whether the user is a member of any of the specified orgs.

## Version history

- **2.0**
  - no longer fails if the user/bot/entity that initiated the action is not a
    member of one of the specified orgs
  - adds a boolean output indicating whether they belong to the org
- **1.0** - Initial release. Nothing has changed yet!
