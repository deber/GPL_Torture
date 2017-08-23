# Build / Run / Everything

Install `stack` and then :

```
stack build

# create 10000 copies of the GPL-3 inside /tmp/output
stack exec -- Torture1 --outputDirectory /tmp/output --inputFilename ../frontend/src/gpl-3.0.txt --nFiles 10000

# For each file in /tmp/output, create an html file in /tmp/outputHTML with correct linking
# Also create /tmp/outputHTML/index.html
stack exec -- Torture2 --inputDirectory /tmp/output --outputDirectory /tmp/outputHTML/
```

Timing are exagerated because of the overhead due to stack looking for
executable. To get a really accurate timer, localize the executable
inside the `.stack` directory (watch output of `stack build`) and run
it directly.

# Notes

The index and pagination uses the existing files in numerical order. It means that if your directory only contains page 1, 5, and 8, the next and previous of 5 are respectively 8 and 1.