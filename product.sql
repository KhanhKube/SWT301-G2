USE [ass]
GO

/****** Object:  Table [dbo].[Products]    Script Date: 3/5/2024 15:53:13 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

insert into Users values('admin','password1','user1@example.com','123 Street, City1, Country1',1,0)
insert into Users values('admin','password2','user2@example.com','456 Avenue, City2, Country2',2,0)
insert into Users values('admin','password3','user3@example.com','789 Road, City3, Country3',3,0)
insert into Users values('user1','pass1','user4@example.com','1011 Lane, City4, Country4',0,1)
insert into Users values('user2','pass2','user5@example.com','1213 Boulevard, City5, Country5',0,1)

insert into Categories values ('Air Force 1')
  insert into Categories values ('Air Jordan')
  insert into Categories values ('Downshifter')
  insert into Categories values ('Dunk')
  insert into Categories values ('Court')


INSERT INTO [dbo].[Products] ([Name], [Description], [Price], [Image], [Quantity], [CategoryID], [AdminUserID])
VALUES
    ('Air Force 1 White', 'Classic white Air Force 1 sneakers.', 100, 'Air Force 1 White.png', 50, 1, 1),
    ('Air Force 1 Black', 'Timeless black Air Force 1 sneakers.', 110, 'AirForce1Black.png', 50, 1, 2),
    ('Air Jordan Retro High OG', 'Retro-style Air Jordan high-top sneakers.', 120, 'Air Jordan Retro High OG.jpg', 50, 2, 3),
    ('Air Jordan Low Top', 'Low-top Air Jordan sneakers with modern design.', 130, 'Air Jordan Low Top.jpg', 50, 2, 1),
    ('Downshifter 11', 'Comfortable and lightweight running shoes.', 90, 'Downshifter 11.jpg', 50, 3, 2),
    ('Downshifter 12', 'Updated version of the Downshifter series.', 95, 'Downshifter 12.png', 50, 3, 3),
    ('Dunk High', 'Stylish high-top Dunk sneakers.', 100, 'Dunk High.png', 50, 4, 1),
    ('Dunk Low', 'Classic low-top Dunk sneakers for everyday wear.', 105, 'Dunk Low.png', 50, 4, 2),
    ('Court Royale', 'Sleek and versatile Court Royale sneakers.', 80, 'Court Royale.png', 50, 5, 3),
    ('Court Vision Low', 'Modern low-top sneakers with a retro feel.', 85, 'Court Vision Low.png', 50, 5, 1),
    ('Air Force 1 Red', 'Bold red Air Force 1 sneakers for a statement look.', 115, 'Air Force 1 Red.png', 50, 1, 2),
    ('Air Jordan Mid Top', 'Mid-top Air Jordan sneakers with premium materials.', 125, 'Air Jordan Mid Top.png', 50, 2, 3),
    ('Downshifter 13', 'Next-generation Downshifter running shoes with enhanced cushioning.', 100, 'Downshifter 13.png', 50, 3, 1),
    ('Dunk High Premium', 'Premium version of the Dunk High sneakers with unique colorways.', 110, 'Dunk High Premium.png', 50, 4, 2),
    ('Court Vision Mid', 'Mid-top Court Vision sneakers with a contemporary design.', 95, 'Court Vision Mid.png', 50, 5, 3),
    ('Air Force 1 Utility', 'Utility-style Air Force 1 sneakers with extra features for durability.', 135, 'Air Force 1 Utility.png', 50, 1, 1),
    ('Air Jordan Retro Low', 'Low-top retro Air Jordan sneakers inspired by classic designs.', 145, 'Air Jordan Retro Low.jpg', 50, 2, 2),
    ('Downshifter Trail', 'Trail-ready version of the Downshifter running shoes for outdoor activities.', 120, 'Downshifter Trail.jpg', 50, 3, 3),
    ('Dunk SB', 'SB edition of the Dunk sneakers designed for skateboarding.', 130, 'Dunk SB.jpg', 50, 4, 1),
    ('Court Legacy', 'Heritage-inspired Court Legacy sneakers with a timeless look.', 105, 'Court Legacy.png', 50, 5, 2);
