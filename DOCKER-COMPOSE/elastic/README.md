### Note

* 首先必须在宿主机上执行 `sudo sysctl -w vm.max_map_count=262144`。不妨将这条指令加入`/etc/rc.local`
* 访问kibana或者es需要使用HttpBasic验证
    * `elastic:elastic`
