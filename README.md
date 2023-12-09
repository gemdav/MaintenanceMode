# Maintenance Mode module for Mendix

This module provides functionalities for a maintenance mode in Mendix applications. It enables administrators to to prevent users from performing actions while maintenance is done.

## Typical usage scenario

For Mendix application administrators and developers that have to perform maintenance actions in Mendix applications in the running app and want to prevent other users from using the app in the meantime. This can be the desirable when there are inconsistencies, lowered user experience, errors or other problems are expected to occur when users use the app during the maintenance.

## Features

- Temporarily exclude users from using the Mendix application
- Apply the maintenance mode user-role wise
- Provide a mail address for users to contact during the maintenance

## Installation

1. Install the Dependencies from the Mendix Marketplace:
  - [Atlas Core](https://marketplace.mendix.com/link/component/117187)
2. Install the Maintenance Mode (TODO: Add marketplace link) from the Mendix Marketplace
3. Assign the module roles to your projects user roles. Users with the module role ```Administrators``` can configure and en-/disable the maintenance mode. Assign the module role ```Affectable``` to every user role that should be affectable by the maintenance mode. 
4. Add the ```SNPT_MaintenanceMode_Configuration``` Snippet to a page you can access. Alternatively you can use the ```MaintenanceMode_Configuration``` page.
5. Ensure that the Microflow ```ACT_OpenMaintenancePage_If_MaintenanceModeEnabled``` is called from all pages of the application. This can be done many ways. Probably, the most convenient way is to add a [Microflow Timer](https://marketplace.mendix.com/link/component/27) to the Layout used for the application. Please note that, if you use a layout from a Mendix Marketplace module, your changes might be overwritten when you update the module. In that case you will have to re-add the Microflow Timer again.

## Configuration

1. Open the page with the configuration snippet (see 4th step of installation)
2. Configure the contact email
3. Select affected roles according to your needs
4. En-/ disable the maintenance mode every time you need it. Adjust the affected roles accordingly. 

## Help improving this package

I built this module based on my own use cases for maintenance in running Mendix applications. Please let me know if you are missing any features so I can consider adding them in a later version. Please also let me know if you know a way to make the installation of the module more convenient and seamless, especially how to avoid the 5th step of the installation process.

