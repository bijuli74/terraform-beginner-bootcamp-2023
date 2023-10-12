# Terraform Beginner Bootcamp 2023
## Installing Terraform

Here are the steps to install Terraform on Ubuntu:

1. **Download Terraform**: You can download the appropriate package for your system from the HashiCorp website⁴⁵. Alternatively, you can use the `wget` command to download it directly to your current folder⁸. For example:
    ```
    wget https://releases.hashicorp.com/terraform/1.2.5/terraform_1.2.5_linux_amd64.zip
    ```
2. **Unzip the downloaded file**: After downloading Terraform, unzip the package⁵⁸. You might need to install the `zip` package if it's not already installed⁸. For example:
    ```
    sudo apt install zip -y
    sudo unzip terraform_1.2.5_linux_amd64.zip
    ```
3. **Move the Terraform binary**: Move the Terraform binary to a directory that's on your PATH⁵⁸. This process will differ depending on your operating system⁵. For example:
    ```
    sudo mv terraform /usr/local/bin/
    ```
4. **Verify the installation**: Verify that the installation worked by opening a new terminal session and listing Terraform's available subcommands⁵. For example:
    ```
    terraform -help
    ```
5. **Enable tab completion**: If you use either Bash or Zsh, you can enable tab completion for Terraform commands⁵. For example:
    ```
    touch ~/.bashrc
    terraform -install-autocomplete
    ```
    Once the autocomplete support is installed, you will need to restart your shell⁵.

