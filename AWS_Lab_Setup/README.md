# Pre Lab Setup - AWS Environment
In this section we are going to create an SSH key then deploy some resources into your AWS account via CloudFormation. 

## Creating a Key Pair Using Amazon EC2
![](https://github.com/Halimer/wiis_dallas/blob/master/images/AWS_EC2.png)

1. Open the Amazon EC2 console at [https://console.aws.amazon.com/ec2/](https://console.aws.amazon.com/ec2/).
2. In the navigation pane, under NETWORK & SECURITY, choose **Key Pairs**.

Note
The navigation pane is on the left side of the Amazon EC2 console. If you do not see the pane, it might be minimized; choose the arrow to expand the pane.

![](https://github.com/Halimer/wiis_dallas/blob/master/images/AWS_Key_Pair.png)

2. Choose **Create Key Pair**.

![](https://github.com/Halimer/wiis_dallas/blob/master/images/AWS_Key_Pair_Name.png)

3. Enter a **wiis_dallas-Lab** in the Key pair name field of the Create Key Pair dialog box, and then choose **Create**.
4. The private key file is automatically downloaded by your browser. The base file name is the name you specified as the name of your key pair, and the file name extension is .pem. Save the private key file in a safe place.

**Important**

This is the only chance for you to save the private key file. You'll need to provide the name of your key pair when you launch an instance and the corresponding private key each time you connect to the instance.

## Deploy CloudFormation

1. Click <a href="https://console.aws.amazon.com/cloudformation/home?region=us-east-1#/stacks/new?stackName=wiisdallasLab&templateURL=https://s3-us-west-2.amazonaws.com/johammer/Public/LabEnvironment.template" target="_blank">Launch CloudFormation</a>

2. Click the **Next** button
![](https://github.com/Halimer/wiis_dallas/blob/master/images/CFT_S3_Template.png)

3. Select 'wiis_dallas-Lab' as the **KeyName**
![](https://github.com/Halimer/wiis_dallas/blob/master/images/CFT_Details_Template.png)

4. Click the **Next** button
5. Under **Key** enter 'Name'
6. Under **Value** enter 'WIIS-Dallas'
![](https://github.com/Halimer/wiis_dallas/blob/master/images/CFT_Options.png)

7. Click the **Next** button
![](https://github.com/Halimer/wiis_dallas/blob/master/images/CFT_Review.png)

8. Select 'I acknowledge that AWS CloudFormation might create IAM resources.'
9. Click the **Create** button
![](https://github.com/Halimer/wiis_dallas/blob/master/images/CFT_Review.png)

10. Select the **wiis_dallasLab**
11. Click the ![](https://github.com/Halimer/wiis_dallas/blob/master/images/CFT_Refresh_Button.png)
![](https://github.com/Halimer/wiis_dallas/blob/master/images/CFT_Create_In_Progress.png)

12. Repeat every few minutes until **Status** is **Create_Complete**

13. Select **Outputs**
14. Click on **URL**
![](https://github.com/Halimer/wiis_dallas/blob/master/images/CFT_Create_Complete.png)

15. You should see the below
![](https://github.com/Halimer/wiis_dallas/blob/master/images/CFT_website.png)

16. Now let's setup [Evident](https://github.com/Halimer/wiis_dallas/blob/master/Evident_Lab_Setup/README.md)
