# Boris Bikes

## Name of sub-modules

## Description of project

This project emulates a Boris Bike system. We have attempted to implement the system in a TDD basis using BDD principles.

## How its used

## Getting started

* git clone https://github.com/Leigan0/boris_bikes
* bundle TBC

## Running tests
* rspec
* test command - TBC

## Copyright and licensing information

## Instructions docs / install / grab latest code & build

* cd boris_bikes
* To create a station - station = DockingStation.new
* To create bike - bike = Bike.new
* To release a bike - station.release_bike
* To dock a bike - station.dock(bike)

## List of authors
* Leigh-Ann Gant
* Ed Goold
* Jennifer Shepherd

## Instructions to submit bugs / feature requests / join the user / join mailing list etc / community etc

## Known bugs / troubleshooting

## Other contact information

## Legal notices

## User stories
As a person,
So that I can use a bike,
I'd like to get a bike from a docking station.

As a person,
So that I can use a good bike,
I'd like to see if a bike is working

As a member of the public
So I can return bikes I've hired
I want to dock my bike at the docking station

As a member of the public
So I can decide whether to use the docking station
I want to see a bike that has been docked

As a member of the public,
So that I am not confused and charged unnecessarily,
I'd like docking stations not to release bikes when there are none available.

As a maintainer of the system,
So that I can control the distribution of bikes,
I'd like docking stations not to accept more bikes than their capacity.

As a system maintainer,
So that I can plan the distribution of bikes,
I want a docking station to have a default capacity of 20 bikes.


## Domain model
![Alt text](img/domain_model.jpg)
