include_attribute "nodejs"

default[:cloudfoundry_dea][:runtimes][:node06][:name]         = "node06"
default[:cloudfoundry_dea][:runtimes][:node06][:cookbook]     = "cloudfoundry-node-runtime"
default[:cloudfoundry_dea][:runtimes][:node06][:executable]   = "#{node.nodejs.dir}/bin/node"
default[:cloudfoundry_dea][:runtimes][:node06][:version]      = node.nodejs.version
default[:cloudfoundry_dea][:runtimes][:node06][:version_flag] = "-v"

default[:cloudfoundry_dea][:runtimes][:node06][:debug_env][:run]     = 'NODE_ARGS="--debug=$VCAP_DEBUG_PORT"'
default[:cloudfoundry_dea][:runtimes][:node06][:debug_env][:suspend] = 'NODE_ARGS="--debug-brk=$VCAP_DEBUG_PORT"'

default[:cloudfoundry_cloud_controller][:server][:frameworks][:node06][:cookbook] = "cloudfoundry-node-runtime::framework"
