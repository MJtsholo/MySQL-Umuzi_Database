'''1 open mysql connection in python'''
sudo /usr/bin/mysql -u root -p

'''2 Create a database called "umuzi"''' 
CREATE DATABASE IF NOT EXISTS umuzi;

'''3 Create the following tables 
customers, employees, orders, payments, products
Also create a primary key for each table with auto_increment'''

 customers | CREATE TABLE `customers` (
  `customerID` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `gender` varchar(30) NOT NULL,
  `address` varchar(100) DEFAULT NULL,
  `phone` int(10) unsigned DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`customerID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1 |

employees | CREATE TABLE `employees` (
  `employeeID` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `jobTitle` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`employeeID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 |

orders | CREATE TABLE `orders` (
  `orderID` int(11) NOT NULL AUTO_INCREMENT,
  `Order_s` date DEFAULT NULL,
  `DateRequired` date DEFAULT NULL,
  `DateShipped` date DEFAULT NULL,
  `Status` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`orderID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 |

payments | CREATE TABLE `payments` (
  `customerID` int(11) NOT NULL AUTO_INCREMENT,
  `PaymentDate` date DEFAULT NULL,
  `amount` decimal(7,2) DEFAULT NULL,
  PRIMARY KEY (`customerID`),
  CONSTRAINT `fk_customerID` FOREIGN KEY (`customerID`) REFERENCES `customers` (`customerID`) #Created a foreign key for the tables customers and payments.
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 |

 products | CREATE TABLE `products` (
  `productID` int(11) NOT NULL AUTO_INCREMENT,
  `productName` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `buyPrice` decimal(7,2) DEFAULT NULL,
  PRIMARY KEY (`productID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 |

'''Create the following queries for the tables.
1- Insert appropriate records in the tables.'''

Customers table:
INSERT INTO customers VALUES
(1, 'John', 'Hibert', 'Male', '284 chaucer st', 084789657, 'john@gmail.com','Johannesburg', 'South Africa');
INSERT INTO customers VALUES
(2, 'Thando', 'Sithole', 'Female', '240 Sect 1', 0794445584, 'thando@gmail.com','Cape Town', 'South Africa'),
(3, 'Leon', 'Glen', 'Male', '81 Everton Rd, Gillits', 0820832830, 'Leon@gmail.com','Durban', 'South Africa'),
(4, 'Charl', 'Muller', 'Male', '290A Dorset Ecke', 0856872553, 'Charl.muller@yahoo.com','Berlin', 'Germany'),
(5, 'Julia', 'Stein', 'Female', '2 Wernerring', 0867245058, 'Js234@yahoo.com','Frankfurt', 'Germany');

Employees table:
INSERT INTO employees VALUES
(1, 'Kani', 'Matthew', 'mat@gmail.com', 'Manager');
INSERT INTO employees VALUES
(2, 'Lesly', 'Cronje', 'LesC@gmail.com', 'Clerk'),
(3, 'Gideon', 'Maduku', 'm@gmail.com', 'Accountant');

Orders table:
INSERT INTO orders VALUES
(1, '2018-09-01', '2018-09-05', '2018-09-02', 'Not shipped');
INSERT INTO orders VALUES
(2, '2018-09-01', '2018-09-04', '2018-09-03', 'Shipped'),
(3, '2018-09-01', '2018-09-03', '2018-09-02', 'Not shipped');

Payments table:
INSERT INTO payments VALUES
(1, '2018-09-01', 100.00);
INSERT INTO payments VALUES
(2, '2018-09-01', 250.75);

Products table:
INSERT INTO products VALUES
(1, 'Harley Davidson Chopper', 'This replica features working kickstand, front suspension, gear-shift lever', 150.75);
INSERT INTO products VALUES
(2, 'Classic car', 'Turnable front wheels, steering function', 550.75)
(3, 'Sports car', 'Turnable front wheels, steering function', 700.60)



