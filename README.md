This is how I reproduced the issue.

Install this thor bundle like

    thor install ~/dev/thor-issues --force --as=demo

Then find the md5 hash by running

    cat ~/.thor/thor.yml

e.g. my md5 hash is 87c114a336833de7fc1bacbb70f2d6d3

		$ ls ~/.thor/87c114a336833de7fc1bacbb70f2d6d3/
		./		../		.git/		README.md	github.rb	main.thor	project.rb

Now run the install again

    thor install ~/dev/thor-issues --force --as=demo

Next run the ls again, the md5 hash will be the same.

		./		../		.git/		README.md	github.rb	main.thor	project.rb	thor-issues/

There's the issue. Noticed how "thor-issues" directory is inside the installed md5 hash dir.