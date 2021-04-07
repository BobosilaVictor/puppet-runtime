platform "ubuntu-18.04-amd64" do |plat|
  plat.inherit_from_default

  packages = %w(
    libbz2-dev libreadline-dev libselinux1-dev openjdk-8-jre-headless pl-cmake
    pl-gcc swig systemtap-sdt-dev zlib1g-dev
  )

  plat.provision_with "apt-get install -qy --no-install-recommends #{packages.join(' ')}"
end
