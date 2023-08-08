
with source as (

    select * from {{ source('salesforce', 'Opportunities') }}

),

renamed as (

    select
    
        BATCHID,
        OPPURTUNITYID as OPPORTUNITYID,
        COMPANEXTID as ACCOUNTID,
        AMOUNT,
        PROJECT_NAME,
        OPPURTUNITY_NAME as OPPORTUNITY_NAME,
        STAGE,
        CLOSE_DATE,
        DATECREATED,
        MODIFIEDDATE

    from source

)

select * from renamed