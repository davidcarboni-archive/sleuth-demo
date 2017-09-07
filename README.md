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

 * https://github.com/rosgovuk/sleuth-a
 * https://github.com/rosgovuk/sleuth-b
 * https://github.com/rosgovuk/sleuth-c
 * https://github.com/rosgovuk/sleuth-d

## Deployments

Please feel free to request access to the Heroku apps and Logentries add-on below.

These components are deployed to Heroku as follows:

 * http://sleuth-a.ros.9ov.uk
 * http://sleuth-b.ros.9ov.uk
 * http://sleuth-c.ros.9ov.uk
 * http://sleuth-d.ros.9ov.uk

## Log aggregation

Logs from these four components on Heroku are aggregated to Logentries, enabling messages relating to a trace to be found as a group.

Logentries is configured as a Heroku add-on to the [sleuth-a](https://dashboard.heroku.com/apps/sleuth-a) app, with each of the others having a "drain" configured to send logs to the same Logentries instance.

It's also possible to tail the individual Heroku logs and watch the interaction:

    heroku logs -t --app sleuth-a
    heroku logs -t --app sleuth-b
    heroku logs -t --app sleuth-c
    heroku logs -t --app sleuth-d


