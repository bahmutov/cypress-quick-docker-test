Experiment

Building and running Cypress

To build Docker image (which verifies and runs Cypress)

```
docker build -t experiment .
```

Should successfully pass test

```
Step 5/6 : RUN $(npm bin)/cypress verify
 ---> Running in 9439945e0984
It looks like this is your first time using Cypress: 1.4.1

[21:19:43]  Verifying Cypress can run /app/node_modules/cypress/dist/Cypress [started]
[21:19:45]  Verified Cypress!       /app/node_modules/cypress/dist/Cypress [title changed]
[21:19:45]  Verified Cypress!       /app/node_modules/cypress/dist/Cypress [completed]
Removing intermediate container 9439945e0984
 ---> 1562ba3f72f0
Step 6/6 : RUN $(npm bin)/cypress run
 ---> Running in 8d024af76554

Started video recording: /app/cypress/videos/lr0y7.mp4

  (Tests Starting)


  ✓ works

  1 passing (115ms)


  (Tests Finished)

  - Tests:           1
  - Passes:          1
  - Failures:        0
  - Pending:         0
  - Duration:        0 seconds
  - Screenshots:     0
  - Video Recorded:  true
  - Cypress Version: 1.4.1


  (Video)

  - Started processing:   Compressing to 32 CRF
  - Finished processing:  /app/cypress/videos/lr0y7.mp4 (0 seconds)


  (All Done)

Removing intermediate container 8d024af76554
 ---> b8be960fec18
Successfully built b8be960fec18
Successfully tagged experiment:latest
```
