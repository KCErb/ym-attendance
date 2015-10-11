class BluePotionApplication < PMApplication

  home_screen HomeScreen

  def on_load
  end

  def on_create
    DataStore.context = self
  end
end
