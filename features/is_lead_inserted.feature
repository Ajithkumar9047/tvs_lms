Feature:As a scheduler I want to check the Success, Missing data and Rejected leads. test
      Lead is rejected when there is no possibility of contacting the user and getting the missing data. 
      Scenario: Should verify the lead is rejected without passing the mobile number 
            Given Post the lead without Mobile number
            When I receive a response 
                  Then I expect the response as
                  """
                  {
                  "message": "Invalid/Missing mobile number"
                  }
                  """

      Scenario: Should verify the lead is inserted successfully 
            Given Post the correct lead
            When I receive a response 
                  Then I expect the response as
                  """
                  {
                  "message":"Success"
                  }
                  """
      Scenario: Should verify the lead is inserted without name 
            Given Post the lead without name
            When I receive a response 
                  Then I expect the response as
                  """
                  {
                  "message": "'CUSTOME R_ NAME' must not be empty.~The specified condition was not met for 'CUSTOME R_ NAME'."
                  }
                  """
      Scenario:Should verify the lead is inserted with name less than 3 characters 
            Given Post the lead with name less than 3 characters
            When I receive a response 
                  Then I expect the response as
                  """
                  {
                  "message": "The specified condition was not met for 'CUSTOME R_ NAME'."
                  }
                  """
      Scenario: Should verify the lead is rejected when entering a invalid mobile number
            Given Post the lead with invalid Mobile number
            When I receive a response 
                  Then I expect the response as
                  """
                  {
                  "message": "Invalid/Missing mobile number"
                  }
                  """
      Scenario: Should verify the lead is inserted without brand code
            Given Post the lead without brand code
            When I receive a response 
                  Then I expect the response as
                  """
                  {
                  "message": "'brand_code' must be greater than '0'."
                  }
                  """
      Scenario: Should verify the lead is inserted without Enquiry date
            Given Post the lead without enquiry date
            When I receive a response 
                  Then I expect the response as
                  """
                  {
                  "message": "'ENQUIR Y_ DATE' must not be empty."
                  }
                  """
      Scenario:Should verify the lead is inserted with invalid Email address
            Given Post the lead with invalid email id
            When I receive a response 
                  Then I expect the response as
                  """
                  {
                  "message": "'EMAIL L_ ID' must not be empty.~A valid email is required"
                  }
                  """
      Scenario: Should verify the lead is inserted without Model id
            Given Post the lead without model id
            When I receive a response 
                  Then I expect the response as
                  """
                  {
                  "message": "'MODE L_ ID' must not be empty."
                  }
                  """
      Scenario: Should verify the lead is inserted without Part id
            Given Post the lead without Part id
            When I receive a response 
                  Then I expect the response as
                  """
                  {
                  "message": "'PAR T_ ID' must not be empty."
                  }
                  """
      Scenario:Should verify the lead is inserted without dealer pincode
            Given Post the lead without dealer pincode
            When I receive a response 
                  Then I expect the response as
                  """
                  {
                  "message": "'AREA' must not be empty."
                  }
                  """
      Scenario: Should verify the lead is inserted without customer pincode
            Given Post the lead without customer pincode
            When I receive a response 
                  Then I expect the response as
                  """
                  {
                  "message": "'pincode' must not be empty."
                  }
                  """
      Scenario: Should verify the lead is inserted with invalid Enqid format
            Given Post the lead with invalid Enqid format
            When I receive a response 
                  Then I expect the response as
                  """
                  {
                  "message": "Invalid/missing Enquiry Date"
                  }
                  """
      # Scenario: Should verify the lead is inserted with mismatched part and model id
      #       Given Post the lead with mismatched part and model id
      #       When I receive a response 
      #             Then I expect the response as
      #             """
      #             {
      #             "message": "part and model id mismatched"
      #             }
      #             """
      Scenario: Should verify the lead is inserted without enquiry source
            Given Post the lead without enquiry source
            When I receive a response 
                  Then I expect the response as
                  """
                  {
                  "message": "Source not present"
                  }
                  """

      Scenario: Should verify the lead is inserted when the dealer id is invalid
            Given Post the lead when the dealer id is invalid
            When I receive a response 
                  Then I expect the response as
                  """
                  {
                  "message": "Invalid/missing Dealer Id~Invalid DealerId and BranchId Combination"
                  }
                  """

      Scenario: Should verify the lead is inserted when the Dealer Id and Branch Id mismatch
            Given Post the lead when the Dealer Id and Branch Id mismatch
            When I receive a response 
                  Then I expect the response as
                  """
                  {
                  "message": "Invalid/missing Dealer Id~Invalid DealerId and BranchId Combination"
                  }
                  """








