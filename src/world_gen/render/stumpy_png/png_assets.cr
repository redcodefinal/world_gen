require "../../assets"
require "./png_asset"

class PNGAssets < Assets(PNGAsset)
  property block_width : Int32 = 0
  property block_height : Int32 = 0

  property tile_width : Int32 = 0
  property tile_height : Int32 = 0

  protected def added_asset(name : String, asset : Asset, type : String)
    if type == "blocks" && name == "block"
      @block_width = asset.tags.values.first.width
      @block_height = asset.tags.values.first.height
    elsif type == "tiles" && name == "tile"
      @tile_width  = asset.tags.values.first.width
      @tile_height = asset.tags.values.first.height
    end
  end
end