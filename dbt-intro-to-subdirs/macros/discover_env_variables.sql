select * from {{ env_var('DBT_FIRST_ENV_VAR') }}

select * from {{ env_var('DBT_ENV_SECRET_FIRST_ENV_VAR', '123') }}


{{env_var('DBT_SNOWFLAKE_ACCOUNT', 'fka50167')}}