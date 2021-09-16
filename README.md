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
        uses: mgwalker/action-is-in-orgs@1.0
        with:
          orgs: org1 org2 org3
```

#### Parameters

|name|description|
|---|---|
|`orgs`|A space-delimited list of organizations to check against. **Required**

## Version history

- **1.0** - Initial release. Nothing has changed yet!