" optionally u can give a base class name 
:function GenException(exception_class, ...)
:let topindent="    "
:let indent="        "
:if a:0 == 1
:let base_class=a:1
:else
:let base_class="DHException"
:endif
:let str = topindent . "class " . a:exception_class .":public ".base_class." {"
:call append(line('.'), str)
:let str = topindent . "public: "
:call append(line('.')+1, str)
:let str = indent . a:exception_class . "() {}"
:call append(line('.')+2, str)
:let str = indent . a:exception_class . "(const std::string& msg):".base_class."(msg) {}"
:call append(line('.')+3, str)
:let str = indent . a:exception_class . "(const std::exception& cause):".base_class."(cause) {}"
:call append(line('.')+4, str)
:let str = indent . a:exception_class . "(const std::string& msg, const std::exception& cause):".base_class."(msg, cause) {}"
:call append(line('.')+5, str)
:let str = topindent . "};"
:call append(line('.')+6, str)
:call append(line('.')+7, "")
:endfunction

:function GenMultipleExceptions(base_exception, ...)
:let cnt=a:0
:while cnt > 0
:call GenException(a:{cnt}, a:base_exception)
:let cnt = cnt - 1
:endwhile
:if a:base_exception!="DHException"
:call GenException(a:base_exception)
:endif
:endfunction
