with source as (

    select * from {{ source('salesforce', 'Accounts') }}

),

renamed as (

    select
    
        BATCHID,
        COMPANYEXTID as ACCOUNTID,
        COMPANY_NAME,
        CITY,
        STATE,
        DATECREATED,
        MODIFIEDDATE

    from source

)

select * from renamed