# 1757. Recyclable and Low Fat Products
# Write your MySQL query statement below
SELECT product_id 
    FROM products 
    WHERE low_fats='y' AND recyclable='y'
