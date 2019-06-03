# Google Cloud Shell image with TerraForm and Helm client
This Google Cloud Shell image contains TerraForm and Helm. The image is based of the default Google Cloud Shell docker.

## How to use?
Follow the steps below:
1. Go to [Cloud Shell Environment settings](https://console.cloud.google.com/cloudshell/environment/view)
2. Click on Edit
3. Click on "Select image from project"
4. In the Image URL field enter: `gcr.io/sam-playground-123/sam-cloud-shell:latest`
5. Click "Save"
You should now be able to use Helm and Terraform in new Cloud Shell sessions. Note that loading time will of new cloud sessions are expected to increase.

