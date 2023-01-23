create database project;
show databases;
use project;
show tables;

	select * from sql_project sp ;

# 1. WRITE a sql query to show all Item_Identifier

	select sp.Item_Identifier 
	from sql_project sp;

# 2. WRITE a sql query to show count of total Item_Identifier

	select count(sp.Item_Identifier) as Total_Item_Identifier from sql_project sp 
	
# 3. WRITE a sql query to show maximum Item Weight
	
	select max(sp.Item_Weight) as Maximum_Item_Weight from sql_project sp; 

# 4. WRITE a query to show minimun Item Weight

	select min(sp.Item_Weight) as Minimum_Item_Weight from sql_project sp;
	
# 5. WRITE a query to show average Item_Weight

	select avg(sp.Item_Weight)  from sql_project sp; 
	
# 6. WRITE a query to show count OF Item_Fat_Content WHERE
#     Item_Fat_Content IS Low Fat

	select count(sp.Item_Fat_Content),sp.Item_Fat_Content  from sql_project sp 
	where sp.Item_Fat_Content = 'Low Fat' ;
	
# 7. WRITE a query to show count OF Item_Fat_Content WHERE
#    Item_Fat_Content IS Regular

	select count(sp.Item_Fat_Content),sp.Item_Fat_Content  from sql_project sp 
	where sp.Item_Fat_Content = 'Regular' ;
	
# 8. WRITE a query TO show maximum Item_MRP

	select max(sp.Item_MRP) as Maximum_Item_MRP from sql_project sp;  
	
# 9. WRITE a query TO show minimum Item_MRP

	select min(sp.Item_MRP) as Minimum_Item_MRP from sql_project sp; 
	
# 10.WRITE a query to show Item_Identifier , Item_Fat_Content,
#    Item_Type,Item_MRP and Item_MRP IS greater than 200

	select sp.Item_Identifier ,sp.Item_Fat_Content ,sp.Item_Type ,sp.Item_MRP 
	from sql_project sp 
	where sp.Item_MRP > 200;
	
# 11.WRITE a query to show maximum Item_MRP WHERE
#    Item_Fat_Content IS Low Fat

	select max(sp.Item_MRP) as Maximum_Item_MRP,sp.Item_Fat_Content  
	from sql_project sp 
	where sp.Item_Fat_Content = 'Low Fat' ;

# 12.WRITE a query to show minimum Item_MRp AND Item_Fat_Content IS
#    Low Fat

	select min(sp.Item_MRP) as Minimum_Item_MRP,sp.Item_Fat_Content  
	from sql_project sp 
	where sp.Item_Fat_Content = 'Low Fat' ;

# 13.WRITE a query to show ALL DATA WHERE item MRP IS BETWEEN 50 TO 100
	
	select * from sql_project sp 
	where sp.Item_MRP between 50 and 100;
	
# 14.WRITE a query to show ALL UNIQUE value Item_Fat_Content

	select distinct sp.Item_Fat_Content 
	from sql_project sp ;
	
# 15.WRITE a query to show ALL UNIQUE value Item_Type

	select distinct sp.Item_Type 
	from sql_project sp ;
	
# 16.WRITE a query to show ALL DATA IN descending ORDER BY Item MRP

	select * from sql_project sp 
	order by sp.Item_MRP desc;
	
# 17.WRITE a query to show ALL DATA IN ascending ORDER BY
#    Item_Outlet_Sales

	select *
	from sql_project sp 
	order by sp.Item_Outlet_Sales ;
	
# 18.WRITE a query to show ALL DATA IN ascending BY Item_Type

	select *
	from sql_project sp 
	order by sp.Item_Type asc;

# 19.WRITE a query to show DATA OF item_type dairy & Meat

	select * from sql_project sp 
	where sp.Item_Type in ('Dairy','Meat');

# 20.WRITE a query to show ALL UNIQUE value OF Outlet_Size

	select distinct  sp.Outlet_Size 
	from sql_project sp ;

# 21.WRITE a query to show ALL UNIQUE value OF Outlet_Location_Type

	select distinct sp.outlet_location_type
	from sql_project sp ;

# 22.WRITE a query to show ALL UNIQUE value OF Outlet_Type

	select distinct  sp.Outlet_Type  from sql_project sp;

# 23.WRITE a query to show count NO. OF item BY Item_Type AND ordered
#    it IN descending

	select sp.Item_Type ,count(sp.Item_Type) as No_Of_Item 
	from sql_project sp 
	group by sp.Item_Type 
	order by sp.Item_Type; 

