workspace {

  model {
    user = person "User" {
      description "A user who wants to preview the installment amount before applying for a loan"
    }

    loan_journey = softwareSystem "Loan Journey" {
      description "A system that calculates and displays loan installments to the user"

      web = container "Web" {
        description "Web UI for a user"
        technology "React"
      }

      app = container "App" {
        description "API that serves the Web UI"
        technology "Go"
      }

      db = container "Database" {
        description "A database that stores the data from a user"
        technology "PostgreSQL"
        tags "database"
      }

      web -> app "Calls API"
      app -> db "Reads/writes data to"
    }

    user -> loan_journey "Uses"
    user -> web "Uses"
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
