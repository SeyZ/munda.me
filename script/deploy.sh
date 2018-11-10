 #!/bin/bash
 JEKYLL_ENV=production bundle exec jekyll build
 git push origin :gh-pages
 git subtree push --prefix _site origin gh-pages
