ScriptName=GetScriptName()
LocalVersion=1.3.5
LastVersion= string.gsub(http.Get("https://raw.githubusercontent.com/MrMayow1337/MayYawLua/main/Version.txt"), "\n", "")
Script=string.gsub(http.Get("https://raw.githubusercontent.com/MrMayow1337/MayYawLua/main/Version.txt"), "\n", "")
if LocalVersion~=LastVersion then
	file.Delete(ScriptName)
	file.Open(ScriptName,w)
  file.Write(ScriptName,Script)
end
