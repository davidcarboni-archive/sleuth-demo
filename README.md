# Distributed tracing

This repo is aimed at demonstrating Spring Cloud Sleuth, Python 3 and Python 2 applications working together as part of a B3 distributed trace. 

## Components

There are four components involved in the trace:

    A
    |
    B
    |\
    C D

 * A(Python 3) calls B(Java)
 * B(Java) calls C(Python 2)
 * B(Java) calls D(Java)

The aim is to demonstrate Spring and Python 2/3 working together via B3 headers, and to demonstrate single and multiple downstream service calls.

## Repositories

Repos for the components can be found at:

 * https://github.com/davidcarboni/sleuth-a
 * https://github.com/davidcarboni/sleuth-b
 * https://github.com/davidcarboni/sleuth-c
 * https://github.com/davidcarboni/sleuth-d

## Deployments

These components are deployed to Heroku as follows:

 * https://sleuth-a.herokuapp.com
 * https://sleuth-b.herokuapp.com
 * https://sleuth-c.herokuapp.com
 * https://sleuth-d.herokuapp.com

## Log aggregation

Logs from these four components on Heroku are aggregated to Logentries, enabling messages relating to a trace to be found as a group.

It's also possible to tail the individual Heroku logs and watch the interaction:

    heroku logs -t --app sleuth-a
    heroku logs -t --app sleuth-b
    heroku logs -t --app sleuth-c
    heroku logs -t --app sleuth-d


