# ESM 263—Winter 2023
**CONTENTS**

- TOC
{:toc}
## Website

- `docs/`: published by [GitHub Pages](https://docs.github.com/en/pages) at https://niklasphabian.github.io/ESM_263_GIS
  - `assignment/`*`n`*`/`: resources for assignment *n*
    - `index.md`
    - `HW`*`n`*`.zip`: data files
      - NOTE: should be `.zip`, so QGIS can see inside…
    - feedback/: TA feedback
      - `index.md`
  - `general/`: miscellaneous stuff
  - `index.md`: home page
  - `week/`*`n`*`/`: resources for week *n* lecture/lab
    - `index.md`

## Additional URLs

- data files too big for GitHub: [Box](https://ucsb.app.box.com/folder/186707554033?s=g50uv6oely7rntr0f64l4fepdd9aovkm)
- [Canvas](https://ucsb.instructure.com/courses/3096)

## Cut videos
ffmpeg -i gazinga.mp4 -ss 10:38 -to 2:00:23 -c copy gazouta.mp4

## Run/build
```bash
sudo apt install ruby-full build-essential

PACKAGES="$(dpkg -l |grep jekyll|cut -d" " -f3|xargs )"
sudo apt remove --purge $PACKAGES 
sudo apt autoremove

gem install bundle
#gem install jekyll bundler colorator forwardable-extended jekyll-watch

cd  docs/
bundle init
bundle add github-pages

bundle add webrick
bundle add jekyll
bundle add jekyll-feed
#bundle add rdiscount
#bundle add minima
bundle install
```

The gemfile should look like:
```
source "https://rubygems.org"
gem "jekyll", "~> 3.9.0"
gem "minima", "~> 2.5"
group :jekyll_plugins do
  gem "jekyll-feed", "~> 0.12"
end
gem "github-pages", "~> 209", group: :jekyll_plugins
gem 'rdiscount'
```

The `_config.yml` should only contain the title



```
bundle exec jekyll serve 
```
