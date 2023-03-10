USE [APIProducts]
GO
/****** Object:  StoredProcedure [dbo].[api_ListProducts]    Script Date: 2/21/2023 12:04:24 PM ******/
DROP PROCEDURE [dbo].[api_ListProducts]
GO
/****** Object:  StoredProcedure [dbo].[api_ListCategory]    Script Date: 2/21/2023 12:04:24 PM ******/
DROP PROCEDURE [dbo].[api_ListCategory]
GO
/****** Object:  StoredProcedure [dbo].[Admin_ViewProductName]    Script Date: 2/21/2023 12:04:24 PM ******/
DROP PROCEDURE [dbo].[Admin_ViewProductName]
GO
/****** Object:  StoredProcedure [dbo].[Admin_ViewCategoryName]    Script Date: 2/21/2023 12:04:24 PM ******/
DROP PROCEDURE [dbo].[Admin_ViewCategoryName]
GO
/****** Object:  StoredProcedure [dbo].[Admin_UpdateProductName]    Script Date: 2/21/2023 12:04:24 PM ******/
DROP PROCEDURE [dbo].[Admin_UpdateProductName]
GO
/****** Object:  StoredProcedure [dbo].[Admin_UpdateCategoryName]    Script Date: 2/21/2023 12:04:24 PM ******/
DROP PROCEDURE [dbo].[Admin_UpdateCategoryName]
GO
/****** Object:  StoredProcedure [dbo].[Admin_RemoveProductName]    Script Date: 2/21/2023 12:04:24 PM ******/
DROP PROCEDURE [dbo].[Admin_RemoveProductName]
GO
/****** Object:  StoredProcedure [dbo].[Admin_RemoveCategoryName]    Script Date: 2/21/2023 12:04:24 PM ******/
DROP PROCEDURE [dbo].[Admin_RemoveCategoryName]
GO
/****** Object:  StoredProcedure [dbo].[Admin_AddProductName]    Script Date: 2/21/2023 12:04:24 PM ******/
DROP PROCEDURE [dbo].[Admin_AddProductName]
GO
/****** Object:  StoredProcedure [dbo].[Admin_AddCategoryName]    Script Date: 2/21/2023 12:04:24 PM ******/
DROP PROCEDURE [dbo].[Admin_AddCategoryName]
GO
/****** Object:  Table [dbo].[tbl_Products]    Script Date: 2/21/2023 12:04:24 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_Products]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_Products]
GO
/****** Object:  Table [dbo].[tbl_Category]    Script Date: 2/21/2023 12:04:24 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_Category]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_Category]
GO
USE [master]
GO
/****** Object:  Database [APIProducts]    Script Date: 2/21/2023 12:04:24 PM ******/
DROP DATABASE [APIProducts]
GO
/****** Object:  Database [APIProducts]    Script Date: 2/21/2023 12:04:24 PM ******/
CREATE DATABASE [APIProducts]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'APIProducts', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\APIProducts.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'APIProducts_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\APIProducts_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [APIProducts] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [APIProducts].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [APIProducts] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [APIProducts] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [APIProducts] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [APIProducts] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [APIProducts] SET ARITHABORT OFF 
GO
ALTER DATABASE [APIProducts] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [APIProducts] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [APIProducts] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [APIProducts] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [APIProducts] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [APIProducts] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [APIProducts] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [APIProducts] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [APIProducts] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [APIProducts] SET  DISABLE_BROKER 
GO
ALTER DATABASE [APIProducts] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [APIProducts] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [APIProducts] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [APIProducts] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [APIProducts] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [APIProducts] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [APIProducts] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [APIProducts] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [APIProducts] SET  MULTI_USER 
GO
ALTER DATABASE [APIProducts] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [APIProducts] SET DB_CHAINING OFF 
GO
ALTER DATABASE [APIProducts] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [APIProducts] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [APIProducts] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [APIProducts] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [APIProducts] SET QUERY_STORE = OFF
GO
USE [APIProducts]
GO
/****** Object:  Table [dbo].[tbl_Category]    Script Date: 2/21/2023 12:04:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Category](
	[catId] [varchar](50) NOT NULL,
	[CategoryName] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Products]    Script Date: 2/21/2023 12:04:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Products](
	[ProductId] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [nchar](10) NULL,
	[catId] [varchar](50) NULL
) ON [PRIMARY]
GO
INSERT [dbo].[tbl_Category] ([catId], [CategoryName]) VALUES (N'1', N'Food')
INSERT [dbo].[tbl_Category] ([catId], [CategoryName]) VALUES (N'2', N'Drinks')
INSERT [dbo].[tbl_Category] ([catId], [CategoryName]) VALUES (N'4', N'Snack')
GO
SET IDENTITY_INSERT [dbo].[tbl_Products] ON 

INSERT [dbo].[tbl_Products] ([ProductId], [ProductName], [catId]) VALUES (1, N'Vadapav   ', N'1')
INSERT [dbo].[tbl_Products] ([ProductId], [ProductName], [catId]) VALUES (2, N'Pavbhaji  ', N'1')
INSERT [dbo].[tbl_Products] ([ProductId], [ProductName], [catId]) VALUES (3, N'Samosa    ', N'1')
INSERT [dbo].[tbl_Products] ([ProductId], [ProductName], [catId]) VALUES (4, N'Coke      ', N'2')
INSERT [dbo].[tbl_Products] ([ProductId], [ProductName], [catId]) VALUES (5, N'Fanta     ', N'2')
SET IDENTITY_INSERT [dbo].[tbl_Products] OFF
GO
/****** Object:  StoredProcedure [dbo].[Admin_AddCategoryName]    Script Date: 2/21/2023 12:04:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Admin_AddCategoryName]
@CategoryName varchar(50) = null
AS
BEGIN
if exists (select top(1)1 from tbl_Category where CategoryName=@CategoryName)
begin
select 'CategoryName Name Already Exists' As msg, 0 as n, 'Failed' AS status
end
else
begin
insert into tbl_Category (CategoryName)values
(@CategoryName)
select 'CategoryName Name Added Successfully' As msg, 1 as n, 'Success' AS status
end
END

GO
/****** Object:  StoredProcedure [dbo].[Admin_AddProductName]    Script Date: 2/21/2023 12:04:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Admin_AddProductName]
@ProductName varchar(50) = null,
@Catid varchar(50) = null
As
BEGIN
if exists (select top(1)1 from tbl_Products where ProductName=@ProductName)
begin
select 'ProductName Name Already Exists' As msg, 0 as n, 'Failed' AS status
end
else
begin
insert into tbl_Products (ProductName,catId)values
(@ProductName,@Catid)
select 'CategoryName Name Added Successfully' As msg, 1 as n, 'Success' AS status
end
END

GO
/****** Object:  StoredProcedure [dbo].[Admin_RemoveCategoryName]    Script Date: 2/21/2023 12:04:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[Admin_RemoveCategoryName]
@Catid int=null
AS
BEGIN
if exists (select top(1)1 from tbl_Category where Catid = @Catid)
begin
delete from tbl_Category where Catid=@Catid
select 'Category  Name Removed Successfully.' as msg , 1 as n, 'Success' as Status
end
else
begin
select 'Category  Name Removed Failed.' as msg , 0 as n, 'Failed' as Status
end
end
GO
/****** Object:  StoredProcedure [dbo].[Admin_RemoveProductName]    Script Date: 2/21/2023 12:04:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Admin_RemoveProductName]
@ProductId int=null
AS
BEGIN
if exists (select top(1)1 from tbl_Products where ProductId = @ProductId)
begin
delete from tbl_Products where ProductId=@ProductId
select 'Products  Name Removed Successfully.' as msg , 1 as n, 'Success' as Status
end
else
begin
select 'Products  Name Removed Failed.' as msg , 0 as n, 'Failed' as Status
end
end
GO
/****** Object:  StoredProcedure [dbo].[Admin_UpdateCategoryName]    Script Date: 2/21/2023 12:04:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Admin_UpdateCategoryName] 
@Catid int=null,
@CategoryName varchar(50)=null
AS
BEGIN
if exists(select top(1)1 from tbl_Category Where Catid=@Catid)
begin
  update tbl_Category set CategoryName=@CategoryName where Catid=@Catid
  Select 'Category Name Updated Sucessfully' as Msg,1 as n,'success ' as Status
End
  else
begin
  Select 'Category Name Updation Failed ' as Msg,0 as n,'failed ' as Status
End
END
GO
/****** Object:  StoredProcedure [dbo].[Admin_UpdateProductName]    Script Date: 2/21/2023 12:04:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Admin_UpdateProductName] 
@ProductId int=null,
@ProductName varchar(50)=null,
@Catid varchar(50) = null
AS
BEGIN
if exists(select top(1)1 from tbl_Products Where ProductId=@ProductId)
begin
  update tbl_Products set ProductName=@ProductName,Catid=@Catid where ProductId=@ProductId
  Select 'Products Name Updated Sucessfully' as Msg,1 as n,'success ' as Status
End
  else
begin
  Select 'Products Name Updation Failed ' as Msg,0 as n,'failed ' as Status
End
END
GO
/****** Object:  StoredProcedure [dbo].[Admin_ViewCategoryName]    Script Date: 2/21/2023 12:04:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[Admin_ViewCategoryName]
@CatId int	= null
AS
BEGIN
if exists (select top (1)1 from tbl_Category where  CatId = @CatId)
begin
select * from tbl_Category where CatId= @CatId 
select 'Category Name Displayed Successfully' as msg, 1 as n , 'Success' as Status
end
else
begin
select 'Category Name Displayed Failed' as msg,0 as n , 'Failed' as Status
end
END
GO
/****** Object:  StoredProcedure [dbo].[Admin_ViewProductName]    Script Date: 2/21/2023 12:04:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Admin_ViewProductName] 
@ProductId int	= null
AS
BEGIN
if exists (select top (1)1 from tbl_Products where  ProductId = @ProductId)
begin
select  a.ProductName,b.CategoryName from tbl_Products a inner join tbl_Category b on a.catId =b.catId where a.ProductId = @ProductId 
select 'Product Name Displayed Successfully' as msg, 1 as n , 'Success' as Status
end
else
begin
select 'Product Name Displayed Failed' as msg,0 as n , 'Failed' as Status
end
END
GO
/****** Object:  StoredProcedure [dbo].[api_ListCategory]    Script Date: 2/21/2023 12:04:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[api_ListCategory]
AS
BEGIN
    SELECT Catid,CategoryName from tbl_Category
	SELECT 'Category List Displayed Successfully' AS Msg, 1 AS N, 'Success' AS Status
END
GO
/****** Object:  StoredProcedure [dbo].[api_ListProducts]    Script Date: 2/21/2023 12:04:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[api_ListProducts]
AS
BEGIN
    SELECT b.ProductName,a.CategoryName from tbl_Category a inner join tbl_Products b on a.catId = b.catId
	SELECT 'Category List Displayed Successfully' AS Msg, 1 AS N, 'Success' AS Status
END
GO
USE [master]
GO
ALTER DATABASE [APIProducts] SET  READ_WRITE 
GO
