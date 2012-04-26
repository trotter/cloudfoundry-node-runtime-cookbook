template File.join(node.cloudfoundry_common.staging_manifests_dir, "node.yml") do
  source "node.yml.erb"
  owner  node.cloudfoundry_common.user
  mode   "0644"
  variables(
    :node_runtime => node.cloudfoundry_dea.runtimes.node06
  )
end
