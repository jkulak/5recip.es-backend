Recipes data base with a RESTful API 
===============

## API

### Examples

Taxonomy terms

* /taxonomy_term/31.json
* /taxonomy_term.json

Nodes

* /node/850.json
* /node.json

## Running your app

In 'server' directory do:

1. $ vagrant up
2. $ ./../dev/copy-public-key.sh
3. $ knife solo bootstrap vagrant@13.13.13.13
4. $ vagrant ssh

## Drupal

* login: admin
* pass: test standard

## Project

- [x] Create cool app
- [x] Move all environment elements to recipes
- [x] Database import from sql dump
- [ ] Move community recipes to Berkshelf
- [ ] Create vhosts using providers form apache2 recipe