﻿SELECT
	[product_title].[title], 
	[product].[price]
FROM [product_title]
INNER JOIN [product] ON [product_title].[id] = [product].[product_title_id]
INNER JOIN [order_details] ON [product].[id] = [order_details].[product_id]
INNER JOIN [customer_order] ON [customer_order].[id] = [order_details].[customer_order_id]
INNER JOIN [person] ON [person].[id] = [customer_order].[customer_id]
WHERE [person].[birth_date] BETWEEN '2000-01-01' AND '2010-12-31'
ORDER BY [product_title].[title] ASC, [product].[price] ASC;