# 24.WRITE a query to show count NO. OF item BY Outlet_Size AND
#    ordered it IN ascending

	select sp.Outlet_Size ,count(sp.Outlet_Size) 
	from sql_project sp 
	group by sp.Outlet_Size 
	order by sp.Outlet_Size asc;

# 25.WRITE a query to show count NO. OF item BY Outlet_Establishment_Year AND ordered it IN ascening

	select sp.Outlet_Establishment_Year ,count(sp.Item_Identifier) as No_Of_Item
	from sql_project sp
	group by sp.Outlet_Establishment_Year
	order by sp.Item_Identifier ;

# 26.WRITE a query to show count NO. OF item BY Outlet_Type AND ordered it IN descending
	
	select sp.Outlet_Type  ,count(sp.Item_Identifier) as No_Of_Item
	from sql_project sp
	group by sp.Outlet_Type 
	order by sp.Item_Identifier ;

# 27.WRITE a query to show count of item BY Outlet_Location_Type AND ordered it IN descending

	select sp.Outlet_Location_Type ,count(sp.Item_Identifier) as No_Of_Item
	from sql_project sp
	group by sp.Outlet_Location_Type 
	order by sp.Item_Identifier desc ;

# 28.WRITE a query to show maximum MRP BY Item_Type

	select sp.Item_Type ,max(sp.Item_MRP) 
	from sql_project sp 
	group by sp.Item_Type ;

# 29.WRITE a query to show minimum MRP BY Item_Type

	select sp.Item_Type ,min(sp.Item_MRP) 
	from sql_project sp 
	group by sp.Item_Type ;

# 30.WRITE a query to show minimum MRP BY Outlet_Establishment_Year AND ordered it IN descending

	select sp.Outlet_Establishment_Year ,min(Item_MRP) as Minimum_MRP 
	from sql_project sp 
	group by sp.Outlet_Establishment_Year 
	order by sp.Item_MRP desc ; 

# 31.WRITE a query to show maximum MRP BY Outlet_Establishment_Year AND ordered IN descending
	
	select sp.Outlet_Establishment_Year ,max(Item_MRP) as Maximum_MRP 
	from sql_project sp 
	group by sp.Outlet_Establishment_Year 
	order by sp.Item_MRP desc ; 

# 32.WRITE a query to show average MRP BY Outlet_Size AND ordered IN descending

	select sp.Outlet_Size ,avg(Item_MRP) as Average_MRP 
	from sql_project sp 
	group by sp.Outlet_Size 
	order by average_MRP desc ;

# 33.WRITE a query to show average MRP BY Outlet_Size

	select sp.Outlet_Size , avg(Item_MRP) 
	from sql_project sp 
	group by sp.Outlet_Size ;

# 34.WRITE a query to show Average MRP BY Outlet_Type AND ordered IN ascending

	select sp.Outlet_Type , avg(sp.Item_MRP) as Average_MRP
	from sql_project sp 
	group by sp.Outlet_Type 
	order by Average_MRP asc;

# 35.WRITE a query to show maximum MRP BY Outlet_Type

	select sp.Outlet_Type ,max(sp.Item_MRP) as Maximum_MRP 
	from sql_project sp 
	group by sp.Outlet_Type ;

# 36.WRITE a query to show maximum Item_Weight BY Item_Type

	select sp.Item_Type ,max(sp.Item_Weight) 
	from sql_project sp 
	group by sp.Item_Type ;

# 37.WRITE a query to show maximum Item_Weight BY Outlet_Establishment_Year

	select sp.Outlet_Establishment_Year ,max(sp.Item_Weight) as Maximum_Item_weight
	from sql_project sp 
	group by sp.Outlet_Establishment_Year 
	order by max(sp.Item_Weight) ;

# 38.WRITE a query to show minimum Item_Weight BY Outlet_Type

	select sp.Outlet_Type ,min(sp.Item_Weight) as Minimum_Item_Weight 
	from sql_project sp 
	group by sp.Outlet_Type 
	order by min(sp.Item_Weight) desc ;

# 39.WRITE a query to show average Item_Weight BY Outlet_Location_Type ORDER BY descending

	select sp.Outlet_Location_Type ,avg(sp.Item_Weight) as Average_Item_Weight 
	from sql_project sp 
	group by sp.Outlet_Location_Type 
	order by avg(sp.Item_Weight) desc ; 

# 40.WRITE a query to show maximum Item_Outlet_Sales BY Item_Type

	select sp.Item_Type ,max(sp.Item_Outlet_Sales) as Maximum_Item_Outlet_sales
	from sql_project sp 
	group by sp.Item_Type ;

