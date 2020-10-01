### Note

用户 | 密码       | 端口 (宿主) |
----|------------|------------|
admin | admin123 | 8081       |

* 数据目录`nexus-data`必须预先创建。 
    * `mkdir ./nexus-data`
    * `chown -R 200 ./nexus-data`
* 如果需要更改默认密码，在登录到[web页面](http://localhost:8081)后可自行修改

### 配置参考:

~/.m2/settings.xml

```xml
<settings xmlns="http://maven.apache.org/SETTINGS/1.0.0"
          xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
          xsi:schemaLocation="http://maven.apache.org/SETTINGS/1.0.0
                          https://maven.apache.org/xsd/settings-1.0.0.xsd">

    <servers>
        <server>
            <id>mirai-releases</id>
            <username>admin</username>
            <password>admin</password>
        </server>
        <server>
            <id>mirai-snapshots</id>
            <username>admin</username>
            <password>admin</password>
        </server>
    </servers>

    <mirrors>
        <mirror>
            <id>mirai</id>
            <name>maven</name>
            <url>http://10.211.55.26:8081/repository/maven-public/</url>
            <mirrorOf>public</mirrorOf>
        </mirror>
        <mirror>
            <id>alimaven</id>
            <name>aliyun maven</name>
            <url>http://maven.aliyun.com/nexus/content/groups/public/</url>
            <mirrorOf>*,!public</mirrorOf>
        </mirror>
    </mirrors>

    <profiles>
        <profile>
            <id>default</id>
            <activation>
                <activeByDefault>true</activeByDefault>
            </activation>
            <repositories>
                <repository>
                    <id>public</id>
                    <name>x</name>
                    <url>http://10.211.55.26:8081/repository/maven-public/</url>
                    <releases>
                        <enabled>true</enabled>
                    </releases>
                    <snapshots>
                        <enabled>true</enabled>
                    </snapshots>
                </repository>
            </repositories>
            <pluginRepositories>
                <pluginRepository>
                    <id>public</id>
                    <name>x</name>
                    <url>http://10.211.55.26:8081/repository/maven-public/</url>
                    <releases>
                        <enabled>true</enabled>
                    </releases>
                    <snapshots>
                        <enabled>true</enabled>
                    </snapshots>
                </pluginRepository>
            </pluginRepositories>
        </profile>
    </profiles>

    <activeProfiles>
        <activeProfile>default</activeProfile>
    </activeProfiles>

</settings>
```

java-project.pom

```xml
    <!-- ... -->

    <distributionManagement>
        <repository>
            <id>mirai-releases</id>
            <name>Nexus Release Repository</name>
            <url>http://10.211.55.26:8081/repository/maven-releases/</url>
        </repository>
        <snapshotRepository>
            <id>mirai-snapshots</id>
            <name>Nexus Snapshot Repository</name>
            <url>http://10.211.55.26:8081/repository/maven-snapshots/</url>
        </snapshotRepository>
    </distributionManagement>
    
    <!-- ... -->
```
