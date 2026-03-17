function data()
return {
    info = {
      minorVersion = 0,
      severityAdd = "NONE",
      severityRemove = "WARNING",
      name = _("mod_name"),
      description = _("mod_desc"),
      authors = {
	    {
          name = "Modwerkstatt",
          role = "CREATOR",
        },
      },
      tags = {"dampflok", "steam", "drg", "kpev", "locomotive", "preußen"},
      visible = true,
      params = {
		{
	        key = "hide_prg3_legacy",
	        name = _("Legacy G3 available?"),
	        uiType = "CHECKBOX",
	        values = { "No", "Yes", },				
	        defaultIndex = 1,
		},
      },
    },
	runFn = function (settings, modParams)
      local function legacyFilter(fileName, data)		
		if data.metadata.description and data.metadata.description.name == "VEHICLE_TRAIN_BR53_PREUS_G3_NAME" then			                
            data.metadata.availability.yearFrom = 1
			data.metadata.availability.yearTo = 2				
		end				
		    return data	
		end
    
      if modParams[getCurrentModId()] ~= nil then
			local params = modParams[getCurrentModId()]					
			if params["hide_prg3_legacy"] == 0 then				
				addModifier("loadModel", legacyFilter)
			end

      else	
			addModifier("loadModel", legacyFilter)
     end
    end
 }
end



		
