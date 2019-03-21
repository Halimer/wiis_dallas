# Distribute Agent Packages

## Overview
In this setion we will use the AWS System Manager to distribute the Deep Security Agent to an instance.

### Creating and Distributing the Package

1. Go to [Systems Manager/Distributor - AWS Console](https://console.aws.amazon.com/systems-manager/distributor)

![](https://github.com/Halimer/wiis_dallas/blob/master/images/distributor.png)

2. Click **Create Package**

3. Under Name enter **WIISAgent**.

4. For S3 bucket URL enter **https://s3.amazonaws.com/wiis-dallas/**.

5. Leave everything else as the defaults.

6. Click **Create Package**
![](https://github.com/Halimer/wiis_dallas/blob/master/images/create_package.png)

7. It will take a couple of minutes to create the package.  Click the refresh button on your browser until the **Install One Time** button is visible at the top.  Once visible, click it to install.
![](https://github.com/Halimer/wiis_dallas/blob/master/images/install1.png)

8. Scroll down until you see **Target Instances**.  Select the check box next to the instance to select it.  The press **Run** at the bottom.

![](https://github.com/Halimer/wiis_dallas/blob/master/images/run.png)
![](https://github.com/Halimer/wiis_dallas/blob/master/images/run2.png)
![](https://github.com/Halimer/wiis_dallas/blob/master/images/run3.png)

9. Use the refresh button at the top and wait until you see the status change to 'Success'

![](https://github.com/Halimer/wiis_dallas/blob/master/images/run4.png)

10. Go back to your DSM console to see that the agent now shows managed.



