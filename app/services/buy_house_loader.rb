require "csv"
require "yaml"

class BuyHouseLoader
  def self.load
    CSV.foreach("db/seeds/buy_house.csv", headers: true) do |row|
      attributes = row.to_h.slice("name", "strong_point", "prefecture_id", "price", "zip_code", "address", "access", "hours", "age", "madori", "land_area", "house_area", "built_time", "notes", "recommendation", "shop_id", "source")
      buy_house = BuyHouse.where(name: row["name"]).first_or_create(attributes)
      if row["image_url1"].present?
        buy_house.buy_house_images.create(buy_house_image_url: row["image_url1"])
      end
      sleep 2
      if row["image_url2"].present?
        buy_house.buy_house_images.create(buy_house_image_url: row["image_url2"])
      end
      sleep 2
      if row["image_url3"].present?
        buy_house.buy_house_images.create(buy_house_image_url: row["image_url3"])
      end
      sleep 2
      if row["image_url4"].present?
        buy_house.buy_house_images.create(buy_house_image_url: row["image_url4"])
      end
      sleep 2
    end  
  end
end