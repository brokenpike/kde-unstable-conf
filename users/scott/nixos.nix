{
  ##################################################################################################################
  #
  # NixOS Configuration
  #
  ##################################################################################################################

  users.users.scott = {
    # Ryan's authorizedKeys
    openssh.authorizedKeys.keys = [
      "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQC73HAN89lRNInQELrDjJPFlwAyMr0rx5nanEkrycdVZ8YOPEfcSunuQRXbfTJH5/UNDijqlbqoioo8svNM7tZFG5UKHP9OQRmhs0sLPBN1xqko7DzBV2VYI9LAb9/kVtFw2ncsQNRANCzOcO8hSa9UdaCW4yczAohW9QuQFISwTwkuWEwFybeWJNTtUWFGImdxTLdPPOJM+F2Vf1JqsiEY1wZ1FjfzbOteimPh8P1idYYZvBtSyobMfve0fF9fZsMKve1CfOpBpBNlxfiZZKJQnoY4FiHcLWOQj+XToAzxk25Cf/ZQbP/4b7GBjr2+gymqF1UoXqmXXqTNvzHIcdHPPVNTN4H5JxLNgJMI3Sbxd8ArfWNj8qPNslFbj6xxg32BWMuiCfBsgbt09ZPrD7V8AJ327iZ7EfhW0DTKYUbfyWOk7LI2R6aCb7EFmMpesKUtqpz6kzsc9qXlLajKe8T+gfm6MD8YjigAShdDC2wTSXhw95W9iz2Ebtu5xRxhru0= brokenpike@garmr.org"
    ];
  };
}
