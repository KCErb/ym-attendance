# -*- coding: utf-8 -*-
$:.unshift("/Library/RubyMotion/lib")
require 'motion/project/template/android'
require_relative 'tasks/swissdb'

require 'bundler'
Bundler.require

Motion::Project::App.setup do |app|
  # Use `rake config' to see complete project settings.

  app.api_version = "16"
  app.target_api_version = "16"

  # Default build ONLY for Genymotion Emulator
  app.archs = ["x86"] unless ARGV.include?("device") || ARGV.include?("archive")

  app.name = "YM Attendance"
  app.package = "com.your_company.attendance"
  app.theme = "@android:style/Theme.Holo.Light"
  #app.permissions = [:internet, :access_network_state, :access_coarse_location, :access_fine_location, :write_external_storage]
  app.icon = 'ic_launcher'

  # "Version name" is for people - "version code" must always be a higher number in Google Play (tied to git builds)
  app.version_name = "0.0.1"
  app.version_code = (`git rev-list HEAD --count`.strip.to_i).to_s

  app.application_class = "BluePotionApplication"
  app.main_activity = "PMHomeActivity"
  app.sub_activities += %w(PMSingleFragmentActivity PMNavigationActivity)

  app.gradle do
    # Google's networking API for Android
    dependency "com.mcxiaoke.volley", :artifact => "library", :version => "1.0.10"
  end

end
