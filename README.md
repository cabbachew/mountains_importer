# README

In this project, I coded along with [a tutorial by Deanin](https://youtu.be/zZAyXfnIkRM) to import a CSV that I generated with a webscraper.

The input data contained romanized names of 100 mountains in South Korea along with their elevation in meters:

|     name    |    height   |
| ----------- |:-----------:|
| Garisan     | 1050.9      |
| Gariwangsan | 1561.9      |
| Gayasan     | 1432.6      |
| ...         | ...         |

This was my first time creating a Rails app with esbuild and Bootstrap.

I'm unfamiliar with how to work with charts to present data in a wide range of ways, but that is something I would like to practice.

From the current iteration, I would like to implement the following:

- [ ] Modify bar chart to display number of mountains per region
- [ ] Make the chart more visually appealing
- [ ] Sort mountains not just alphabetically but by elevation, region
- [ ] Create a landing page with selectable regions on a map
- [ ] Use APIs to fetch data for a mountain, e.g., weather, tagged photos, etc.