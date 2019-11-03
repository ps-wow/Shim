-- Load retail into classic
local function ShimRetail()
    -- Retail functionality removed in classic
    UnitIsWildBattlePet = UnitIsWildBattlePet or function() return false end
    UnitIsBattlePetCompanion = UnitIsBattlePetCompanion or function() return false end
    GetProfessions = GetProfessions or function() return false end

    -- Specializations
    GetSpecializationInfoForClassID = GetSpecializationInfoForClassID or function(classId, specId)
        local specs = {}

        -- Warrior
        if classId == 1 then
            specs[1] = "Protection"
            specs[2] = "Arms"
            specs[3] = "Fury"
        -- Paladin
        elseif classId == 2 then
            specs[1] = "Protection"
            specs[2] = "Arms"
            specs[3] = "Fury"
        -- Hunter
        elseif classId == 3 then
            specs[1] = "Beast Master"
            specs[2] = "Marksmanship"
            specs[3] = "Survival"
        -- Rogue
        elseif classId == 4 then
            specs[1] = "Assassination"
            specs[2] = "Combat"
            specs[3] = "Subtelty"
        elseif classId == 5 then
        elseif classId == 6 then
        elseif classId == 7 then
        elseif classId == 8 then
        end

        return
    end

    GetNumSpecializationsForClassID = GetNumSpecializationsForClassID or function (classId)
        return 3
    end
end


local _, _, _, build = GetBuildInfo();

if build == 11302 then
    ShimRetail()
end