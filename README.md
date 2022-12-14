### SCC Frontend Task
#### Dependencies for this application

* Ruby version:- 2.5.1

* Rails version:- 6.0.5

```ruby
  bundle install && rails db:create && rails s
```
> You can open localhost:3000 Or 127.0.0.1:3000

#### Background

One of the projects our team is developing is [RMT](https://github.com/SUSE/rmt). 
It's a tool that allows to mirror SUSE products and their repositories in a private network.
Usually SUSE client systems register their products directly with scc.suse.com, but in many 
customer scenarios it's not possible for clients to reach the internet, hence we offer 
RMT as an on-site proxy to be used as registration host and repository mirror. 

The [SLE RMT Book](https://documentation.suse.com/sles/15-SP2/html/SLES-all/book-rmt.html) 
contains the end-user documentation for RMT. 
RMT gets configured with `rmt-cli`, it's manual is located in the file [MANUAL.md]([MANUAL.md](https://github.com/SUSE/rmt/blob/master/MANUAL.md)).

#### Task

Build a simple standalone `index.html` page, with the following features:

* Show a short summary about what RMT is and how clients can use the proxy.
* Provide an overview of the available products and their repositories on this RMT (by loading and rendering the content of the `.json` file below)
* You can use https://eosdesignsystem.herokuapp.com or https://registry.suse.com as a guide, but feel free to layout the page as you want.

#### Solution
###### Overview
* 1st i create one fixed header with suse logo.
* Then i create a section with left side bar fixed, where I mention section link. If we click those link then we can able to jump intp to those sections.
* 1st section i mentioned the overview of RMT (Repository Mirroring Tool). 
* 2nd section is all about the configuring clients to use RMT.
* 3rd section is all about the Products and if you click Repositories button then you can able to see all the respected repositories available for that particluar product

#### Design thinking

I thought i can do this task by using HTMl, CSS AND JS. so i made all the things in one HTML Page, even i put all css and js in it. But when i was fetching the data from i got 

```javascript
Access to fetch at 'file:///Users/sambitkumar/Documents/Ruby-codes/Suse-task/product.json' from origin 'null' has been blocked by CORS policy: Cross origin requests are only supported for protocol schemes: http, data, chrome, chrome-extension, brave, chrome-untrusted, https.
product.json:1          
Failed to load resource: net::ERR_FAILED
```
so i got an idea , you want only index.html page so i create one rails application with only one ccontroller and view and i make that **index.html.erb** as a root page. before this approach i was thinking i can create one partial for repositories and show all the lists in one index page. when i cick that particular product i can route to another page where i can render that repositories ( classic ecommerce page design). but this will violate the task you gave me so i follow the modal pop-up approach.

#### Future scope for improvement

* Right now the time complexity of that page will be O(n^2) as i use 2 loop to list out the repositories, so i will try to optimize the time.
* There is some place where i use same code (HTML & CSS) repeatedly. so for css i will create some class or id on that. for HTML i will create some partial then i can render this in html. (p.s:- If i am using rails, then i should definitely use this technique. cuz ruby is fun).
* I will definitely want to do this project on some js framework ( Angular or react).
* I thought of creating this application using ** skip-active-record **. so my main thought was to not using any db related stuff, so i will definitely implement this.
* Need to improve the design of the page. 

#### Snapshots
<img width="1433" alt="Screenshot 2022-10-09 at 4 30 37 PM" src="https://user-images.githubusercontent.com/47233211/194753398-9ae10225-bf3e-460b-9698-d15373c40c20.png">
<img width="1433" alt="Screenshot 2022-10-09 at 4 30 52 PM" src="https://user-images.githubusercontent.com/47233211/194753411-dd752380-191a-4fec-bdb1-8bcbc443f210.png">
<img width="1433" alt="Screenshot 2022-10-09 at 4 31 11 PM" src="https://user-images.githubusercontent.com/47233211/194753419-6dbbbb76-e925-4b7b-bc31-86bbd263ba29.png">
<img width="1433" alt="Screenshot 2022-10-09 at 4 31 19 PM" src="https://user-images.githubusercontent.com/47233211/194753422-02ed6b28-07ac-46b3-9403-f9291a898071.png">


