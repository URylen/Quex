local Service = {};

local TextService = game:GetService("TextService");
local RunService = game:GetService("RunService");
local Form = string.format;

local TextFrame = nil;
local LineNumbersFrame = nil;
local Lines = {};

local Contents = {};

local Line = 0;
local LargestX = 0;

local LineSpace = 15;
local TextFont = Enum.Font.Ubuntu;
local TextSize = 14;

local ColorOperator = Color3.fromRGB(187, 85, 255);
local ColorFunction = Color3.fromRGB(97, 175, 239);
local ColorString = Color3.fromRGB(152, 195, 121);
local ColorNumber = Color3.fromRGB(209, 154, 102);
local ColorBoolean = Color3.fromRGB(209, 154, 102);
local ColorObject = Color3.fromRGB(229, 192, 123);
local ColorDefault = Color3.fromRGB(224, 108, 117);
local ColorComment = Color3.fromRGB(148, 148, 148);
local ColorLineNumber = Color3.fromRGB(148, 148, 148);
local ColorText = Color3.fromRGB(240, 240, 240);

local Operators = {"^(function)[^%w_]", "^(local)[^%w_]", "^(if)[^%w_]", "^(for)[^%w_]", "^(while)[^%w_]", "^(then)[^%w_]", "^(do)[^%w_]", "^(else)[^%w_]", "^(elseif)[^%w_]", "^(return)[^%w_]", "^(end)[^%w_]", "^(continue)[^%w_]", "^(and)[^%w_]", "^(not)[^%w_]", "^(or)[^%w_]", "[^%w_](or)[^%w_]", "[^%w_](and)[^%w_]", "[^%w_](not)[^%w_]", "[^%w_](continue)[^%w_]", "[^%w_](function)[^%w_]", "[^%w_](local)[^%w_]", "[^%w_](if)[^%w_]", "[^%w_](for)[^%w_]", "[^%w_](while)[^%w_]", "[^%w_](then)[^%w_]", "[^%w_](do)[^%w_]", "[^%w_](else)[^%w_]", "[^%w_](elseif)[^%w_]", "[^%w_](return)[^%w_]", "[^%w_](end)[^%w_]"};
local Strings = {{"\"", "\""}, {"'", "'"}, {"%[%[", "%]%]", true}};
local Comments = {"%-%-%[%[[^%]%]]+%]?%]?", "(%-%-[^\n]+)"};
local Functions = {"[^%w_]([%a_][%a%d_]*)%s*%(", "^([%a_][%a%d_]*)%s*%(", "[:%.%(%[%p]([%a_][%a%d_]*)%s*%("};
local Numbers = {"[^%w_](%d+[eE]?%d*)", "[^%w_](%.%d+[eE]?%d*)", "[^%w_](%d+%.%d+[eE]?%d*)", "^(%d+[eE]?%d*)", "^(%.%d+[eE]?%d*)", "^(%d+%.%d+[eE]?%d*)"};
local Booleans = {"[^%w_](true)", "^(true)", "[^%w_](false)", "^(false)", "[^%w_](nil)", "^(nil)"};
local Objects = {"[^%w_:]([%a_][%a%d_]*):", "^([%a_][%a%d_]*):"};
local Other = {"[^_%s%w=>~<%-%+%*]", ">", "~", "<", "%-", "%+", "=", "%*"};
local OffLimits = {};

function IsOffLimits(Index)
	for Int, Value in pairs(OffLimits) do
		if Index >= Value[1] and Index <= Value[2] then
			return true;
		end;
	end;
	return false;
end;
function Find(String, Pattern)
	return coroutine.wrap(function()
		local Start = 0;
		while true do
			local FindStart, FindEnd = string.find(String, Pattern, Start);
			if FindStart and FindEnd ~= #String then
				Start = FindEnd+1;
				coroutine.yield(FindStart, FindEnd);
			else
				return;
			end;
		end;
	end);
