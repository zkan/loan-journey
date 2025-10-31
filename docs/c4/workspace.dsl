workspace {

  model {
    user = person "User" {
      description "User"
    }

    loan_journey = softwareSystem "Loan Journey" {
      description "Loan Journey"
    }

    user -> loan_journey "Interacts"
  }

  views {
    systemContext loan_journey {
      include *
      autoLayout lr
    }

    container loan_journey {
      include *
      autoLayout lr
    }

    theme default

    styles {
      element "database" {
        shape Cylinder
      }

      element "external" {
        background #dddddd
        color #000000
      }

      element "Decision:Adopted" {
        colour white
        background #5cb85c
      }
    }
  }
}
