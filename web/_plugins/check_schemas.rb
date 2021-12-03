# _plugins/url_encode.rb
require 'json'
require 'json-schema'

module CheckJsonSchema
  def check_schema( input, schema )
    begin
      JSON::Validator.validate!( schema, input )
      return ""
    rescue JSON::Schema::ValidationError => e
      puts "ERROR ON DATA VALIDATION: " + e.message
      for f in e.fragments do
        begin
          puts input[ Integer( f ) ]
        rescue Error => e
        end
      end
      exit
    end
  end
end

Liquid::Template.register_filter( CheckJsonSchema )