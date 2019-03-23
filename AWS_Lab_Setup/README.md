# Lab Setup - AWS Environment and Trend Micro Deep Security Manager
In this section we are going to use CloudFormation to quickly deploy the Trend Micro Deep Security Manager and the supporting AWS infrastructure.  

## Creating a Key Pair Using Amazon EC2

1. Open the Amazon EC2 console at [https://console.aws.amazon.com/ec2/](https://console.aws.amazon.com/ec2/).

2. In the navigation pane on the left side of the screen, under NETWORK & SECURITY, choose **Key Pairs**.

**Note**
If you do not see the navigation pane, it might be minimized; choose the arrow to expand the pane.

3. Choose **Create Key Pair**.

![](https://github.com/Halimer/wiis_dallas/blob/master/images/AWS_Key_Pair.png)

4. Enter **WIIS-Dallas** in the Key pair name field of the Create Key Pair dialog box, and then choose **Create**.

![](https://github.com/Halimer/wiis_dallas/blob/master/images/AWS_Key_Pair_Name.png)

5. The private key file will be automatically downloaded by your browser. The base file name is the name you specified as the name of your key pair, and the file name extension is .pem. Save the file.



## Deploy CloudFormation

1. Click to <a href="https://console.aws.amazon.com/cloudformation/home?region=us-east-1#/stacks/new?stackName=wiisdallasLab&templateURL=https://s3-us-west-2.amazonaws.com/johammer/Public/Distributor/wiis_dallas.template" target="_blank">Launch CloudFormation</a>.

2. The template address should already be filled out for you.  Click the **Next** button.

![](https://github.com/Halimer/wiis_dallas/blob/master/images/CFT_S3_Template.png)

3. Select 'WIIS-Dallas' as the **KeyName** from the second drop down and then click **Next**.

![](https://github.com/Halimer/wiis_dallas/blob/master/images/CFT_Details_Template.png)

4. Click the **Next** button.

5. Under **Key** enter 'Name'.

6. Under **Value** enter 'WIIS-Dallas-Lab'.

7. Leave all other fields as the default and then click **Next**.

![](https://github.com/Halimer/wiis_dallas/blob/master/images/CFT_Options.png)

8. Select 'I acknowledge that AWS CloudFormation might create IAM resources.'

9. Click the **Create** button.


![](https://github.com/Halimer/wiis_dallas/blob/master/images/CFT_Review.png)

10. Click the Refresh Button at the top right side of the screen to view the status of your stack. 

![](https://github.com/Halimer/wiis_dallas/blob/master/images/CFT_Refresh_Button.png)

11. Select the check box next to **wiisdallasLab**.

12. Repeat every few minutes until **Status** is **Create_Complete**.

13. Select **Outputs**.

14. Click on the DSM **URL**.  

**Note**
It will take approximately **15** minutes for the DSM console be available even after the stack shows complete. 

![](https://github.com/Halimer/wiis_dallas/blob/master/images/consoleurl.png)

15. Once the console is available, you will receive a warning about the SSL certificate because we are using a self-signed certificate.  Click on **Advanced** and then **Proceed to URL** or **Accept the Risk and Continue** depending on your browser.

![](https://github.com/Halimer/wiis_dallas/blob/master/images/console_login.png)  

16. Log in to the console with the Username 'Masteradmin' and the Password 'Password123!'.

17. Once the console has finished updating, the Dashboard will show Green in the Computer Status and **2** Computers managed. It may take a few minutes for the second instance to show up in the console. You may need to refresh the browser to see any updates.

![](https://github.com/Halimer/wiis_dallas/blob/master/images/console1.png) 

18. Click on the Computers tab to see which instances are available.  If you need to narrow down your search, click on US East (Virginia). One of the instances will show Managed and will have the Base Policy Assigned to it.  

![](https://github.com/Halimer/wiis_dallas/blob/master/images/console2.png)  

19. Double click on the instance to open it.  On the **Policy** drop down, expand **Base Policy** and then select **Linux Server**.  Press Save.

![](https://github.com/Halimer/wiis_dallas/blob/master/images/console3.png) 
![](https://github.com/Halimer/wiis_dallas/blob/master/images/console4.png) 

20. Wait a minute for the policy to send.  Once it's been sent, Anti-Malware will show **On, Real Time**.

![](https://github.com/Halimer/wiis_dallas/blob/master/images/console5.png) 

21. The server is now protected.  Click on the Anti-Malware module and then Anti-Malware Events.  You will see that someone has been trying to download a virus but it's been stopped.  If you don't see any events, wait a minute and click refresh.

![](https://github.com/Halimer/wiis_dallas/blob/master/images/malware.png) 

22. Double click on any event to get the full details.  

![](https://github.com/Halimer/wiis_dallas/blob/master/images/malware2.png) 

23.  Proceed to the [Distributor Lab](https://github.com/Halimer/wiis_dallas/tree/master/AWS_Distributor).

