## Cleo Tech Test

This is my Cleo tech test.

### My Approach

### Requirements

- Once an item is selected and the appropriate amount of money is inserted,
the vending machine should return the correct product
- It should also return change if too much money is provided, or ask for more
money if insufficient funds have been inserted
- The machine should take an initial load of products and change. The change
will be of denominations 1p, 2p, 5p, 10p, 20p, 50p, £1, £2
- There should be a way of reloading either products or change at a later point
- The machine should keep track of the products and change that it contains

### User Stories
```
As a user
I would like to buy a product
by selecting it and inserting money
```
```
As a user
I would like to know if I need to insert more money
and to receive change if I insert too much
```
```
As a vendor
I would like to initialize the vending machine
with products and coins
```
```
As a vendor
I would like to be able to reload the machine
with products and coins as required
```
```
As a vendor
I would like the machine to keep track
of what products and coins it holds
```

### Diagrams
##### Domain model
| Objects | Messages |
| ---|--- |
| VendingMachine | view_products |
| | select_product |
| | insert_money |
| | vend |
| Product | add |
| Coins | add |
