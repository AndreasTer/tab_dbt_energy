Welcome to the energy dbt demo project!

### Using the starter project

Try running the following commands:
- dbt run
- dbt test

Use this custom SQL to display your metric:
```
    select *
    from {{ metrics.calculate(
        metric('total_co2_emitted'),
        grain='year',
        dimensions=['country']
) }}
```

### Resources:
- Learn more about dbt [in the docs](https://docs.getdbt.com/docs/introduction)
- Check out [Discourse](https://discourse.getdbt.com/) for commonly asked questions and answers
- Join the [dbt community](http://community.getbdt.com/) to learn from other analytics engineers
- Find [dbt events](https://events.getdbt.com) near you
- Check out [the blog](https://blog.getdbt.com/) for the latest news on dbt's development and best practices
