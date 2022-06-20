
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
1. [Splitting to tests and function](https://pester.dev/docs/quick-start#splitting-to-tests-and-function).

### Backlog:

### Resources
- [GitHub - Automating and Testing PowerShell](https://docs.github.com/en/actions/automating-builds-and-tests/building-and-testing-powershell)
- [Pester QuickStart](https://pester.dev/docs/quick-start)

## Azure PowerShell QuickStart
Take what we've automated with TDD PowerShell development and see if we can apply to Azure PowerShell Scripts.

### Backlog
- [Testing Azure PS Modules with Pester ref: CloudNotes.io](https://www.cloudnotes.io/testing-azure-custom-modules-with-pester/)
- [Quickstart: Create and deploy Azure Functions resources using Bicep](https://docs.microsoft.com/en-us/azure/azure-functions/functions-create-first-function-bicep?tabs=PowerShell%2Cvisual-studio-code)
- [Get started with Azure PowerShell](https://docs.microsoft.com/en-us/powershell/azure/get-started-azureps?view=azps-8.0.0)
- [Get-AzContext](https://docs.microsoft.com/en-us/powershell/module/az.accounts/get-azcontext?view=azps-8.0.0)
- [SO: Detect if Azure Session Has Expired](https://stackoverflow.com/questions/28105095/how-to-detect-if-azure-powershell-session-has-expired)
