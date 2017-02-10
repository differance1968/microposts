class AddRetweetMicropostToMicroposts < ActiveRecord::Migration
  def change
    add_reference :microposts, :retweet_micropost, index: true
  end
end
