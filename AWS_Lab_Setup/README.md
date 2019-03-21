# Lab Setup - AWS Environment and Trend Micro Deep Security Manager
In this section we are going to use Cloudformation to quickly deploy the Trend Micro Deep Security Manager and the supporting AWS infrastructure.  

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

1. Right click and open in a new tab the following link: <a href="https://console.aws.amazon.com/cloudformation/home?region=us-east-1#/stacks/new?stackName=wiisdallasLab&templateURL=https://s3-us-west-2.amazonaws.com/johammer/Public/Distributor/wiis_dallas.template" target="_blank">Launch CloudFormation</a>

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

![](https://github.com/Halimer/wiis_dallas/blob/master/images/consoleurl.png)

15. You will receive a warning about the SSL certificate because we are using a self-signed certificate.  Click on **Advanced** and then **Proceed to URL** or **Accept the Risk and Continue** depending on your browser.

![](https://github.com/Halimer/wiis_dallas/blob/master/images/console_login.png)  

16. Log in to the console with the Username 'Masteradmin' and the Password 'Password123!'.

