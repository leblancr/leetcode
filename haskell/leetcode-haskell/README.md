# leetcode-haskell

setup:
stack new leetcode-haskell

Note: The following parameters were needed by the template but not provided: author-email,
      author-name, category, copyright and github-username.

      You can provide them in Stack's global YAML configuration file (/home/rich/.stack/config.yaml)
      like this:

      templates:
        params:
          author-email: value
          author-name: value
          category: value
          copyright: value
          github-username: value

      Or you can pass each one on the command line as parameters like this:

      stack new leetcode-haskell new-template -p "author-email:value" -p "author-name:value" -p
      "category:value" -p "copyright:value" -p "github-username:value"

If the Welcome screen opens, press CtrlShift0A, type project from existing sources, 
and click the Import project from existing sources action in the popup.
Otherwise, go to File | New | Project from Existing Sources in the main menu.

Dependencies need to be added to package.yaml

using stack build
Added to stack.yaml:
extra-deps:
- scotty-0.21@sha256:d17f6aa30fc4763670922b3e554db35858b9f7aa9c19937c47568480c4d1e031,5948
- text-2.0.1@sha256:bb92fe1c491ebbdc5cebdaa7efc34b7b9b48b6b2011d82e95d270430d4077806,9595
- Cabal-3.10.2.1@sha256:0f7cc73c7c0c18464ce249c97267a5188d796690a926d73b6e084a4612a66e32,12693
- Cabal-syntax-3.10.2.0@sha256:b2235bd61763a826259805a34ba3538888fe06850fc6bc1712e625baedf07c16,7675
- parsec-3.1.17.0@sha256:6cf18e59d9f1c5b40385457b82ab679dc18d3c5bd3c2c67b2f94e1e8732e6624,5119

