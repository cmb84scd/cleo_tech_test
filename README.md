## Cleo Tech Test

This is my Cleo tech test. I chose to do option 2 which allowed me 4-5 hours to complete it. I completed it in about 4 hours but with planning it was closer to 5 hours. I didn't actually have a timer running but tried to make note of what time I started, what time I finished, what breaks I took etc, hence why I can't say to the minute how long I actually took but the times above are an accurate reflection of the time it took me.

It is a vending machine and apart from buying products, you can also add products and money if/when required. To use, please clone and do the following:
```
- bundle install
- rspec # to see that all tests are passing
- rubocop # to see that it is linted
```
nb: when running the tests please use the following input: <br>
`crisps, 20, 20, chocolate, 50` <br>
to ensure the tests pass.

When using in irb, please require all 3 files in lib/ first. Then create instances of the product and money classes before creating an instance of the vending machine class. Examples as follows:
```
product = Product.new({crisps: 40})
money = Money.new({10 => 10, 20 => 10, 50 => 10})
vendor = VendingMachine.new(product, money)
```

### My Approach

I started off by doing some planning which included some user stories and domain model diagrams. You can find both of these further down this README. I worked through the requirements in order and my aim was to keep things as simple as possible. To start with I had a hard coded product array in the VendingMachine class as I knew I would be adding other classes later and I just wanted to have something I could use while building up the VendingMachine class. At this stage I also just had a simple message stating what change you would receive if required. Once the first two requirements were complete, I then did some more user stories and domain model diagrams before moving onto the product and money classes. I built these up simultaneously as both classes have identical functionality of storing products/moeny and being able to add products/money. The issues and blockers I had were around testing. I knew what code I needed but testing some aspects caused me problems. The biggest blocker was when I was building up the `vend` method. This was when I discovered I had to break down the inserting coins functionality into 2 methods and I ended up deleting some of my tests as they weren't actually needed plus they were causing me unnecessary problems. It was really pleasing and helpful once I'd sorted all this as in doing so I then knew how to do the giving change functionality. Once I'd done the product and money classes I just had to add in a few lines of code so that the products and money could be tracked. In doing the product and money classes, I had a problem getting my doubles to work as both classes required initializing. After trying a few things without success and conscious of time, I opted for creating an instance of each. This worked and it didn't take long to add the tracking functionality.

Overall, I'm pleased with this tech test and I have learnt a lot from doing it. I also enjoyed it and despite getting bloacked a few times, I found it fun to do. If I had more time, I would start to do some of the edge cases such as no products to vend, not enough money to give the right change.

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
| | view_coins|
| | select_product |
| | insert_money |
| | check_amount |
| | change_required |
| | vend |
| | product_price |
| Product | add |
| Coins | add |
