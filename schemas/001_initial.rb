schema "001" do

    entity "youngMan" do
      integer   :id
      string    :name
      datetime  :created_at
      datetime  :updated_at
    end

    entity "serviceHour" do
      integer   :id
      integer   :value
      integer   :young_man_id
      datetime  :created_at
      datetime  :updated_at
    end

end