end;
function RenderComments()
	local String = Service:GetRaw();
	local Step = 1;
	for Int, Pattern in pairs(Comments) do
		for Start, End in Find(String, Pattern) do
			if Step%1000 == 0 then
				RunService.Heartbeat:Wait();
			end;
			Step += 1;
			if not IsOffLimits(Start) then
				for Int = Start, End do
					table.insert(OffLimits, {Start, End});
					if Contents[Int] then
						Contents[Int].Color = ColorComment;
					end;
				end;
			end;
		end;
	end;
end;
function RenderStrings()
	local StringType = nil;
	local StringStart = nil;
	local StringEnd = nil;
	local StringEndType = nil;
	local IgnoreBackslashes = nil;
	local OffLimitsIndex = nil;
	local Skip = false;
	for Int, Character in pairs(Contents) do
		if StringType then
			Character.Color = ColorString;
			local String = "";
			for Value = StringStart, Int, 1 do
				String ..= Contents[Value].Char;
			end;
			if IgnoreBackslashes ~= nil then
				if string.match(Character.Char, IgnoreBackslashes) then
					Skip = true;
					StringType = nil;
					StringEndType = nil;
					IgnoreBackslashes = nil;
					StringEnd = Int;
					OffLimits[OffLimitsIndex][2] = StringEnd;
				elseif string.len(tostring(string.match(String, Form("(\\*)%s$", StringEndType))))%2 == 0 then
					Skip = true;
					StringType = nil;
					StringEndType = nil;
					IgnoreBackslashes = nil;
					StringEnd = Int;
					OffLimits[OffLimitsIndex][2] = StringEnd;
				end;
			end
		end;
		if Skip == false then
			for Int2, Value in pairs(Strings) do
				if string.match(Character.Char, Value[1]) and not IsOffLimits(Int) then
					StringType = Value[1];
					StringEndType = Value[2];
					IgnoreBackslashes = Value[3];
					Character.Color = ColorString;
					StringStart = Int;
					OffLimitsIndex = #OffLimits+1;
					OffLimits[OffLimitsIndex] = {StringStart, math.huge};
				end;
			end;
		end;
		Skip = false;
	end;
end;
function HighlightPattern(Array, Color)
	local String = Service:GetRaw();
	local Step = 1;
	for Int, Pattern in pairs(Array) do
		for findStart, findEnd in Find(String, Pattern) do
			if Step % 1000 == 0 then
				RunService.Heartbeat:Wait();
			end;
			Step += 1;
			if not IsOffLimits(findStart) and not IsOffLimits(findEnd) then
				for i = findStart, findEnd do
					if Contents[i] then
						Contents[i].Color = Color;
					end;
				end;
			end;
		end;
	end;
end;
function Escape(String)
	for Int = 0, #String, 1 do
		local Character = string.sub(String, Int, Int);
		if Character == "<" then
			String = Form("%s%s%s", string.sub(String, 0, Int-1), "&lt;", string.sub(String, Int+1, -1));
			Int+= 3;
		elseif Character == ">" then
			String = Form("%s%s%s", string.sub(String, 0, Int-1), "&gt;", string.sub(String, Int+1, -1));
			Int += 3;
		elseif Character == "\"" then
			String = Form("%s%s%s", string.sub(String, 0, Int-1), "&quot;", string.sub(String, Int+1, -1));
			Int += 5;
		elseif Character == "\'" then
			String = Form("%s%s%s", string.sub(String, 0, Int-1), "&apos;", string.sub(String, Int+1, -1));
			Int += 5;
		elseif Character == "&" then
			String = Form("%s%s%s", string.sub(String, 0, Int-1), "&amp;", string.sub(String, Int+1, -1));
			Int += 4;
		end;
	end;
	return String;
