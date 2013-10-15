# Getting Started

```sh
git clone https://github.com/jtarchie/lua-objc-test.git
cd lua-obc-test
brew install lua luarocks
luarocks install busted
clang -dynamiclib greeter.m -framework Cocoa -o libgreeter.dylib
busted greeter_spec.lua
```
