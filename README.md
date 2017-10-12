# sf-agile-deploy-pkg
## Salesforce Agile Deployment Package

This VisualForce page with additional metadata serves as extension for Salesforce deployments. This package adds customizations to [Salesforce Agile Accelerator](https://appexchange.salesforce.com/listingDetail?listingId=a0N30000000ps3jEAA) to handle deployment of Work Item Stories direct from Salesforce. 

This package depends on [sf-agile-deploy](https://github.com/iandrosov/sf-agile-deploy) tool.

### Istallation

For new sandbox or DEV org install [Agile Accelerator](https://appexchange.salesforce.com/listingDetail?listingId=a0N30000000ps3jEAA) package.

Install this package into the Salesforce organization where Agile Accelerator package is installed and all work stories are managed.
Installation cam be done manually from this repository or direct using the [githubsfdeploy tool](https://github.com/afawcett/githubsfdeploy) handy install button.

[<img alt="Deploy to Salesfroce" src="https://raw.githubusercontent.com/afawcett/githubsfdeploy/master/deploy.png">](https://githubsfdeploy.herokuapp.com/app/githubdeploy/iandrosov/sf-agile-deploy)

 
### Configuration

This package will add new custom Tab, Custom settings to the org and custom fields to Work Item to manage deployment source and targets.

`EXT_ADM_Settings__c.Service_URL__c`

Set this value to Heroku App URL where [sf-agile-deploy](https://github.com/iandrosov/sf-agile-deploy) app was installed. This Deployment page will use Heroku app service to handle deployment.

Example app [URL](https://sf-agile-deploy.herokuapp.com)

`https://sf-agile-deploy.herokuapp.com`

### Preparing for Deployment

To deploy a Work Item Story from Agile Accelerator configure following items

+ Change Set as Story name with components to deploy
+ Set Source Environment on Story record
+ Open Deployment Tab on Saleforce
+ Select a story from the list
+ Use QA/UAT Deploy button to initialize/commit github

These steps will initiate deployment steps and deployment Log page will display deployment progress.

1. Deploy Service will start by using Change Set definition to get package.xml created from change set.

2. Pull all metadata items defined in Change Set - package.xml from Source Org. 
3. Make a new git branch as story name W-000123
4. Commit all metadata to GitHub story branch
5. Initiate a deployment to target org QA/UAT
6. Upload copy of package.xml to Story attachment
7. Sent Chatter post to Story Assigned User
8. Update Story Environment value with target org

If any errors shown during deployemnt likely due to missing depndenecies, fix missing item in Chang Set and use Update button to apply chnages to existing git branch and redeploy to target.

Alternative, in case update does not work can redo Initialize deployment, delete a story branch from GitHub and run Deployment to re initialize git branch again frresh from updated Change Set. 



