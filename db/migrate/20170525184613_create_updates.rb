class CreateUpdates < ActiveRecord::Migration[5.1]
  def change
    create_table :updates do |t|
      t.string :user_handle
      t.string :message      
      t.integer :followers
      t.decimal :sentiment
      t.timestamps
    end
  end
end


# [{"created_at":"2012-09-27T16:16:46Z","followers":23,"id":11,"message":"Urgh - coke!","sentiment":-0.7,"updated_at":"2012-09-27T16:16:46Z","user_handle":"@coke_h8r"},
#  {"created_at":"2012-09-27T16:18:09Z","followers":3,"id":13,"message":"I've got to say - Pepsi max is great!","sentiment":0.9,"updated_at":"2012-09-27T16:18:09Z","user_handle":"@tasteless"},
#  {"created_at":"2012-09-27T16:18:50Z","followers":245,"id":14,"message":"Coke coke coke coke coke!!!!","sentiment":0.4,"updated_at":"2012-09-27T16:18:50Z","user_handle":"@coke_snortr"},
#  {"created_at":"2012-12-07T16:55:45Z","followers":3,"id":16,"message":"Hi there","sentiment":0.0,"updated_at":"2012-12-07T16:55:45Z","user_handle":"@idiot"},
#  {"created_at":"2012-09-27T16:17:21Z","followers":19,"id":12,"message":"Pepsi is the new coke","sentiment":0.0,"updated_at":"2012-09-27T16:17:21Z","user_handle":"@pepsi"},
#  {"created_at":"2012-09-27T16:15:06Z","followers":5,"id":8,"message":"Tweet me your fav drinks #drinks","sentiment":0.0,"updated_at":"2012-09-27T16:15:06Z","user_handle":"@drinkies"},
#  {"created_at":"2012-09-27T16:12:31Z","followers":12,"id":5,"message":"I don't like pepsi.  I prefer #coke","sentiment":-0.1,"updated_at":"2012-09-27T16:12:31Z","user_handle":"@kevin"},
#  {"created_at":"2012-09-27T16:11:44Z","followers":345,"id":4,"message":"Who likes coca-cola?","sentiment":0.0,"updated_at":"2012-09-27T16:11:44Z","user_handle":"@questionnr"}]