# 41.WRITE a query to show minimum Item_Outlet_Sales BY Item_Type

	select sp.Item_Type ,min(sp.Item_Outlet_Sales) as Minimum_Item_Outlet_sales 
	from sql_project sp 
	group by sp.Item_Type ;

# 42.WRITE a query to show minimum Item_Outlet_Sales BY Outlet_Establishment_Year
	
	select sp.Outlet_Establishment_Year , min(sp.Item_Outlet_Sales) as Minimum_Item_Outlet_sales
	from sql_project sp 
	group by sp.Outlet_Establishment_Year 
	order by minimum_item_outlet_sales desc ;
	
# 43.WRITE a query to show maximum Item_Outlet_Sales BY Outlet_Establishment_Year ordered BY descending

	select sp.Outlet_Establishment_Year , max(sp.Item_Outlet_Sales) as Maximum_Item_Outlet_sales
	from sql_project sp 
	group by sp.Outlet_Establishment_Year 
	order by Maximum_item_outlet_sales desc ;
	
# 44.WRITE a query to show average Item_Outlet_Sales BY Outlet_Size AND ORDER it itn descending

	select sp.Outlet_Size , avg(Item_Outlet_Sales) as Average_Item_Outlet_sales 
	from sql_project sp 
	group by sp.Outlet_Size 
	order by average_item_outlet_sales desc;
	
# 45.WRITE a query to show average Item_Outlet_Sales BY Outlet_Size

	select sp.Outlet_Size , avg(Item_Outlet_Sales) as Average_Item_Outlet_sales 
	from sql_project sp 
	group by sp.Outlet_Size 
	order by average_item_outlet_sales desc;

# 46.WRITE a query to show average Item_Outlet_Sales BY Outlet_Type

	select sp.Outlet_Type , avg(Item_Outlet_Sales) as Average_Item_Outlet_sales 
	from sql_project sp 
	group by sp.Outlet_Type  
	order by average_item_outlet_sales desc;

# 47.WRITE a query to show maximum Item_Outlet_Sales BY Outlet_Type
	
	select sp.Outlet_Type ,max(Item_Outlet_Sales) as Maximum_Item_Outlet_sales 
	from sql_project sp 
	group by sp.Outlet_Type  
	order by Maximum_item_outlet_sales desc;
	
# 48.WRITE a query TO  show total Item_Outlet_Sales BY Outlet_Establishment_Year
	
	select sp.Outlet_Establishment_Year  ,sum(Item_Outlet_Sales) as Total_outlet_sales
	from sql_project sp 
	group by sp.Outlet_Establishment_Year  ; 

# 49.WRITE a query to show total Item_Outlet_Sales BY Item_Type

	select sp.Item_Type ,sum(Item_Outlet_Sales) as Total_outlet_sales
	from sql_project sp 
	group by sp.Item_Type ;
	
# 50.WRITE a query TO  show  total Item_Outlet_Sales BY Outlet_Location_Type

	select sp.Outlet_Location_Type  ,sum(Item_Outlet_Sales) as Total_outlet_sales
	from sql_project sp 
	group by sp.Outlet_Location_Type  ;
	
# 51.WRITE a query to show total Item_Outlet_Sales BY Item_Fat_Content

	select sp.Item_Fat_Content ,sum(Item_Outlet_Sales) as Total_outlet_sales
	from sql_project sp 
	group by sp.Item_Fat_Content  ;

# 52.WRITE a query to show maximum Item_Visibility BY Item_Type

	select sp.Item_Type ,max(sp.Item_Visibility) as Maximum_Item_Visibility 
	from sql_project sp 
	group by sp.Item_Type;

# 53.WRITE a query to show Minimum Item_Visibility BY Item_Type

	select sp.Item_Type ,min(sp.Item_Visibility) as Minimum_Item_Visibility 
	from sql_project sp 
	group by sp.Item_Type;

# 54.WRITE a query to show total Item_Outlet_Sales BY Item_Type but
#    ONLY WHERE Outlet_Location_Type IS Tier 1
	
	select sp.Item_Type ,sum(sp.Item_Outlet_Sales) as Total_Item_outlet_sales 
	from sql_project sp 
	where Outlet_Location_Type = 'Tier 1' 
	group by sp.Item_Type 
	order by Total_item_outlet_sales desc;
	
# 55.WRITE a query to show total Item_Outlet_Sales BY Item_Type WHERE
#    Item_Fat_Content IS ONLY Low Fat & LF

	select sp.Item_Type ,sum(sp.Item_Outlet_Sales) as Total_Item_outlet_sales 
	from sql_project sp 
	where sp.Item_Fat_Content in ('Low Fat','LF') 
	group by sp.Item_Type 
	order by Total_item_outlet_sales desc;