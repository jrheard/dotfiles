{:user {:dependencies [
                       ;[io.aviso/pretty "0.1.34"]
                  [pjstadig/humane-test-output "0.8.3"]
                       [binaryage/devtools "0.9.7"]]
        ;:injections [(require 'pjstadig.humane-test-output)
                     ;(pjstadig.humane-test-output/activate!)]
        :test-refresh {:quiet true :changes-only true}
        :plugins [
                  [lein-ancient "0.6.10"]
                  [com.jakemccrary/lein-test-refresh "0.22.0"]
                  [venantius/ultra "0.5.2"]

                  ;[lein-bikeshed "0.3.0"]
                  ;[lein-codox "0.10.0"]
                  ;[lein-marginalia "0.9.0"]
                  [lein-kibit "0.1.2"]
                  ;[io.aviso/pretty "0.1.30"]
                  [mvxcvi/whidbey "1.3.0"]
                  ;[lein-cljfmt "0.4.1"]
                  ;[jonase/eastwood "0.2.3"]
                  ;[lein-kibit "0.1.2"]
                  ]}}
