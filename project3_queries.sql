-- ====================================================================
-- DecodeLabs Data Analytics Internship
-- Project 3: SQL Data Analysis Milestone
-- Dataset: E-commerce Order Records
-- ====================================================================

-- 1. Table Structure (Database mein data load karne ke liye)
CREATE TABLE ecommerce_orders (
    OrderID VARCHAR(50) PRIMARY KEY,
    OrderDate DATE,
    CustomerID VARCHAR(50),
    Product VARCHAR(100),
    Quantity INT,
    UnitPrice DECIMAL(10, 2),
    ShippingAddress VARCHAR(255),
    PaymentMethod VARCHAR(50),
    OrderStatus VARCHAR(50),
    TrackingNumber VARCHAR(50),
    ItemsInCart INT,
    CouponCode VARCHAR(50),
    ReferralSource VARCHAR(50),
    TotalPrice DECIMAL(10, 2)
);


-- ====================================================================
-- CORE PROJECT REQUIREMENTS (MAIN QUERIES)
-- ====================================================================

-- Requirement 1: Basic Extraction & Row-Level Filtering (WHERE Clause)
-- Objective: Un high-value orders ko filter karna jinki Quantity 3 se zyada ho aur TotalPrice $500 se zyada ho.
SELECT 
    OrderID, 
    CustomerID, 
    Product, 
    Quantity, 
    TotalPrice, 
    OrderStatus
FROM 
    ecommerce_orders
WHERE 
    Quantity > 3 
    AND TotalPrice > 500.00
ORDER BY 
    TotalPrice DESC;


-- Requirement 2: Pattern Matching (LIKE Operator)
-- Objective: Un orders ko track karna jo 'WINTER' discount coupon code use kar rahe hain.
SELECT 
    OrderID, 
    CustomerID, 
    Product, 
    CouponCode, 
    TotalPrice
FROM 
    ecommerce_orders
WHERE 
    CouponCode LIKE 'WINTER%'
ORDER BY 
    OrderID;


-- Requirement 3: Categorical Bucketing & Aggregations (GROUP BY & Functions)
-- Objective: Har product category ka total business analyze karna (Total Orders, Total Units Sold, Average Price, aur Total Revenue).
SELECT 
    Product,
    COUNT(OrderID) AS TotalOrders,
    SUM(Quantity) AS TotalUnitsSold,
    ROUND(AVG(UnitPrice), 2) AS AverageUnitPrice,
    ROUND(SUM(TotalPrice), 2) AS TotalRevenue_Generated
FROM 
    ecommerce_orders
GROUP BY 
    Product
ORDER BY 
    TotalRevenue_Generated DESC;


-- Requirement 4: Operational Insights (Additional Analysis)
-- Objective: Payment methods ke hisab se orders ka breakdown dekhna.
SELECT 
    PaymentMethod,
    COUNT(OrderID) AS OrderCount,
    ROUND(SUM(TotalPrice), 2) AS RevenueByPayment
FROM 
    ecommerce_orders
GROUP BY 
    PaymentMethod
ORDER BY 
    OrderCount DESC;