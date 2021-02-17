Welcome to your new dbt project!

### Using the starter project

Try running the following commands:
- dbt run
- dbt test


### Resources:
- Learn more about dbt [in the docs](https://docs.getdbt.com/docs/introduction)
- Check out [Discourse](https://discourse.getdbt.com/) for commonly asked questions and answers
- Join the [chat](http://slack.getdbt.com/) on Slack for live discussions and support
- Find [dbt events](https://events.getdbt.com) near you
- Check out [the blog](https://blog.getdbt.com/) for the latest news on dbt's development and best practices


###  EXAMPLE CODE ON stitch_utils:

`{{ stitch_utils.coalesce_fields(relation = source('stitch','table_name')) }}`

[https://hub.getdbt.com/fishtown-analytics/stitch_utils/latest/](docs)  

[https://www.postgresqltutorial.com/postgresql-coalesce/](notes on COALESCE)