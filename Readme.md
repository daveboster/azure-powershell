
# Azure-Powershell: Examples & Sandboxes

[![Test PowerShell on Ubuntu](https://github.com/daveboster/azure-powershell/actions/workflows/powershell-actions.yml/badge.svg)](https://github.com/daveboster/azure-powershell/actions/workflows/powershell-actions.yml)

## CI/CD for PowerShell
How can we do a CI/CD for PowerShell scripts?

Path: `./github-actions'
* Testing whether we can use GitHub actions to test

### Adding Pester Tests
1. Install Pester module locally using ``.
1. Create initial test file (using Get-Planet function).
1. Adding some additional tests.
1. Get notified when actions are run.
    - Adding a workflow badge
    - Get workflow notifications in GitHub Desktop ([GitHub Notifications](https://docs.github.com/en/account-and-profile/managing-subscriptions-and-notifications-on-github/setting-up-notifications/about-notifications))
1. Limit triggering Workflow when PowerShell changes ([GithHub Actions: On-Push-Paths](https://docs.github.com/en/actions/using-workflows/workflow-syntax-for-github-actions#onpushpull_requestpull_request_targetpathspaths-ignore))

### Backlog:
1. [Splitting to tests and function](https://pester.dev/docs/quick-start#splitting-to-tests-and-function).

### Resources
- [GitHub - Automating and Testing PowerShell](https://docs.github.com/en/actions/automating-builds-and-tests/building-and-testing-powershell)
- [Pester QuickStart](https://pester.dev/docs/quick-start)

