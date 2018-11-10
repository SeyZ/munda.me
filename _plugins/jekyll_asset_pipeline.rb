require 'jekyll_asset_pipeline'

module JekyllAssetPipeline
  class SassConverter < JekyllAssetPipeline::Converter
    require 'sass'

    def self.filetype
      '.scss'
    end

    def convert
      return Sass::Engine.new(@content, syntax: :scss, load_paths: ['_assets']).render
    end
  end

  class JavaScriptCompressor < JekyllAssetPipeline::Compressor
    def self.filetype
      '.js'
    end

    def compress
        return @content
    end
  end
end


