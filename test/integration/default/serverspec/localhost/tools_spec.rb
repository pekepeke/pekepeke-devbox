require 'spec_helper'

packages = %w[
  vim-nox
  git
  mercurial
  bzr
  curl
  zsh
  tmux
  tig
  editorconfig
  jq
  unar
  silversearcher-ag
  exuberant-ctags
  trash-cli
  openjdk-8-jdk
  ruby2.0-dev
  python3-dev
  python-dev
  nodejs-dev
  golang
  php5
].each {|package|
  describe package('httpd'), :if => os[:family] == 'redhat' do
    it { should be_installed }
  end

  describe package('apache2'), :if => os[:family] == 'ubuntu' do
    it { should be_installed }
  end
}

