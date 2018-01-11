# pre-commit-hooks-easybuild

A simple pre-commit hook for easybuild

This hook uses [http://pre-commit.com/](http://pre-commit.com/)

See [http://pre-commit.com/hooks.html](http://pre-commit.com/hooks.html) for more examples

## check-old-easybuild-url

Review that the url of the old easybuild git repo is not used

Example output when doing a commit in the [easyconfigs](https://github.com/easybuilders/easybuild-easyconfigs) repository:

```
git commit -a
[check-old-easybuild-url] Search the old easybuild repo url.......................Failed
hookid: check-old-easybuild-url

found old url https://github.com/hpcugent/easybuild in easybuild/easyconfigs/z/ZORRO/ZORRO-1.0.0-goolf-1.7.20.eb
Please replace it with the new url https://github.com/easybuilders
```

## how to use it

First install [pre-commit](http://pre-commit.com/) using pip or inside a virtualenv or in your home folder as described
in the [official docs](http://pre-commit.com/#install)

Then you can add a `.pre-commit-config.yaml` to your repository root folder:

```
repos:
  - repo: https://github.com/pescobar/pre-commit-hooks-easybuild
    sha: master
    hooks:
      - id: check-old-easybuild-url
```

Now you can install the hooks doing `pre-commit install`
