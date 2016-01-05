SELECT  Table_NAME token,
           data_length   "table data_length in Bytes",
           index_length  "table index_length in Bytes",
           data_free  "Free Space in Bytes"
    FROM  information_schema.TABLES  where  Table_schema = 'keystone';
