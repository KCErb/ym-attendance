namespace :swissdb do
  desc "Pull the swissdb from the phone into a file called swissdb"
  task :pull do
    `adb -d shell "run-as com.your_company.attendance cat /data/data/com.your_company.attendance/databases/swissdb > /sdcard/swissdb"`

    `adb pull /sdcard/swissdb`
  end
end
