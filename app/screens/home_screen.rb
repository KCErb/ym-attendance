class HomeScreen < PMListScreen
  uses_action_bar true, back: false
  stylesheet HomeScreenStylesheet
  title "YM Attendance"

  def table_data
    young_men = %w(AJ Cameron Dallin Drake Griffin Isaac Jacob Jarom Lance Max
                   Michael Nate Owen Riley Spencer Taylor)
    cells = young_men.map do |young_man|
      { title: young_man, action: :enter_number, arguments: { name: young_man } }
    end

    [{
      title: "Young Men",
      cells: cells
      }]
  end

  def enter_number(args, position)
    app.alert(title: "How many hours did you serve this week?", style: :input) do |choice, input_text|
      if choice == 'OK'
        mp "#{args[:name]} served for #{input_text} hours"
      else
        mp "Pressed Cancel"
      end
    end
  end

  def on_load
    mp "HomeScreen on_load"
  end
end
