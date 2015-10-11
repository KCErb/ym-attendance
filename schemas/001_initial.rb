schema "001" do

    entity "young_man" do
      integer :id
      string   :name
      datetime  :created_at
      datetime  :updated_at
    end

    entity "service_hour" do
      integer :id
      float :value
      integer :young_man_id
      datetime  :created_at
      datetime  :updated_at
    end

end
