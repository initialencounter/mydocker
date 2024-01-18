获取所有仓库列表：
```bash
curl -X GET http://your-registry-url/v2/_catalog
```
将your-registry-url替换为实际的Docker Registry地址。此命令将返回一个JSON响应，其中包含所有仓库的列表。

获取特定仓库的所有标签列表：
```bash
curl -X GET http://your-registry-url/v2/<repository-name>/tags/list
```
将your-registry-url替换为实际的Docker Registry地址，<repository-name>替换为实际的仓库名称。这个命令将返回一个JSON响应，其中包含指定仓库的所有标签列表。