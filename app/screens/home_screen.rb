class HomeScreen < PMListScreen
  uses_action_bar true, back: false
  stylesheet HomeScreenStylesheet
  title "YM Attendance"

  def table_data
    young_men = YoungMan.all.to_a
    cells = young_men.map do |young_man|
      { title: young_man.name, action: :enter_number, arguments: { young_man: young_man } }
    end

    cells << { title: '+ Add', action: :create_young_man }

    [{
      title: "Young Men",
      cells: cells
      }]
  end

  def enter_number(args, position)
    show_keyboard
    app.alert(title: "How many hours did you serve this week?", style: :input, type: 'TYPE_CLASS_NUMBER') do |choice, number|
      if choice == 'OK'
        young_man_id = args[:young_man].id
        next_id = ServiceHour.all.to_a == [] ? 0 : ServiceHour.last.id + 1
        ServiceHour.create( id: next_id, value: number.to_f, young_man_id: young_man_id, created_at: Time.now )
      end
    end
  end

  def create_young_man(args, position)
    show_keyboard
    app.alert(title: "What's your name?", style: :input) do |choice, input_text|
      if choice == 'OK'
        next_id = YoungMan.all.to_a == [] ? 0 : YoungMan.last.id + 1
        ym = YoungMan.create( id: next_id, name: input_text, created_at: Time.now )
        update_table_data
      end
    end
  end

  def on_load
    mp "HomeScreen on_load"
  end
end
