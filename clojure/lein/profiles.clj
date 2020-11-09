{:repl {:plugins [;; When running an older version of CIDER (pre 0.18), use the
                  ;; version that best matches M-x cider-version. For versions since
                  ;; 0.18.0 use whatever version is the most recent.
                  [cider/cider-nrepl "0.21.1"]

                  ;; Only necessary when using clj-refactor
                  [refactor-nrepl "2.4.0"]

                  ;; Only necessary when using sayid
                  [com.billpiel/sayid "0.0.17"]]
        :dependencies [[nrepl "0.4.5"]]
        :repl-options {:nrepl-middleware [refactor-nrepl.middleware/wrap-refactor ;; clj-refactor
                                          com.billpiel.sayid.nrepl-middleware/wrap-sayid]}} ;; sayid

 :user {:plugins []
        :dependencies [[clj-kondo "2020.06.21"]]
        :injections []
        :aliases {"clj-kondo" ["run" "-m" "clj-kondo.main" "--lint" "src"]}
        ;; :ultra {:repl false}
        :repositories [["tencent" "https://mirrors.cloud.tencent.com/nexus/repository/maven-public"]]
        :plugin-repositories ^:replace [["tsing-clojars-pl" "https://mirrors.tuna.tsinghua.edu.cn/clojars"
                                         "hw-central-pl" "https://mirrors.huaweicloud.com/repository/maven/"]]
        :mirrors {"central" {:name "hw-central"
                             :url "https://mirrors.huaweicloud.com/repository/maven/"}
                  #"clojars" {:name "tsinghua-clojars"
                              :url "https://mirrors.tuna.tsinghua.edu.cn/clojars"}}}}
