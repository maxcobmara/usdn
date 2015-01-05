class SdnsController < ApplicationController

  #include Sdn

  def run_sdn
    require 'nmap/program'
    nmap = Nmap::Program.find
    nmap.sudo_task(Nmap::Task.new { |nmap|
      nmap.syn_scan = true
      nmap.service_scan = true
      nmap.os_fingerprint = true
      nmap.xml = 'log/scan.xml'
      nmap.verbose = true

      nmap.ports = [20,21,22,23,25,80,110,443,512,522,8080,1080]
      nmap.targets = '192.168.0.*'
    })
  end

  def new
    require 'nmap/xml'

    @nmap_scan = Nmap::XML.new('log/scan.xml')

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @info }
    end
  end



end
