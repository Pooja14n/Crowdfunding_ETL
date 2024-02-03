-- select statement for campaign table
SELECT cf_id, contact_id, company_name, description, goal, pledged, outcome, backers_count, country, 
currency, launched_date, end_date, category_id, subcategory_id
	FROM public.campaign;


-- select statement for category table	
SELECT category_id, category
	FROM public.category;


-- select statement for contacts table
SELECT contact_id, first_name, last_name, email
	FROM public.contacts;
	
	
-- select statement for subcategory table	
SELECT subcategory_id, subcategory
	FROM public.subcategory;
	
