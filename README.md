<pre>
               _____ _     _             _____                     
              / ____| |   (_)           |  __ \                    
             | (___ | |__  _ _ __  _   _| |__) | __ _____  ___   _ 
              \___ \| '_ \| | '_ \| | | |  ___/ '__/ _ \ \/ / | | |
              ____) | | | | | | | | |_| | |   | | | (_) >  <| |_| |
             |_____/|_| |_|_|_| |_|\__, |_|   |_|  \___/_/\_\\__, |
                                    __/ |                     __/ |
                                   |___/                     |___/ 

</pre>

# ShinyProxy

Open Source Enterprise Deployment for Shiny Apps
Learn more at https://shinyproxy.io

This repositoriy has been forked to make it compatible with Saagie Apps (Shiny applications are arleady deployed on Saagie and do not need to be spinned up by ShinyProxy)

## Building from source

Clone this repository and run

```
mvn -U clean install
```

The build will result in a single `.jar` file that is made available in the `target` directory.

## Running the application on Saagie

In order to run it, you must specifiy through an environment variable `SHINYPROXY_CONF_URL` where your application.yml configuration file is stored (can be either WebHDFS or S3). Examples  : 
* `export SHINYPROXY_CONF_URL=http://<your hdfs namenode url>:50070/webhdfs/v1/path/to/application.yml?op=OPEN&user.name=my.username`
* `export SHINYPROXY_CONF_URL=s3://path/to/application.yml`

When deploying ShinyProxy as a Saagie App, you must then specifiy an exposed port :
* Port : 8080
* BASE_PATH_VAR : SAAGIE_BASE_PATH
* REWRITE URL : No rewrite


## Further information

https://shinyproxy.io

