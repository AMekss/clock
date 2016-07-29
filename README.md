## Clock - full stack implementation

This project shows the way to implement web applications in modular way where front end is not tightly coupled to the back end. Used stack is as follows:

* Simple Sinatra app for content delivery (API and assets)
* Json-schemas for API [documentation](https://github.com/AMekss/clock/blob/master/docs/schema.md) and validation in specs
* Webpack for assets (currently js only)

### How to install

**Note:** Node.js and Ruby (bundler) needs to be available in host environment in order to run and develop this project

Run following command from the root of the project

````
$ ./scripts/build
````

### How to run

Run following command from the root of the project

````
$ rackup -p 5000
````

Then visit:

http://127.0.0.1:5000/canvas_clock.html or http://127.0.0.1:5000/css_clock.html


### Development

You might want to run `npm run dev` for hot asset recompilation in development mode and `./scripts/build_schema` for json-schema and documentation build form the definitions in `docs/sechemata/**.yml`

### ToDo next

* Setup Travis CI
* Setup CodeClimate
* Other assets via Webpack
* Front end vendor dependency management via Bower
* Front end testing via jasmine and running via CI