end;
function Render()
	OffLimits = {};
	Lines = {};
	
	TextFrame:ClearAllChildren();
	LineNumbersFrame:ClearAllChildren();

	HighlightPattern(Functions, ColorFunction);
	HighlightPattern(Numbers, ColorNumber);
	HighlightPattern(Operators, ColorOperator);
	HighlightPattern(Objects, ColorObject);
	HighlightPattern(Booleans, ColorBoolean);
	HighlightPattern(Other, ColorText);
	RenderComments();
	RenderStrings();

	local LastColor = nil;
	local StringLine = "";
	local StringRaw = "";
	LargestX = 0;
	Line = 1;

	for Int = 1, #Contents+1, 1 do
		local Character = Contents[Int];
		if Int == #Contents+1 or Character.Char == "\n" then
			local ValueX = TextService:GetTextSize(StringRaw, TextSize, TextFont, Vector2.new(math.huge, math.huge)).X+60;
			if ValueX > LargestX then
				LargestX = ValueX;
			end;
			local Label = Instance.new("TextLabel", TextFrame);
			Label.Name = "";
			Label.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
			Label.BackgroundTransparency = 1.000;
			Label.BorderSizePixel = 0;
			Label.Position = UDim2.new(0, 0, 0, Line*LineSpace-LineSpace/2);
			Label.Size = UDim2.new(0, ValueX, 0, TextSize);
			Label.Font = TextFont;
			Label.RichText = true;
			Label.Text = "";
			Label.TextColor3 = Color3.fromRGB(255, 255, 255);
			Label.TextSize = TextSize;
			Label.TextXAlignment = Enum.TextXAlignment.Left;
			Label.TextYAlignment = Enum.TextYAlignment.Top;
			delay(0.1, function()
				Label.Text = StringLine;
			end);
			
			if Int ~= #Contents+1 then
				local Number = Instance.new("TextLabel", LineNumbersFrame);
				Number.Name = "";
				Number.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
				Number.BackgroundTransparency = 1.000;
				Number.BorderSizePixel = 0;
				Number.Position = UDim2.new(0, 2, 0, Line*LineSpace-LineSpace/2);
				Number.Size = UDim2.new(1, -4, 0, LineSpace);
				Number.Font = TextFont;
				Number.Text = Line;
				Number.TextColor3 = ColorLineNumber;
				Number.TextSize = TextSize;
				Number.TextXAlignment = Enum.TextXAlignment.Right;
				Number.TextYAlignment = Enum.TextYAlignment.Center;
			end;

			StringLine = "";
			StringRaw = "";
			LastColor = nil;
			Line += 1;
			if Line%5 == 0 then
				RunService.Heartbeat:Wait();
			end;
		elseif Character.Char == " " then
			StringLine ..= Character.Char;
			StringRaw ..= Character.Char;
		elseif Character.Char == "\t" then
			StringLine ..= string.rep(" ", 4);
			StringRaw ..= Character.Char;
		else
			if Character.Color == LastColor then
				StringLine ..= Escape(Character.Char);
			else
				StringLine ..= Form("<font color=\"rgb(%s, %s, %s)\">", math.floor(Character.Color.R*255), math.floor(Character.Color.G*255), math.floor(Character.Color.B*255));
				StringLine ..= Escape(Character.Char);
				LastColor = Character.Color;
			end;
			StringRaw ..= Character.Char;
		end;
	end;
end;
function Service:Work(CodeFrame, LinesFrame)
	TextFrame = CodeFrame;
	LineNumbersFrame = LinesFrame;
	Render();
end;
function Service:SetRaw(Source)
	Source ..= "\n";
	Contents = {};
	local Line = 1;
	for Int = 1, #Source do
		table.insert(Contents, {
			Char = string.sub(Source, Int, Int),
			Color = ColorDefault,
		});
		if Int%1000 == 0 then
			RunService.Heartbeat:Wait();
		end;
	end;
	Render();
end;
function Service:GetRaw()
	local Source = "";
	for Int, Character in pairs(Contents) do
		Source ..= Character.Char;
	end;
	return Source;
end;

local Constructor = {};
function Constructor:Create(...)
	local Class = Service;
	local New = {};
	Class.__index = Class;
	setmetatable(New, Class);
	New:Work(...);
	return New;
end;
return Constructor;
