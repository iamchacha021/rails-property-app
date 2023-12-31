Shindo.tests("Fog::Compute[:brightbox] | server type requests", ["brightbox"]) do
  tests("success") do
    tests("#list_server_types") do
      pending if Fog.mocking?
      result = Fog::Compute[:brightbox].list_server_types
      @server_type_id = result.first["id"]
      data_matches_schema(Brightbox::Compute::Formats::Collection::SERVER_TYPES, allow_extra_keys: true) { result }
    end

    tests("#get_server_type('#{@server_type_id}')") do
      pending if Fog.mocking?
      result = Fog::Compute[:brightbox].get_server_type(@server_type_id)
      data_matches_schema(Brightbox::Compute::Formats::Full::SERVER_TYPE, allow_extra_keys: true) { result }
    end
  end

  tests("failure") do
    tests("#get_server_type('typ-00000')").raises(Excon::Errors::NotFound) do
      pending if Fog.mocking?
      Fog::Compute[:brightbox].get_server_type("typ-00000")
    end

    tests("#get_server").raises(ArgumentError) do
      pending if Fog.mocking?
      Fog::Compute[:brightbox].get_server_type
    end
  end
end
