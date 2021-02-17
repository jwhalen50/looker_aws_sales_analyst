connection: "okera_aws_sales_analyst"

# include all the views
include: "/views/**/*.view"

explore: transactions {}
explore: aws_sales_analyst_view {}
explore: whoami {}
