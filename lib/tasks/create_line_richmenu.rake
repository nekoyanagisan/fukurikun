namespace :create_line_richmenu do
  desc "create_line_richmenu"
  task :create_richmenu => :environment do
    client = Line::Bot::Client.new{ |config|
      config.channel_secret = ENV['LINE_CHANNEL_SECRET']
      config.channel_token = ENV['LINE_CHANNEL_TOKEN']
    }

    rich_menu = {
      "size": {
        "width": 2500,
        "height": 1686
      },
      "selected": false,
      "name": "Nice richmenu",
      "chatBarText": "Tap to open",
      "areas": [
        {
          "bounds": {
            "x": 0,
            "y": 0,
            "width": 1250,
            "height": 1686
          },
          "action": {
            "type":"uri",
            "label":"View details",
            "uri":"https://github.com/porme/fukurikun"
          }
        },{
          "bounds": {
            "x": 1250,
            "y": 0,
            "width": 2500,
            "height": 1686
          },
          "action": {
            "type":"uri",
            "label":"View details",
            "uri":"https://porme.kibe.la/"
          }
        }
      ]
    }
    response = client.create_rich_menu(rich_menu)

    p richmenu_id = JSON.parse(response.body)["richMenuId"]

    File.open("./app/assets/images/richmenu.png", "r") do |file|
      client.create_rich_menu_image(richmenu_id, file)
    end

    p client.set_default_rich_menu(richmenu_id)
  end
end
