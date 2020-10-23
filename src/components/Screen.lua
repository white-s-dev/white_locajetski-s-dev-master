---
--- Generated by whiteLua-s-dev(https://github.com/white-s-dev)
--- Created by white#2021 and hector#6915-s-dv.
--- DateTime: 20/10/2020 02:40
---



---LoadingPrompt
---
--- 
---
---@param loadingText string
---@param spinnerType number
---@return void
function LoadingPrompt(loadingText, spinnerType)

    if IsLoadingPromptBeingDisplayed() then
        RemoveLoadingPrompt()
    end

    if (loadingText == nil) then
        BeginTextCommandBusyString(nil)
    else
        BeginTextCommandBusyString("STRING");
        AddTextComponentSubstringPlayerName(loadingText);
    end

    EndTextCommandBusyString(spinnerType)
end

---LoadingPromptHide
---
--- 
---
---@return void
function LoadingPromptHide()
    if IsLoadingPromptBeingDisplayed() then
        RemoveLoadingPrompt()
    end
end


