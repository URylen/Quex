local o=(getgenv or function()return _G end)()["\x71\x75\x65\x78\x2F\x61\x69\x6D\x62\x6F\x74"] local i=game:GetService("\x50\x6C\x61\x79\x65\x72\x73") local p=i.LocalPlayer local _=p:GetMouse() local m=string.format local n=((o["\x6F\x70\x74\x69\x6F\x6E\x73\x2F\x68\x69\x67\x68\x6C\x69\x67\x68\x74\x2F\x73\x68\x6F\x77\x5F\x64\x69\x73\x74\x61\x6E\x63\x65"]==true and o["\x6F\x70\x74\x69\x6F\x6E\x73\x2F\x68\x69\x67\x68\x6C\x69\x67\x68\x74\x2F\x73\x68\x6F\x77\x5F\x68\x65\x61\x6C\x74\x68"]==true and"\x5B\x25\x73\x6D\x5D\x20\x25\x73\x20\x5B\x25\x73\x5D")or(o["\x6F\x70\x74\x69\x6F\x6E\x73\x2F\x68\x69\x67\x68\x6C\x69\x67\x68\x74\x2F\x73\x68\x6F\x77\x5F\x64\x69\x73\x74\x61\x6E\x63\x65"]==true and o["\x6F\x70\x74\x69\x6F\x6E\x73\x2F\x68\x69\x67\x68\x6C\x69\x67\x68\x74\x2F\x73\x68\x6F\x77\x5F\x68\x65\x61\x6C\x74\x68"]==false and"\x5B\x25\x73\x6D\x5D\x20\x25\x73")or(o["\x6F\x70\x74\x69\x6F\x6E\x73\x2F\x68\x69\x67\x68\x6C\x69\x67\x68\x74\x2F\x73\x68\x6F\x77\x5F\x64\x69\x73\x74\x61\x6E\x63\x65"]==false and o["\x6F\x70\x74\x69\x6F\x6E\x73\x2F\x68\x69\x67\x68\x6C\x69\x67\x68\x74\x2F\x73\x68\x6F\x77\x5F\x68\x65\x61\x6C\x74\x68"]==true and"\x25\x73\x20\x5B\x25\x73\x5D")or(o["\x6F\x70\x74\x69\x6F\x6E\x73\x2F\x68\x69\x67\x68\x6C\x69\x67\x68\x74\x2F\x73\x68\x6F\x77\x5F\x64\x69\x73\x74\x61\x6E\x63\x65"]==false and o["\x6F\x70\x74\x69\x6F\x6E\x73\x2F\x68\x69\x67\x68\x6C\x69\x67\x68\x74\x2F\x73\x68\x6F\x77\x5F\x68\x65\x61\x6C\x74\x68"]==false and"\x25\x73")) local h=true local k=workspace.Camera local f=game:GetService("\x55\x73\x65\x72\x49\x6E\x70\x75\x74\x53\x65\x72\x76\x69\x63\x65") local _=game:GetService("\x52\x75\x6E\x53\x65\x72\x76\x69\x63\x65") local j=nil local l={} function g(_)if e(p)==true then if p.Character:FindFirstChild("\x48\x75\x6D\x61\x6E\x6F\x69\x64\x52\x6F\x6F\x74\x50\x61\x72\x74")then local a=RaycastParams.new() a.FilterDescendantsInstances={p.Character,_.Character} a.FilterType=Enum.RaycastFilterType.Blacklist a.IgnoreWater=true local _=workspace:Raycast(p.Character.HumanoidRootPart.Position,_.Character.HumanoidRootPart.Position,a) xpcall(function()if _~=nil then return true else return false end end,function()return false end)end end end function e(_)if workspace:FindFirstChild(_.Name)then if workspace[_.Name].ClassName=="\x4D\x6F\x64\x65\x6C"then return true end end if _.Character then return true end return false end function a(_)if _.Character then for _,_ in pairs(_.Character:GetChildren())do if _.Name=="\x48\x75\x6D\x61\x6E\x6F\x69\x64"then if _.ClassName=="\x48\x75\x6D\x61\x6E\x6F\x69\x64"then return true end end end end return false end function b()local b=math.huge local a=nil xpcall(function()for _,c in pairs(i:GetPlayers())do if c~=p and c.Character and c.Character:FindFirstChild("\x48\x75\x6D\x61\x6E\x6F\x69\x64\x52\x6F\x6F\x74\x50\x61\x72\x74")then if e(p)==true then if p.Character:FindFirstChild("\x48\x75\x6D\x61\x6E\x6F\x69\x64\x52\x6F\x6F\x74\x50\x61\x72\x74")then local _=(p.Character.HumanoidRootPart.Position-c.Character.HumanoidRootPart.Position).Magnitude if c.Character:FindFirstChild("\x48\x75\x6D\x61\x6E\x6F\x69\x64")then if c.Character.Humanoid.Health>0 then if o["\x6F\x70\x74\x69\x6F\x6E\x73\x2F\x61\x69\x6D\x62\x6F\x74\x2F\x66\x72\x65\x65\x5F\x66\x6F\x72\x5F\x61\x6C\x6C"]==false then if p.Team~=c.Team then if o["\x6F\x70\x74\x69\x6F\x6E\x73\x2F\x61\x69\x6D\x62\x6F\x74\x2F\x63\x68\x65\x63\x6B\x5F\x66\x6F\x72\x5F\x72\x61\x79\x63\x61\x73\x74"]==true then if g(c)==false then if _<b then b=_ a=c end end elseif _<b then b=_ a=c end end elseif o["\x6F\x70\x74\x69\x6F\x6E\x73\x2F\x61\x69\x6D\x62\x6F\x74\x2F\x63\x68\x65\x63\x6B\x5F\x66\x6F\x72\x5F\x72\x61\x79\x63\x61\x73\x74"]==true then if g(c)==false then if _<b then b=_ a=c end end elseif _<b then b=_ a=c end end end end end end end end,warn) return a end function c()local c=math.huge local b=nil xpcall(function()for _,d in pairs(i:GetPlayers())do if e(d)==true then if a(d)==true then if d.Character.Humanoid.Health>0 then if d.Character:FindFirstChild("\x48\x75\x6D\x61\x6E\x6F\x69\x64\x52\x6F\x6F\x74\x50\x61\x72\x74")then local a,_=k:WorldToScreenPoint(d.Character.HumanoidRootPart.Position) if _==true then local a=Vector2.new(a.X,a.Y) local _=f:GetMouseLocation() local _=(a-_).Magnitude if o["\x6F\x70\x74\x69\x6F\x6E\x73\x2F\x61\x69\x6D\x62\x6F\x74\x2F\x66\x72\x65\x65\x5F\x66\x6F\x72\x5F\x61\x6C\x6C"]==false then if p.Team~=d.Team then if o["\x6F\x70\x74\x69\x6F\x6E\x73\x2F\x61\x69\x6D\x62\x6F\x74\x2F\x63\x68\x65\x63\x6B\x5F\x66\x6F\x72\x5F\x72\x61\x79\x63\x61\x73\x74"]==true then if g(d)==false then if _<c then c=_ b=d end end elseif _<c then c=_ b=d end end elseif o["\x6F\x70\x74\x69\x6F\x6E\x73\x2F\x61\x69\x6D\x62\x6F\x74\x2F\x63\x68\x65\x63\x6B\x5F\x66\x6F\x72\x5F\x72\x61\x79\x63\x61\x73\x74"]==true then if g(d)==false then if _<c then c=_ b=d end end elseif _<c then c=_ b=d end end end end end end end end,warn) return b end function d()for _,d in pairs(i:GetPlayers())do xpcall(function()if p.PlayerGui["\x41\x69\x6D\x62\x6F\x74\x3A\x53\x74\x6F\x72\x61\x67\x65"]then if not p.PlayerGui["\x41\x69\x6D\x62\x6F\x74\x3A\x53\x74\x6F\x72\x61\x67\x65"]:FindFirstChild(d.Name)then if d~=p then if d.Character then xpcall(function()local a=Instance.new("\x42\x69\x6C\x6C\x62\x6F\x61\x72\x64\x47\x75\x69",p.PlayerGui:FindFirstChild("\x41\x69\x6D\x62\x6F\x74\x3A\x53\x74\x6F\x72\x61\x67\x65")) local c=Instance.new("\x54\x65\x78\x74\x4C\x61\x62\x65\x6C",a) local _=Instance.new("\x48\x69\x67\x68\x6C\x69\x67\x68\x74",a) a.Active=true a.Adornee=d.Character a.AlwaysOnTop=true a.Enabled=true a.ExtentsOffset=Vector3.new(0,1.5,0) a.LightInfluence=1 a.Name=d.Name a.ResetOnSpawn=false a.Size=UDim2.new(0,100,0,30) c.BackgroundColor3=Color3.fromRGB(255,255,255) c.BackgroundTransparency=1 c.BorderSizePixel=0 c.Name="\x49\x6E\x66\x6F" c.Size=UDim2.new(1,0,1,0) c.Font=Enum.Font.Code c.LineHeight=1.05 xpcall(function()local _=math.floor((d.Character.HumanoidRootPart.Position-p.Character.HumanoidRootPart.Position).Magnitude) local b=(o["\x6F\x70\x74\x69\x6F\x6E\x73\x2F\x68\x69\x67\x68\x6C\x69\x67\x68\x74\x2F\x73\x68\x6F\x77\x5F\x64\x69\x73\x70\x6C\x61\x79\x6E\x61\x6D\x65"]==true and d.DisplayName)or d.Name local a=d.Character.Humanoid.Health c.Text=n=="\x5B\x25\x73\x6D\x5D\x20\x25\x73\x20\x5B\x25\x73\x5D"and m(n,_,b,a)or n=="\x5B\x25\x73\x6D\x5D\x20\x25\x73"and m(n,_,b)or n=="\x25\x73\x20\x5B\x25\x73\x5D"and m(n,b,a)or n=="\x25\x73"and m(n,b) c.TextColor3=Color3.fromRGB(d.TeamColor.Color.R*225,d.TeamColor.Color.G*225,d.TeamColor.Color.B*225)end,function()c.Text="" c.TextColor3=Color3.fromRGB(255,255,255)end) c.TextSize=20 c.TextStrokeTransparency=0.8 _.Adornee=d.Character _.DepthMode=Enum.HighlightDepthMode.AlwaysOnTop _.Enabled=true _.FillColor=Color3.fromRGB(d.TeamColor.Color.R*225,d.TeamColor.Color.G*225,d.TeamColor.Color.B*225) _.FillTransparency=0.7 _.Name="\x48\x69\x67\x68\x6C\x69\x67\x68\x74" _.OutlineColor=Color3.fromRGB(d.TeamColor.Color.R*225,d.TeamColor.Color.G*225,d.TeamColor.Color.B*225) _.OutlineTransparency=0 end,warn)end end end end end,function()end)end end if o["\x6F\x70\x74\x69\x6F\x6E\x73\x2F\x68\x69\x67\x68\x6C\x69\x67\x68\x74"]==true then if not p.PlayerGui:FindFirstChild("\x41\x69\x6D\x62\x6F\x74\x3A\x53\x74\x6F\x72\x61\x67\x65")then Instance.new("\x46\x6F\x6C\x64\x65\x72",p.PlayerGui).Name="\x41\x69\x6D\x62\x6F\x74\x3A\x53\x74\x6F\x72\x61\x67\x65"end d()end l[#l+1]=i.PlayerRemoving:Connect(function(_)if p.PlayerGui:FindFirstChild("\x41\x69\x6D\x62\x6F\x74\x3A\x53\x74\x6F\x72\x61\x67\x65")then if p.PlayerGui["\x41\x69\x6D\x62\x6F\x74\x3A\x53\x74\x6F\x72\x61\x67\x65"]:FindFirstChild(_.Name)then p.PlayerGui["\x41\x69\x6D\x62\x6F\x74\x3A\x53\x74\x6F\x72\x61\x67\x65"]:FindFirstChild(_.Name):Remove()end end end) l[#l+1]=_.RenderStepped:Connect(function()if o["\x6F\x70\x74\x69\x6F\x6E\x73\x2F\x68\x69\x67\x68\x6C\x69\x67\x68\x74"]==true then if not p.PlayerGui:FindFirstChild("\x41\x69\x6D\x62\x6F\x74\x3A\x53\x74\x6F\x72\x61\x67\x65")then Instance.new("\x46\x6F\x6C\x64\x65\x72",p.PlayerGui).Name="\x41\x69\x6D\x62\x6F\x74\x3A\x53\x74\x6F\x72\x61\x67\x65"end for _,c in pairs(p.PlayerGui["\x41\x69\x6D\x62\x6F\x74\x3A\x53\x74\x6F\x72\x61\x67\x65"]:GetChildren())do if p.PlayerGui:FindFirstChild("\x41\x69\x6D\x62\x6F\x74\x3A\x53\x74\x6F\x72\x61\x67\x65"):FindFirstChild(c.Name)then local d=i:FindFirstChild(c.Name) if d.Character then xpcall(function()local _=math.floor((d.Character.HumanoidRootPart.Position-p.Character.HumanoidRootPart.Position).Magnitude) local b=(o["\x6F\x70\x74\x69\x6F\x6E\x73\x2F\x68\x69\x67\x68\x6C\x69\x67\x68\x74\x2F\x73\x68\x6F\x77\x5F\x64\x69\x73\x70\x6C\x61\x79\x6E\x61\x6D\x65"]==true and d.DisplayName)or d.Name local a=d.Character.Humanoid.Health c.Info.Text=n=="\x5B\x25\x73\x6D\x5D\x20\x25\x73\x20\x5B\x25\x73\x5D"and m(n,_,b,a)or n=="\x5B\x25\x73\x6D\x5D\x20\x25\x73"and m(n,_,b)or n=="\x25\x73\x20\x5B\x25\x73\x5D"and m(n,b,a)or n=="\x25\x73"and m(n,b) c.Info.TextColor3=Color3.fromRGB(d.TeamColor.Color.R*225,d.TeamColor.Color.G*225,d.TeamColor.Color.B*225) c.Highlight.Adornee=d.Character c.Highlight.FillColor=Color3.fromRGB(d.TeamColor.Color.R*225,d.TeamColor.Color.G*225,d.TeamColor.Color.B*225) c.Highlight.OutlineColor=Color3.fromRGB(d.TeamColor.Color.R*225,d.TeamColor.Color.G*225,d.TeamColor.Color.B*225) c.Adornee=d.Character end,function()xpcall(function()c.Info.Text="" c.Info.TextColor3=Color3.fromRGB(255,255,255)end,function()end)end)else xpcall(function()c.Highlight.Text="" c.Highlight.TextColor3=Color3.fromRGB(255,255,255)end,function()end)end end end end if h==true then d() xpcall(function()if f:IsMouseButtonPressed(Enum.UserInputType.MouseButton2)==true then local _=false if o["\x6F\x70\x74\x69\x6F\x6E\x73\x2F\x61\x69\x6D\x62\x6F\x74\x2F\x75\x73\x65\x5F\x6C\x6F\x63\x61\x6C\x74\x72\x61\x6E\x73\x70\x61\x72\x65\x6E\x63\x79\x6D\x6F\x64\x69\x66\x69\x65\x72\x5F\x6D\x65\x74\x68\x6F\x64"]==true then if p.Character.Head.LocalTransparencyModifier==1 then _=true end else _=true end if _==true then if j==nil then if o["\x6F\x70\x74\x69\x6F\x6E\x73\x2F\x61\x69\x6D\x62\x6F\x74\x2F\x75\x73\x65\x5F\x63\x6C\x6F\x73\x65\x73\x74\x5F\x6D\x65\x74\x68\x6F\x64"]==true then j=b() xpcall(function()k.CFrame=CFrame.new(k.CFrame.Position,j.Character[o["\x6F\x70\x74\x69\x6F\x6E\x73\x2F\x61\x69\x6D\x62\x6F\x74\x2F\x70\x61\x72\x74"]].Position)end,function()end)else j=c() xpcall(function()k.CFrame=CFrame.new(k.CFrame.Position,j.Character[o["\x6F\x70\x74\x69\x6F\x6E\x73\x2F\x61\x69\x6D\x62\x6F\x74\x2F\x70\x61\x72\x74"]].Position)end,function()end)end else k.CFrame=CFrame.new(k.CFrame.Position,j.Character[o["\x6F\x70\x74\x69\x6F\x6E\x73\x2F\x61\x69\x6D\x62\x6F\x74\x2F\x70\x61\x72\x74"]].Position)end end else j=nil end end,warn)end end) l[#l+1]=f.InputBegan:Connect(function(a,_)if _==false then if a.KeyCode==Enum.KeyCode[string.upper(string.sub(o["\x6F\x70\x74\x69\x6F\x6E\x73\x2F\x6B\x65\x79\x62\x69\x6E\x64\x2F\x74\x6F\x67\x67\x6C\x65\x5F\x61\x69\x6D\x62\x6F\x74"],1,1))]then h=not h elseif a.KeyCode==Enum.KeyCode[string.upper(string.sub(o["\x6F\x70\x74\x69\x6F\x6E\x73\x2F\x6B\x65\x79\x62\x69\x6E\x64\x2F\x74\x6F\x67\x67\x6C\x65\x5F\x68\x69\x67\x68\x6C\x69\x67\x68\x74\x73"],1,1))]then if o["\x6F\x70\x74\x69\x6F\x6E\x73\x2F\x68\x69\x67\x68\x6C\x69\x67\x68\x74"]==true then o["\x6F\x70\x74\x69\x6F\x6E\x73\x2F\x68\x69\x67\x68\x6C\x69\x67\x68\x74"]=false if p.PlayerGui:FindFirstChild("\x41\x69\x6D\x62\x6F\x74\x3A\x53\x74\x6F\x72\x61\x67\x65")then p.PlayerGui["\x41\x69\x6D\x62\x6F\x74\x3A\x53\x74\x6F\x72\x61\x67\x65"]:Remove()end else o["\x6F\x70\x74\x69\x6F\x6E\x73\x2F\x68\x69\x67\x68\x6C\x69\x67\x68\x74"]=true end elseif a.KeyCode==Enum.KeyCode[string.upper(string.sub(o["\x6F\x70\x74\x69\x6F\x6E\x73\x2F\x6B\x65\x79\x62\x69\x6E\x64\x2F\x64\x69\x73\x61\x62\x6C\x65\x5F\x61\x69\x6D\x62\x6F\x74"],1,1))]then h=false o["\x6F\x70\x74\x69\x6F\x6E\x73\x2F\x68\x69\x67\x68\x6C\x69\x67\x68\x74"]=false p.PlayerGui:FindFirstChild("\x41\x69\x6D\x62\x6F\x74\x3A\x53\x74\x6F\x72\x61\x67\x65"):Remove() for _,_ in pairs(l)do _:Disconnect()end end end end)
