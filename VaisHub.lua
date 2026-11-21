-- ========================================================
-- ⚙️ НАСТРОЙКИ СКРИПТА
-- ========================================================
local HUB_NAME = "VaisHub"
local HUB_VERSION = "v0.8 Beta"
local IMAGE_URL = "https://i.imgur.com/8Q3z4Y4.png"

-- ========================================================
-- 🌍 ПЕРЕВОДЫ И ЛОГИКА
-- ========================================================
local VoteModesTranslated = {
["Normal"] = {["한국어"]="보통", ["Русский"]="Обычный", ["English"]="Normal", ["Українська"]="Звичайний", ["Español"]="Normal", ["Deutsch"]="Normal", ["Français"]="Normal", ["Türkçe"]="Normal"},
["Hard"] = {["한국어"]="어려움", ["Русский"]="Сложный", ["English"]="Hard", ["Українська"]="Складний", ["Español"]="Difícil", ["Deutsch"]="Schwer", ["Français"]="Difficile", ["Türkçe"]="Zor"},
["VeryHard"] = {["한국어"]="매우 어려움", ["Русский"]="Очень сложный", ["English"]="Very Hard", ["Українська"]="Дуже складний", ["Español"]="Muy Difícil", ["Deutsch"]="Sehr Schwer", ["Français"]="Très Difficile", ["Türkçe"]="Çok Zor"},
["Insane"] = {["한국어"]="광기", ["Русский"]="Безумный", ["English"]="Insane", ["Українська"]="Божевільний", ["Español"]="Demencial", ["Deutsch"]="Verrückt", ["Français"]="Insensé", ["Türkçe"]="Deli"},
["Nightmare"] = {["한국어"]="악몽", ["Русский"]="Кошмар", ["English"]="Nightmare", ["Українська"]="Кошмар", ["Español"]="Pesadilla", ["Deutsch"]="Alptraum", ["Français"]="Cauchemar", ["Türkçe"]="Kabus"},
["BossRush"] = {["한국어"]="보스 러시", ["Русский"]="Босс Раш", ["English"]="Boss Rush", ["Українська"]="Бос Раш", ["Español"]="Boss Rush", ["Deutsch"]="Boss-Ansturm", ["Français"]="Boss Rush", ["Türkçe"]="Boss Akını"},
["ThunderStorm"] = {["한국어"]="폭풍우", ["Русский"]="Гроза", ["English"]="Thunderstorm", ["Українська"]="Гроза", ["Español"]="Tormenta", ["Deutsch"]="Gewitter", ["Français"]="Orage", ["Türkçe"]="Fırtına"},
["Zombie"] = {["한국어"]="좀비", ["Русский"]="Зомби", ["English"]="Zombie", ["Українська"]="Зомбі", ["Español"]="Zombi", ["Deutsch"]="Zombie", ["Français"]="Zombie", ["Türkçe"]="Zombie"},
["ZombieV2"] = {["한국어"]="좀비 V2", ["Русский"]="Зомби V2", ["English"]="Zombie V2", ["Українська"]="Зомбі V2", ["Español"]="Zombi V2", ["Deutsch"]="Zombie V2", ["Français"]="Zombie V2", ["Türkçe"]="Zombie V2"},
["Christmas"] = {["한국어"]="크리스마스", ["Русский"]="Рождество", ["English"]="Christmas", ["Українська"]="Різдво", ["Español"]="Navidad", ["Deutsch"]="Weihnachten", ["Français"]="Noël", ["Türkçe"]="Noel"},
["Hell"] = {["한국어"]="지옥", ["Русский"]="Ад", ["English"]="Hell", ["Українська"]="Пекло", ["Español"]="Infierno", ["Deutsch"]="Hölle", ["Français"]="Enfer", ["Türkçe"]="Cehennem"},
["DarkDimension"] = {["한국어"]="어둠의 차원", ["Русский"]="Темное Измерение", ["English"]="Dark Dimension", ["Українська"]="Темний Вимір", ["Español"]="Dimensión Oscura", ["Deutsch"]="Dunkle Dimension", ["Français"]="Dimension Sombre", ["Türkçe"]="Karanlık Boyut"},
["Astro"] = {["한국어"]="아스트로", ["Русский"]="Астро", ["English"]="Astro", ["Українська"]="Астро", ["Español"]="Astro", ["Deutsch"]="Astro", ["Français"]="Astro", ["Türkçe"]="Astro"},
["AstroV2"] = {["한국어"]="아스트로 V2", ["Русский"]="Астро V2", ["English"]="Astro V2", ["Українська"]="Астро V2", ["Español"]="Astro V2", ["Deutsch"]="Astro V2", ["Français"]="Astro V2", ["Türkçe"]="Astro V2"},
["BattleArmorAct1"] = {["한국어"]="배틀 아머 ACT 1", ["Русский"]="Боевая Броня Акт 1", ["English"]="Battle Armor Act 1", ["Українська"]="Бойова Броня Акт 1", ["Español"]="Armadura de Batalla Acto 1", ["Deutsch"]="Kampfpanzer Akt 1", ["Français"]="Armure de Combat Acte 1", ["Türkçe"]="Savaş Zırhı Bölüm 1"},
["Soundwave"] = {["한국어"]="사운드웨이브", ["Русский"]="Звуковая Волна", ["English"]="Soundwave", ["Українська"]="Звукова Хвиля", ["Español"]="Onda Sonora", ["Deutsch"]="Schallwelle", ["Français"]="Onde Sonore", ["Türkçe"]="Ses Dalgası"},
["Halloween"] = {["한국어"]="할로윈", ["Русский"]="Хэллоуин", ["English"]="Halloween", ["Українська"]="Гелловін", ["Español"]="Halloween", ["Deutsch"]="Halloween", ["Français"]="Halloween", ["Türkçe"]="Cadılar Bayramı"}
}

local Langs = {
["한국어"] = {
FarmT = "⚔️ 파밍", VisT = "👁️ 비주얼", SettT = "⚙️ 설정", VoteT = "🗳️ 투표",
AFarm = "자동 파밍", AAtk = "자동 공격", AKill = "체력 0 자동화", ESP = "ESP 활성화", Bind = "키 바인드", Lang = "언어",
AFK = "잠수 방지", AReady = "자동 준비", AVote = "자동 투표", KeySelector = "키 선택 ▼", AutoKeyTrigger = "자동 키",
SpeedText = "이동 속도", ThemeText = "메뉴 테마", AlphaText = "투명도",
KeyPrefix = " 키: [",
infoText = "⚡ " .. HUB_NAME .. " (" .. HUB_VERSION .. ")\n\n• 상태: 작동 중 🟢\n• 파밍 쿨타임 감소, 언어 업데이트 및 C 키 추가\n\n이용해 주셔서 감사합니다!"
},
["Русский"] = {
FarmT = "⚔️ Фарм", VisT = "👁️ Визуалы", SettT = "⚙️ Настройки", VoteT = "🗳️ Голосование",
AFarm = "АВТО ФАРМ", AAtk = "АВТО АТАКА", AKill = "АВТО СБРОС HP", ESP = "ВКЛЮЧИТЬ ESP", Bind = "КЛАВИША", Lang = "ЯЗЫК",
AFK = "АНТИ-АФК", AReady = "АВТО ГОТОВНОСТЬ", AVote = "АВТО ГОЛОСОВАНИЕ", KeySelector = "ВЫБОР КНОПОК ▼", AutoKeyTrigger = "АВТО КНОПКА",
SpeedText = "СКОРОСТЬ", ThemeText = "ТЕМА МЕНЮ", AlphaText = "ПРОЗРАЧНОСТЬ",
KeyPrefix = " Клавиша: [",
infoText = "⚡ " .. HUB_NAME .. " (" .. HUB_VERSION .. ")\n\n• Состояние: Работает 🟢\n• Было уменьшено кд фарма обновлен язык и добавлена клавиша C\n\nСпасибо за использование!"
},
["English"] = {
FarmT = "⚔️ Farm", VisT = "👁️ Visuals", SettT = "⚙️ Settings", VoteT = "🗳️ Voting",
AFarm = "AUTO FARM", AAtk = "AUTO ATTACK", AKill = "AUTO ZERO HP", ESP = "ENABLE ESP", Bind = "KEYBIND", Lang = "LANGUAGE",
AFK = "ANTI-AFK", AReady = "AUTO READY", AVote = "AUTO VOTE", KeySelector = "KEY SELECTOR ▼", AutoKeyTrigger = "AUTO KEY",
SpeedText = "SPEED", ThemeText = "THEME", AlphaText = "TRANSPARENCY",
KeyPrefix = " Key: [",
infoText = "⚡ " .. HUB_NAME .. " (" .. HUB_VERSION .. ")\n\n• Status: Working 🟢\n• Farm cooldown reduced, language updated, and C key added\n\nThank you for using!"
},
["Українська"] = {
FarmT = "⚔️ Фарм", VisT = "👁️ Візуали", SettT = "⚙️ Налаштування", VoteT = "🗳️ Голосування",
AFarm = "АВТО ФАРМ", AAtk = "АВТО АТАКА", AKill = "АВТО СКИД HP", ESP = "УВІМКНУТИ ESP", Bind = "КЛВІША", Lang = "МОВА",
AFK = "АНТИ-AFK", AReady = "АВТО ГОТОВНІСТЬ", AVote = "АВТО ГОЛОСУВАННЯ", KeySelector = "ВИБІР КНОПОК ▼", AutoKeyTrigger = "АВТО КНОПКА",
SpeedText = "ШВИДКІСТЬ", ThemeText = "ТЕМА", AlphaText = "ПРОЗОРИСТЬ",
KeyPrefix = " Клавіша: [",
infoText = "⚡ " .. HUB_NAME .. " (" .. HUB_VERSION .. ")\n\n• Статус: Працює 🟢\n• Зменшено кд фарму, оновлено мову та додано клавішу C\n\nДякуємо за використання!"
},
["Español"] = {
FarmT = "⚔️ Farm", VisT = "👁️ Visuales", SettT = "⚙️ Ajustes", VoteT = "🗳️ Votación",
AFarm = "AUTO FARM", AAtk = "AUTO ATAQUE", AKill = "AUTO HP 0", ESP = "ACTIVAR ESP", Bind = "TECLA", Lang = "IDIOMA",
AFK = "ANTI-AFK", AReady = "AUTO LISTO", AVote = "AUTO VOTACIÓN", KeySelector = "SELECTOR DE TECLAS ▼", AutoKeyTrigger = "AUTO TECLA",
SpeedText = "VELOCIDAD", ThemeText = "TEMA", AlphaText = "TRANSPARENCIA",
KeyPrefix = " Tecla: [",
infoText = "⚡ " .. HUB_NAME .. " (" .. HUB_VERSION .. ")\n\n• Estado: Funcionando 🟢\n• Enfriamiento de granja reducido, idioma actualizado y tecla C agregada\n\n¡Gracias por usarlo!"
},
["Deutsch"] = {
FarmT = "⚔️ Farmen", VisT = "👁️ Visuelle", SettT = "⚙️ Einstellungen", VoteT = "🗳️ Abstimmung",
AFarm = "AUTO FARM", AAtk = "AUTO ANGRIFF", AKill = "AUTO HP 0", ESP = "ESP AKTIVIEREN", Bind = "TASTE", Lang = "SPRACHE",
AFK = "ANTI-AFK", AReady = "AUTO BEREIT", AVote = "AUTO ABSTIMMUNG", KeySelector = "TASTEN-AUSWAHL ▼", AutoKeyTrigger = "AUTO TASTE",
SpeedText = "GESCHWINDIGKEIT", ThemeText = "THEMA", AlphaText = "TRANSPARENZ",
KeyPrefix = " Taste: [",
infoText = "⚡ " .. HUB_NAME .. " (" .. HUB_VERSION .. ")\n\n• Status: Läuft 🟢\n• Farm-Abklingzeit reduziert, Sprache aktualisiert und C-Taste hinzugefügt\n\nDanke fürs Nutzen!"
},
["Français"] = {
FarmT = "⚔️ Ferme", VisT = "👁️ Visuels", SettT = "⚙️ Réglages", VoteT = "🗳️ Vote",
AFarm = "AUTO FARM", AAtk = "AUTO ATTAQUE", AKill = "AUTO HP 0", ESP = "ACTIVER ESP", Bind = "TOUCHE", Lang = "LANGUE",
AFK = "ANTI-AFK", AReady = "AUTO PRÊT", AVote = "AUTO VOTE", KeySelector = "SÉLECTEUR DE TOUCHES ▼", AutoKeyTrigger = "AUTO TOUCHE",
SpeedText = "VITESSE", ThemeText = "THÈME", AlphaText = "TRANSPARENCE",
KeyPrefix = " Touche: [",
infoText = "⚡ " .. HUB_NAME .. " (" .. HUB_VERSION .. ")\n\n• Statut: Actif 🟢\n• Recharge de ferme réduite, langue mise à jour et touche C ajoutée\n\nMerci !"
},
["Türkçe"] = {
FarmT = "⚔️ Farm", VisT = "👁️ Görseller", SettT = "⚙️ Ayarlar", VoteT = "🗳️ Oylama",
AFarm = "OTO FARM", AAtk = "OTO SALDIRI", AKill = "OTO 0 CAN", ESP = "ESP AÇ", Bind = "TUŞ ATAMASI", Lang = "DİL",
AFK = "ANTI-AFK", AReady = "OTO HAZIR", AVote = "OTO OYLAMA", KeySelector = "TUŞ SEÇİCİ ▼", AutoKeyTrigger = "OTO TUŞ",
SpeedText = "HIZ", ThemeText = "TEMA", AlphaText = "SAYDAMLIK",
KeyPrefix = " Tuş: [",
infoText = "⚡ " .. HUB_NAME .. " (" .. HUB_VERSION .. ")\n\n• Durum: Çalışıyor 🟢\n• Farm bekleme süresi azaltıldı, dil güncellendi ve C tuşu eklendi\n\nKullandığınız için teşekkürler!"
}
}

local HeliSkipLabels = {
["한국어"] = "헬리콥터 스킵",
["Русский"] = "ПРОПУСК ВЕРТОЛЁТА",
["English"] = "HELI SKIP",
["Українська"] = "ПРОПУСК ГЕЛІКОПТЕРА",
["Español"] = "SALTAR HELICÓPTERO",
["Deutsch"] = "HUBSCHRAUBER SKIP",
["Français"] = "SKIP HÉLICOPTÈRE",
["Türkçe"] = "HELİKOPTER ATLA"
}

-- Сервисы Roblox
local UIS = game:GetService("UserInputService")
local TS = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local VIM = game:GetService("VirtualInputManager")
local VU = game:GetService("VirtualUser")
local RS = game:GetService("ReplicatedStorage")
local CoolPlr = game.Players.LocalPlayer
local FactionModule = nil
pcall(function() FactionModule = require(RS:FindFirstChild("FactionShared")) end)

-- Состояние логики
local Turn, AttackTurn, AutoKillTurn, EspTurn, AfkTurn, AutoReadyTurn, AutoVoteTurn, AutoKeyTurn, AutoHeliSkipTurn = false, false, false, false, false, false, false, false, true
local OpenKey = Enum.KeyCode.LeftAlt
local CurrentLang = "한국어"
local SelectedVoteMode = "Normal"
local SelectedSpeed = 16

-- Переменные автофарма (КД 0.2 секунды)
local FarmDelay = 0.2
local EnemyDetectedTime = 0
local WaitingForFarm = false
local AttackDebounce = false

local SelectedKeys = {
X = false, T = false, F = false, H = false, Y = false,
G = false, v = false, B = false, Z = false, R = false,
E = false, Q = false, U = false, C = false
}

local keyButtonsMap = {}

if CoolPlr.PlayerGui:FindFirstChild("BlockadeHub_Final") then
CoolPlr.PlayerGui.BlockadeHub_Final:Destroy()
end

local Gui = Instance.new("ScreenGui", CoolPlr.PlayerGui)
Gui.Name = "BlockadeHub_Final"
Gui.ResetOnSpawn = false
Gui.IgnoreGuiInset = true
Gui.DisplayOrder = 999999

local function getAsset(url)
local success, result = pcall(function()
local filename = "blockade_splash.png"
if isfile and isfile(filename) then
return getcustomasset(filename)
elseif writefile and getcustomasset then
local data = game:HttpGet(url)
if data then
writefile(filename, data)
return getcustomasset(filename)
end
end
return "rbxassetid://13861514339"
end)
if success and result then return result end
return "rbxassetid://13861514339"
end

local function makeDraggable(frame, parentFrame)
local dragging = false
local dragInput, dragStart, startPos

frame.InputBegan:Connect(function(input)
if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
dragging = true
dragStart = input.Position
startPos = parentFrame.Position

input.Changed:Connect(function()
if input.UserInputState == Enum.UserInputState.End then
dragging = false
end
end)
end
end)

frame.InputChanged:Connect(function(input)
if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
dragInput = input
end
end)

UIS.InputChanged:Connect(function(input)
if input == dragInput and dragging then
local delta = input.Position - dragStart
local viewport = workspace.CurrentCamera.ViewportSize

local newX = startPos.X.Offset + delta.X
local newY = startPos.Y.Offset + delta.Y

local maxX = viewport.X - parentFrame.AbsoluteSize.X
local maxY = viewport.Y - parentFrame.AbsoluteSize.Y

newX = math.clamp(newX, 0, maxX)
newY = math.clamp(newY, 0, maxY)

parentFrame.Position = UDim2.new(0, newX, 0, newY)
end
end)
end

for _, v in pairs(getconnections(CoolPlr.Idled)) do v:Disable() end

task.spawn(function()
while task.wait(25) do
if AfkTurn then
pcall(function()
local hrp = CoolPlr.Character and CoolPlr.Character:FindFirstChild("HumanoidRootPart")
local cam = workspace.CurrentCamera
VU:CaptureController()
VU:MouseMoveEvent(Vector2.new(200, 200), cam.CFrame)
if hrp then
local oldCF = hrp.CFrame
hrp.CFrame = oldCF * CFrame.new(0.1, 0, 0.1)
task.wait(0.1)
hrp.CFrame = oldCF
end
VU:Button1Down(Vector2.new(0,0), cam.CFrame); task.wait(0.1); VU:Button1Up(Vector2.new(0,0), cam.CFrame)
end)
end
end
end)

-- 1초마다 반복: AutoKillTurn 활성화 시 workspace.Living.Btsw213F.Humanoid 체력이 15 이하면 Health = 0 실행
task.spawn(function()
while task.wait(1) do
if AutoKillTurn then
pcall(function()
local liv = workspace:FindFirstChild("Living")
local target = liv and liv:FindFirstChild("Btsw213F")
local hum = target and target:FindFirstChild("Humanoid")
if hum and hum.Health > 0 and hum.Health <= 15 then
hum.Health = 0
end
end)
end
end
end)

-- ========================================================
-- 투표 수정: 게임은 Vote:FireServer(모드이름 string) 을 기대함.
-- 실제 투표 UI는 Play.Main(라운드 전) 과 Play.VoteScreen.Panel.Cards(라운드 중).
-- 0.01초 스팸을 없애고 0.75초 디바운스 + UI 가시성 확인으로 고침.
-- ========================================================
local VoteFireInterval = 0.75
local lastVoteFire = 0
local voteRemoteRef = RS:FindFirstChild("Vote")

task.spawn(function()
while true do
task.wait(0.1)
if AutoVoteTurn and type(SelectedVoteMode) == "string" and SelectedVoteMode ~= "" then
if tick() - lastVoteFire >= VoteFireInterval then
pcall(function()
local play = CoolPlr.PlayerGui:FindFirstChild("Play")
if not play then return end

local isVotingPhase = false
local main = play:FindFirstChild("Main")
if main and main.Visible and main:FindFirstChild(SelectedVoteMode) then
isVotingPhase = true
end
local voteScreen = play:FindFirstChild("VoteScreen")
if not isVotingPhase and voteScreen and voteScreen.Visible then
local panel = voteScreen:FindFirstChild("Panel")
local cards = panel and panel:FindFirstChild("Cards")
if cards and cards:FindFirstChild(SelectedVoteMode) then
isVotingPhase = true
end
end
if not isVotingPhase then return end

voteRemoteRef = voteRemoteRef or RS:FindFirstChild("Vote")
if voteRemoteRef then
voteRemoteRef:FireServer(SelectedVoteMode)
lastVoteFire = tick()
end
end)
end
end
end
end)

-- 게임 투표 카드를 세로로 고정: 기본 가로 레이아웃은 새 모드 3개를 화면 밖으로 밀어냄.
-- 게임의 layoutCards()가 크기를 되돌리므로 0.15초마다 다시 적용.
task.spawn(function()
local appliedOnce = false
while true do
pcall(function()
local play = CoolPlr.PlayerGui:FindFirstChild("Play")
local voteScreen = play and play:FindFirstChild("VoteScreen")
local panel = voteScreen and voteScreen:FindFirstChild("Panel")
local cards = panel and panel:FindFirstChild("Cards")
if not cards then return end
local layout = cards:FindFirstChildOfClass("UIListLayout")
if not layout then return end

layout.FillDirection = Enum.FillDirection.Vertical
layout.HorizontalAlignment = Enum.HorizontalAlignment.Center
layout.VerticalAlignment = Enum.VerticalAlignment.Top
layout.SortOrder = Enum.SortOrder.LayoutOrder
layout.Padding = UDim.new(0, 8)

cards.ScrollingDirection = Enum.ScrollingDirection.Y
cards.AutomaticCanvasSize = Enum.AutomaticSize.Y
cards.CanvasSize = UDim2.fromOffset(0, 0)
if not appliedOnce then
cards.CanvasPosition = Vector2.new(0, 0)
appliedOnce = true
end

for _, card in ipairs(cards:GetChildren()) do
if card:IsA("ImageButton") then
card.Size = UDim2.new(1, -16, 0, 128)
end
end
for _, name in ipairs({"LeftArrow", "RightArrow", "LeftFade", "RightFade"}) do
local overlay = panel:FindFirstChild(name)
if overlay and overlay:IsA("GuiObject") then overlay.Visible = false end
end
end)
task.wait(0.15)
end
end)

-- 헬리콥터 컷신 자동 스킵: 게임의 "skip heli" ScreenGui가 켜지는 순간
-- ReplicatedStorage.SkipHelicopter:FireServer() 를 게임 버튼과 같은 경로로 호출.
-- cutscene당 최대 3회까지만 재시도하고, GUI가 꺼지면 카운터 리셋.
local heliSkipRemote = RS:FindFirstChild("SkipHelicopter")

local function findHeliGui()
local pg = CoolPlr:FindFirstChild("PlayerGui")
if not pg then return nil end
local direct = pg:FindFirstChild("skip heli")
if direct and direct:IsA("ScreenGui") then return direct end
for _, obj in ipairs(pg:GetChildren()) do
if obj:IsA("ScreenGui") then
local n = obj.Name:lower()
if n:find("skip") and n:find("heli") then return obj end
end
end
return nil
end

task.spawn(function()
local lastFire = 0
local fireCount = 0
local wasEnabled = false
while true do
task.wait(0.1)
if AutoHeliSkipTurn then
pcall(function()
local sf = CoolPlr:FindFirstChild("SettingFolder")
local b = sf and sf:FindFirstChild("AutoSkipHelicopter")
if b and b:IsA("BoolValue") and not b.Value then b.Value = true end
local dataFolder = CoolPlr:FindFirstChild("_Data")
local settings = dataFolder and dataFolder:FindFirstChild("Settings")
local b2 = settings and settings:FindFirstChild("AutoSkipHelicopter")
if b2 and b2:IsA("BoolValue") and not b2.Value then b2.Value = true end
end)

local gui = findHeliGui()
local enabled = gui ~= nil and gui.Enabled == true

if enabled then
if not wasEnabled then fireCount = 0 end
if fireCount < 3 and tick() - lastFire >= 0.6 then
lastFire = tick()
fireCount = fireCount + 1
pcall(function()
if not heliSkipRemote or not heliSkipRemote:IsDescendantOf(RS) then
heliSkipRemote = RS:FindFirstChild("SkipHelicopter")
end
if heliSkipRemote then
heliSkipRemote:FireServer()
elseif gui then
local btn = gui:FindFirstChild("TextButton")
if btn and btn:IsA("TextButton") then btn:Activate() end
end
end)
end
else
fireCount = 0
end
wasEnabled = enabled
else
fireCount = 0
wasEnabled = false
end
end
end)

local cachedZone = nil
task.spawn(function()
while true do
task.wait(2)
if AutoReadyTurn and (not cachedZone or not cachedZone:IsDescendantOf(workspace)) then
cachedZone = nil
local maps = workspace:FindFirstChild("Maps") or workspace:FindFirstChild("Map")
local targetFolder = maps or workspace
for _, v in pairs(targetFolder:GetChildren()) do
if v:IsA("BasePart") and (v.Name:lower():find("ready") or v.Name:lower():find("zone")) then
cachedZone = v; break
end
end
if not cachedZone then
for _, v in pairs(workspace:GetDescendants()) do
if v:IsA("BasePart") and (v.Name:lower():find("ready") or v.Name:lower():find("zone")) then
cachedZone = v; break
end
end
end
end
end
end)

task.spawn(function()
while true do
task.wait(0.3)
if AutoReadyTurn and cachedZone and cachedZone:IsDescendantOf(workspace) then
local hrp = CoolPlr.Character and CoolPlr.Character:FindFirstChild("HumanoidRootPart")
if hrp then
if (cachedZone.Position - hrp.Position).Magnitude <= 150 then
task.wait(5)
if AutoReadyTurn and cachedZone and cachedZone:IsDescendantOf(workspace) and CoolPlr.Character and CoolPlr.Character:FindFirstChild("HumanoidRootPart") then
local currentHrp = CoolPlr.Character.HumanoidRootPart
local angle = math.random() * math.pi * 2
local offset = math.random() * 3
currentHrp.CFrame = CFrame.new(cachedZone.Position + Vector3.new(math.cos(angle)*offset, 3, math.sin(angle)*offset))
task.wait(4)
end
end
end
end
end
end)

-- ========================================================
-- 입력 유틸: Heartbeat에서 빼내 전용 스레드로 전송
-- ========================================================
local function viewportCenter()
local cam = workspace.CurrentCamera
local vp = cam and cam.ViewportSize or Vector2.new(1280, 720)
return vp.X / 2, vp.Y / 2
end

local function holdKey(keyName, holdTime)
local code = Enum.KeyCode[tostring(keyName):upper()]
if not code then return end
VIM:SendKeyEvent(true, code, false, game)
task.wait(holdTime or 0.09)
VIM:SendKeyEvent(false, code, false, game)
end

local function leftClickAt(x, y, holdTime)
VIM:SendMouseButtonEvent(x, y, 0, true, game, 0)
task.wait(holdTime or 0.09)
VIM:SendMouseButtonEvent(x, y, 0, false, game, 0)
end

-- 평타: 0.22초 간격, 화면 중앙 클릭
task.spawn(function()
while task.wait(0.22) do
if AttackTurn then
local x, y = viewportCenter()
leftClickAt(x, y)
end
end
end)

-- 스킬이 키가 아니라 화면 버튼이면 우선 클릭, 없으면 키 전송
local function clickGuiKeyButton(keyName)
local roots = {
CoolPlr.PlayerGui:FindFirstChild("Play"),
CoolPlr.PlayerGui:FindFirstChild("Main")
}
for _, root in ipairs(roots) do
if root then
for _, obj in ipairs(root:GetDescendants()) do
if obj:IsA("GuiButton") and obj.Visible
and obj.Name:lower() == tostring(keyName):lower() then
local p = obj.AbsolutePosition + obj.AbsoluteSize / 2
leftClickAt(p.X, p.Y, 0.06)
return true
end
end
end
end
return false
end

-- 스킬: 키마다 개별 쿨타임, 한 틱에 한 키만(동시 입력 방지)
task.spawn(function()
local nextAt = {}
while task.wait(0.05) do
if AutoKeyTurn then
for keyName, enabled in pairs(SelectedKeys) do
if enabled and tick() >= (nextAt[keyName] or 0) then
nextAt[keyName] = tick() + 0.35
if not clickGuiKeyButton(keyName) then
holdKey(keyName, 0.09)
end
break
end
end
end
end
end)

local function applyESP(model)
if not model:FindFirstChild("EspHighlight") then
local hl = Instance.new("Highlight")
hl.Name = "EspHighlight"; hl.Parent = model
hl.FillColor = Color3.fromRGB(255, 0, 0); hl.OutlineColor = Color3.new(1, 1, 1)
hl.FillTransparency = 0.5; hl.OutlineTransparency = 0; hl.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
end
end

task.spawn(function()
while task.wait(1) do
if EspTurn then
for _, obj in pairs(workspace:GetDescendants()) do
if obj:IsA("Model") and obj.Name:lower():find("skibidi") then
applyESP(obj)
end
end
else
for _, obj in pairs(workspace:GetDescendants()) do
local hl = obj:FindFirstChild("EspHighlight")
if hl then hl:Destroy() end
end
end
end
end)

-- Экран выбора языка с эпичной анимацией взрыва/раширения
local SplashOverlay = Instance.new("Frame", Gui)
SplashOverlay.Size = UDim2.new(1, 0, 1, 0)
SplashOverlay.BackgroundColor3 = Color3.fromRGB(5, 5, 8)
SplashOverlay.BackgroundTransparency = 0.1
SplashOverlay.ZIndex = 100

local ImageFrame = Instance.new("ImageLabel", SplashOverlay)
ImageFrame.Size = UDim2.new(0, 420, 0, 310)
ImageFrame.Position = UDim2.new(0.5, -210, 0.5, -155)
ImageFrame.BackgroundTransparency = 1
ImageFrame.Image = getAsset(IMAGE_URL)
ImageFrame.ScaleType = Enum.ScaleType.Fit
ImageFrame.ZIndex = 101

local QuestionText = Instance.new("TextLabel", ImageFrame)
QuestionText.Size = UDim2.new(1, 0, 0, 60)
QuestionText.Position = UDim2.new(0, 0, 0, 0)
QuestionText.BackgroundTransparency = 1
QuestionText.Text = "WHICH ONE WILL YOU CHOOSE?\nWHO ARE YOU, WARRIOR?"
QuestionText.TextColor3 = Color3.fromRGB(245, 245, 255)
QuestionText.Font = Enum.Font.GothamBold
QuestionText.TextSize = 13
QuestionText.ZIndex = 102

local BlueBtn = Instance.new("TextButton", SplashOverlay)
BlueBtn.Size = UDim2.new(0, 150, 0, 70)
BlueBtn.Position = UDim2.new(0.5, -230, 0.5, 40)
BlueBtn.BackgroundColor3 = Color3.fromRGB(0, 140, 220)
BlueBtn.BackgroundTransparency = 0.2
BlueBtn.Text = "🇰🇷 한국어"
BlueBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
BlueBtn.Font = Enum.Font.GothamBold
BlueBtn.TextSize = 14
BlueBtn.ZIndex = 103
Instance.new("UICorner", BlueBtn).CornerRadius = UDim.new(0, 12)
local BlueStroke = Instance.new("UIStroke", BlueBtn)
BlueStroke.Color = Color3.fromRGB(0, 210, 255)
BlueStroke.Thickness = 1.5

local RedBtn = Instance.new("TextButton", SplashOverlay)
RedBtn.Size = UDim2.new(0, 150, 0, 70)
RedBtn.Position = UDim2.new(0.5, 80, 0.5, 40)
RedBtn.BackgroundColor3 = Color3.fromRGB(220, 40, 60)
RedBtn.BackgroundTransparency = 0.2
RedBtn.Text = "🇬🇧 ENGLISH"
RedBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
RedBtn.Font = Enum.Font.GothamBold
RedBtn.TextSize = 14
RedBtn.ZIndex = 103
Instance.new("UICorner", RedBtn).CornerRadius = UDim.new(0, 12)
local RedStroke = Instance.new("UIStroke", RedBtn)
RedStroke.Color = Color3.fromRGB(255, 100, 120)
RedStroke.Thickness = 1.5

-- Главный интерфейс
local Main = Instance.new("Frame", Gui)
Main.Size = UDim2.new(0, 530, 0, 380)
Main.Position = UDim2.new(0.5, -265, 0.5, -190)
Main.BackgroundColor3 = Color3.fromRGB(13, 14, 18)
Main.BackgroundTransparency = 0
Main.ClipsDescendants = false
Main.Visible = false
Instance.new("UICorner", Main).CornerRadius = UDim.new(0, 16)

local MainStroke = Instance.new("UIStroke", Main)
MainStroke.Color = Color3.fromRGB(35, 38, 52)
MainStroke.Thickness = 1.5

makeDraggable(Main, Main)

local MainGradient = Instance.new("UIGradient", Main)
MainGradient.Color = ColorSequence.new({
ColorSequenceKeypoint.new(0, Color3.fromRGB(20, 22, 32)),
ColorSequenceKeypoint.new(0.5, Color3.fromRGB(14, 15, 20)),
ColorSequenceKeypoint.new(1, Color3.fromRGB(10, 11, 14))
})
MainGradient.Rotation = 60

local OpenBtn = Instance.new("TextButton", Gui)
OpenBtn.Size = UDim2.new(0, 220, 0, 32)
OpenBtn.Position = UDim2.new(0.5, -110, 0, 12)
OpenBtn.BackgroundColor3 = Color3.fromRGB(15, 17, 24)
OpenBtn.BackgroundTransparency = 0.15
OpenBtn.Text = "⚡ " .. HUB_NAME .. " (" .. HUB_VERSION .. ")"
OpenBtn.TextColor3 = Color3.fromRGB(235, 240, 255)
OpenBtn.Font = Enum.Font.GothamBold
OpenBtn.TextSize = 13
OpenBtn.Visible = false
Instance.new("UICorner", OpenBtn).CornerRadius = UDim.new(1, 0)

local OpenStroke = Instance.new("UIStroke", OpenBtn)
OpenStroke.Color = Color3.fromRGB(0, 180, 255)
OpenStroke.Thickness = 1.5
OpenStroke.Transparency = 0.3

makeDraggable(OpenBtn, OpenBtn)

local TopBar = Instance.new("Frame", Main)
TopBar.Size = UDim2.new(1, 0, 0, 48)
TopBar.BackgroundTransparency = 1

local Logo = Instance.new("TextLabel", TopBar)
Logo.Size = UDim2.new(0, 32, 0, 32)
Logo.Position = UDim2.new(0, 14, 0, 8)
Logo.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
Logo.Text = "⚡"
Logo.TextColor3 = Color3.fromRGB(255, 255, 255)
Logo.Font = Enum.Font.GothamBold
Logo.TextSize = 16
Instance.new("UICorner", Logo).CornerRadius = UDim.new(0, 8)

local HubTitle = Instance.new("TextLabel", TopBar)
HubTitle.Size = UDim2.new(0, 300, 1, 0)
HubTitle.Position = UDim2.new(0, 54, 0, 0)
HubTitle.BackgroundTransparency = 1
HubTitle.Text = HUB_NAME .. " (" .. HUB_VERSION .. ")"
HubTitle.TextColor3 = Color3.fromRGB(245, 245, 255)
HubTitle.Font = Enum.Font.GothamBold
HubTitle.TextSize = 13
HubTitle.TextXAlignment = Enum.TextXAlignment.Left

local CloseBtn = Instance.new("TextButton", TopBar)
CloseBtn.Size = UDim2.new(0, 28, 0, 28)
CloseBtn.Position = UDim2.new(1, -38, 0, 10)
CloseBtn.BackgroundColor3 = Color3.fromRGB(255, 55, 75)
CloseBtn.BackgroundTransparency = 0.85
CloseBtn.Text = "X"
CloseBtn.TextColor3 = Color3.fromRGB(255, 90, 105)
CloseBtn.Font = Enum.Font.SourceSansBold
CloseBtn.TextSize = 15
Instance.new("UICorner", CloseBtn).CornerRadius = UDim.new(0, 8)

local Sep = Instance.new("Frame", Main)
Sep.Size = UDim2.new(1, -28, 0, 2)
Sep.Position = UDim2.new(0, 14, 0, 52)
Sep.BackgroundColor3 = Color3.fromRGB(0, 80, 255)
Sep.BorderSizePixel = 0
Instance.new("UICorner", Sep).CornerRadius = UDim.new(1, 0)

-- Система тем
local CurrentTheme = "Синяя"
local activeThemeColor = Color3.fromRGB(0, 140, 220)
local activeThemeCyan = Color3.fromRGB(0, 210, 255)

local InfoStrokeGlobalRef = nil
local ActiveTabIndicatorRef = nil
local IndicatorStrokeRef = nil
local allStyledButtons = {}
local allStyledStrokes = {}
local allScrollFrames = {}

local function updateThemeColors()
if CurrentTheme == "Зеленая" then
activeThemeColor = Color3.fromRGB(0, 180, 80)
activeThemeCyan = Color3.fromRGB(50, 255, 120)
elseif CurrentTheme == "Фиолетовая" then
activeThemeColor = Color3.fromRGB(130, 40, 220)
activeThemeCyan = Color3.fromRGB(190, 100, 255)
else
activeThemeColor = Color3.fromRGB(0, 140, 220)
activeThemeCyan = Color3.fromRGB(0, 210, 255)
end

Sep.BackgroundColor3 = activeThemeColor
OpenStroke.Color = activeThemeCyan
Logo.BackgroundColor3 = activeThemeColor

if ActiveTabIndicatorRef then ActiveTabIndicatorRef.BackgroundColor3 = activeThemeColor end
if IndicatorStrokeRef then IndicatorStrokeRef.Color = activeThemeCyan end
if InfoStrokeGlobalRef then InfoStrokeGlobalRef.Color = activeThemeCyan end

for _, scroll in ipairs(allScrollFrames) do scroll.ScrollBarImageColor3 = activeThemeCyan end
for _, btn in ipairs(allStyledButtons) do
if btn:GetAttribute("IsActive") then btn.BackgroundColor3 = activeThemeColor end
end
end

local clock = 0
RunService.Heartbeat:Connect(function(dt)
clock = clock + dt * 2
local alpha = (math.sin(clock) + 1) / 2
Sep.BackgroundColor3 = activeThemeColor:Lerp(activeThemeCyan, alpha)

-- Логика автофарма
if Turn and CoolPlr.Character and CoolPlr.Character:FindFirstChild("HumanoidRootPart") and CoolPlr.Character:FindFirstChildOfClass("Humanoid") and CoolPlr.Character.Humanoid.Health > 0 then
local t = nil; local liv = workspace:FindFirstChild("Living")
if liv then
local myChar = CoolPlr.Character
for _, m in pairs(liv:GetChildren()) do
if m:FindFirstChild("Humanoid") and m.Humanoid.Health > 0 then
local isEnemy = false
if FactionModule and FactionModule.IsEnemy then
pcall(function()
isEnemy = FactionModule.IsEnemy({Player = myChar, Target = m}) == true
end)
end
if isEnemy or m:FindFirstChild("AI") then
t = m
break
end
end
end
end

if t and t:FindFirstChild("HumanoidRootPart") then
if not WaitingForFarm then
WaitingForFarm = true
EnemyDetectedTime = tick()
end
if tick() - EnemyDetectedTime >= FarmDelay then
CoolPlr.Character.HumanoidRootPart.CFrame = t.HumanoidRootPart.CFrame * CFrame.new(0, 0, 4)
end
else
WaitingForFarm = false
end
else
WaitingForFarm = false
end
end)

local Sidebar = Instance.new("Frame", Main)
Sidebar.Size = UDim2.new(0, 135, 1, -64)
Sidebar.Position = UDim2.new(0, 14, 0, 60)
Sidebar.BackgroundTransparency = 1
Sidebar.ClipsDescendants = false
Sidebar.ZIndex = 5

local ContentFolder = Instance.new("Frame", Main)
ContentFolder.Size = UDim2.new(1, -173, 1, -64)
ContentFolder.Position = UDim2.new(0, 158, 0, 60)
ContentFolder.BackgroundTransparency = 1
ContentFolder.ClipsDescendants = true
ContentFolder.ZIndex = 5

local ActiveTabIndicator = Instance.new("Frame", Sidebar)
ActiveTabIndicator.Size = UDim2.new(1, 0, 0, 34)
ActiveTabIndicator.Position = UDim2.new(0, 0, 0, 0)
ActiveTabIndicator.BackgroundColor3 = Color3.fromRGB(0, 150, 230)
ActiveTabIndicator.ZIndex = 1
ActiveTabIndicatorRef = ActiveTabIndicator
Instance.new("UICorner", ActiveTabIndicator).CornerRadius = UDim.new(0, 9)

local IndicatorStroke = Instance.new("UIStroke", ActiveTabIndicator)
IndicatorStroke.Color = Color3.fromRGB(0, 210, 255)
IndicatorStroke.Thickness = 1.2
IndicatorStroke.Transparency = 0.3
IndicatorStrokeRef = IndicatorStroke

local tabs = {}
local tabPages = {}
local tabButtonsList = {}
local currentActiveBtn = nil
local isAnimating = false

local function createPage(key, isSettings)
local page = Instance.new("ScrollingFrame", ContentFolder)
page.ScrollingEnabled = true
page.ScrollBarThickness = 2
page.ScrollBarImageColor3 = Color3.fromRGB(0, 180, 255)
table.insert(allScrollFrames, page)

local list = Instance.new("UIListLayout", page)
list.Padding = UDim.new(0, 8)
list.SortOrder = Enum.SortOrder.LayoutOrder

list:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
page.CanvasSize = UDim2.new(0, 0, 0, list.AbsoluteContentSize.Y + 40)
end)

page.Size = UDim2.new(1, 0, 1, 0)
page.BackgroundTransparency = 1
page.Visible = false
page.ClipsDescendants = false
page.ZIndex = 6

tabPages[key] = page
return page
end

local function animateLiquidTo(targetButton, key)
if currentActiveBtn == targetButton or isAnimating then return end
isAnimating = true
currentActiveBtn = targetButton

for k, p in pairs(tabPages) do p.Visible = (k == key) end

for _, btn in ipairs(tabs) do
local isCurrent = (btn == targetButton)
TS:Create(btn, TweenInfo.new(0.25), {
TextColor3 = isCurrent and Color3.fromRGB(255, 255, 255) or Color3.fromRGB(130, 135, 155)
}):Play()
end

local targetY = targetButton.Position.Y.Offset

TS:Create(ActiveTabIndicator, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
Size = UDim2.new(0.65, 0, 0, 38),
Position = UDim2.new(0.175, 0, 0, ActiveTabIndicator.Position.Y.Offset - 2)
}):Play()

task.wait(0.08)

TS:Create(ActiveTabIndicator, TweenInfo.new(0.18, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
Position = UDim2.new(0.175, 0, 0, targetY - 2)
}):Play()

task.wait(0.12)

local expandTween = TS:Create(ActiveTabIndicator, TweenInfo.new(0.15, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {
Size = UDim2.new(1, 0, 0, 34),
Position = UDim2.new(0, 0, 0, targetY)
})
expandTween:Play()

expandTween.Completed:Connect(function() isAnimating = false end)
end

local function createTab(key, index, isSettings)
local tab = Instance.new("TextButton", Sidebar)
tab.Size = UDim2.new(1, 0, 0, 34)
tab.BackgroundTransparency = 1
tab.TextColor3 = (index == 1) and Color3.fromRGB(255, 255, 255) or Color3.fromRGB(130, 135, 155)
tab.Font = Enum.Font.GothamSemibold
tab.TextSize = 12
tab.ZIndex = 7

local posY = (index - 1) * 40
tab.Position = UDim2.new(0, 0, 0, posY)

local page = createPage(key, isSettings)

if index == 1 then
currentActiveBtn = tab
ActiveTabIndicator.Position = UDim2.new(0, 0, 0, posY)
page.Visible = true
end

table.insert(tabs, tab)
tabButtonsList[key] = tab

tab.MouseButton1Click:Connect(function() animateLiquidTo(tab, key) end)
return page
end

local infoPage = createTab("tabInfo", 1, false)
local farmPage = createTab("tabFarm", 2, false)
local visualPage = createTab("tabVisuals", 3, false)
local votePage = createTab("tabVote", 4, false)
local settingsPage = createTab("tabSettings", 5, true)

local InfoBox = Instance.new("Frame", infoPage)
InfoBox.Size = UDim2.new(1, -6, 0, 185)
InfoBox.BackgroundColor3 = Color3.fromRGB(21, 23, 31)
InfoBox.ZIndex = 6
Instance.new("UICorner", InfoBox).CornerRadius = UDim.new(0, 12)
local InfoStroke = Instance.new("UIStroke", InfoBox)
InfoStroke.Color = Color3.fromRGB(0, 180, 255)
InfoStroke.Thickness = 1.2
InfoStroke.Transparency = 0.4
InfoStrokeGlobalRef = InfoStroke

local InfoTextLabel = Instance.new("TextLabel", InfoBox)
InfoTextLabel.Size = UDim2.new(1, -24, 1, -24)
InfoTextLabel.Position = UDim2.new(0, 12, 0, 12)
InfoTextLabel.BackgroundTransparency = 1
InfoTextLabel.TextColor3 = Color3.fromRGB(215, 225, 245)
InfoTextLabel.Font = Enum.Font.GothamMedium
InfoTextLabel.TextSize = 13
InfoTextLabel.ZIndex = 7
InfoTextLabel.TextXAlignment = Enum.TextXAlignment.Left
InfoTextLabel.TextYAlignment = Enum.TextYAlignment.Top
InfoTextLabel.TextWrapped = true

local function createStyledBtn(parent)
local b = Instance.new("TextButton", parent)
b.Size = UDim2.new(1, -6, 0, 40)
b.BackgroundColor3 = Color3.fromRGB(21, 23, 31)
b.TextColor3 = Color3.fromRGB(190, 195, 210)
b.Font = Enum.Font.GothamSemibold
b.TextSize = 13
b.ZIndex = 8
b.TextXAlignment = Enum.TextXAlignment.Left
b:SetAttribute("IsActive", false)

table.insert(allStyledButtons, b)

Instance.new("UICorner", b).CornerRadius = UDim.new(0, 10)
local str = Instance.new("UIStroke", b)
str.Color = Color3.fromRGB(35, 38, 52)
str.Thickness = 1
table.insert(allStyledStrokes, str)

Instance.new("UIPadding", b).PaddingLeft = UDim.new(0, 15)

b.MouseEnter:Connect(function()
TS:Create(str, TweenInfo.new(0.2), {Color = activeThemeCyan}):Play()
if not b:GetAttribute("IsActive") then
TS:Create(b, TweenInfo.new(0.2), {BackgroundColor3 = Color3.fromRGB(28, 31, 43)}):Play()
end
end)

b.MouseLeave:Connect(function()
TS:Create(str, TweenInfo.new(0.2), {Color = Color3.fromRGB(35, 38, 52)}):Play()
if not b:GetAttribute("IsActive") then
TS:Create(b, TweenInfo.new(0.2), {BackgroundColor3 = Color3.fromRGB(21, 23, 31)}):Play()
end
end)
return b
end

local AutoBtnSelectorMain = createStyledBtn(farmPage)
AutoBtnSelectorMain.LayoutOrder = 1

local AutoBtnScroll = Instance.new("ScrollingFrame", farmPage)
AutoBtnScroll.Size = UDim2.new(1, -6, 0, 0)
AutoBtnScroll.BackgroundColor3 = Color3.fromRGB(21, 23, 31)
AutoBtnScroll.Visible = false
AutoBtnScroll.ZIndex = 50
AutoBtnScroll.BorderSizePixel = 0
AutoBtnScroll.ScrollBarThickness = 3
AutoBtnScroll.ScrollBarImageColor3 = Color3.fromRGB(0, 180, 255)
AutoBtnScroll.CanvasSize = UDim2.new(0, 0, 0, 500)
AutoBtnScroll.LayoutOrder = 2
table.insert(allScrollFrames, AutoBtnScroll)

Instance.new("UICorner", AutoBtnScroll).CornerRadius = UDim.new(0, 10)
local scrollListLayout = Instance.new("UIListLayout", AutoBtnScroll)
scrollListLayout.Padding = UDim.new(0, 4)

local function createKeyToggle(keyName)
local btn = Instance.new("TextButton", AutoBtnScroll)
btn.Size = UDim2.new(1, -6, 0, 32)
btn.BackgroundColor3 = Color3.fromRGB(28, 31, 43)
btn.TextColor3 = Color3.fromRGB(200, 205, 220)
local L = Langs[CurrentLang] or Langs["English"]
btn.Text = (L.KeyPrefix or " 키: [") .. keyName:upper() .. "]"
btn.Font = Enum.Font.GothamSemibold
btn.TextSize = 12
btn.TextXAlignment = Enum.TextXAlignment.Left
btn.ZIndex = 51
Instance.new("UICorner", btn).CornerRadius = UDim.new(0, 6)

keyButtonsMap[keyName] = btn

local function applyVisual()
btn.BackgroundColor3 = SelectedKeys[keyName] and activeThemeColor or Color3.fromRGB(28, 31, 43)
btn.TextColor3 = SelectedKeys[keyName] and Color3.fromRGB(255, 255, 255) or Color3.fromRGB(200, 205, 220)
end
btn.MouseButton1Click:Connect(function()
SelectedKeys[keyName] = not SelectedKeys[keyName]
applyVisual()
end)
end

for _, k in ipairs({"X", "T", "F", "H", "Y", "G", "v", "B", "Z", "R", "E", "Q", "U", "C"}) do
createKeyToggle(k)
end

local autoBtnOpen = false
AutoBtnSelectorMain.MouseButton1Click:Connect(function()
autoBtnOpen = not autoBtnOpen
if autoBtnOpen then
AutoBtnScroll.Visible = true
TS:Create(AutoBtnScroll, TweenInfo.new(0.2), {Size = UDim2.new(1, -6, 0, 150)}):Play()
else
TS:Create(AutoBtnScroll, TweenInfo.new(0.2), {Size = UDim2.new(1, -6, 0, 0)}):Play()
task.wait(0.2)
if not autoBtnOpen then AutoBtnScroll.Visible = false end
end
end)

local AutoKeyTriggerB = createStyledBtn(farmPage); AutoKeyTriggerB.LayoutOrder = 3
local TpB = createStyledBtn(farmPage); TpB.LayoutOrder = 4
local AtkB = createStyledBtn(farmPage); AtkB.LayoutOrder = 5
local KillB = createStyledBtn(farmPage); KillB.LayoutOrder = 6
local ReadyB = createStyledBtn(farmPage); ReadyB.LayoutOrder = 7

local EspB = createStyledBtn(visualPage); EspB.LayoutOrder = 1
local VoteBtn = createStyledBtn(votePage); VoteBtn.LayoutOrder = 1

-- АНТИ-АФК ТЕПЕРЬ В НАСТРОЙКАХ (внизу кнопок настроек)
local HeliSkipB = createStyledBtn(settingsPage); HeliSkipB.LayoutOrder = 5
local AfkBBtn = createStyledBtn(settingsPage); AfkBBtn.LayoutOrder = 10

local VoteModeContainer = Instance.new("ScrollingFrame", votePage)
VoteModeContainer.Size = UDim2.new(1, -6, 0, 250)
VoteModeContainer.BackgroundTransparency = 1
VoteModeContainer.ScrollBarThickness = 4
VoteModeContainer.ScrollBarImageColor3 = Color3.fromRGB(0, 180, 255)
VoteModeContainer.ZIndex = 8
VoteModeContainer.CanvasSize = UDim2.new(0, 0, 0, 0)
VoteModeContainer.LayoutOrder = 2
table.insert(allScrollFrames, VoteModeContainer)

local voteListLayout = Instance.new("UIListLayout", VoteModeContainer)
voteListLayout.Padding = UDim.new(0, 6)
voteListLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
VoteModeContainer.CanvasSize = UDim2.new(0, 0, 0, voteListLayout.AbsoluteContentSize.Y + 20)
end)

local voteButtonsMap = {}
local rawVoteModes = {"Normal", "Hard", "VeryHard", "Insane", "Nightmare", "BossRush", "ThunderStorm", "Zombie", "ZombieV2", "Christmas", "Hell", "DarkDimension", "Astro", "AstroV2", "BattleArmorAct1", "Soundwave", "Halloween"}

for _, mode in pairs(rawVoteModes) do
local b = createStyledBtn(VoteModeContainer)
voteButtonsMap[mode] = b
local localizedName = (VoteModesTranslated[mode] and VoteModesTranslated[mode][CurrentLang]) or mode
b.Text = "🗳️ " .. localizedName

b.MouseButton1Click:Connect(function()
SelectedVoteMode = mode
for _, obj in pairs(VoteModeContainer:GetChildren()) do
if obj:IsA("TextButton") then
obj:SetAttribute("IsActive", false)
TS:Create(obj, TweenInfo.new(0.15), {BackgroundColor3 = Color3.fromRGB(21, 23, 31), TextColor3 = Color3.fromRGB(190, 195, 210)}):Play()
end
end
b:SetAttribute("IsActive", true)
TS:Create(b, TweenInfo.new(0.15), {BackgroundColor3 = activeThemeColor, TextColor3 = Color3.fromRGB(255, 255, 255)}):Play()
end)
end

local speedDropdownRef, themeDropdownRef, alphaDropdownRef, langDropdownRef

local function createFixedDropdownSetting(parent, orderIndex, titleText, optionsArray, onSelectCallback)
local cont = Instance.new("Frame", parent)
cont.Size = UDim2.new(1, -6, 0, 40)
cont.BackgroundTransparency = 1
cont.ZIndex = 8
cont.LayoutOrder = orderIndex

local lab = Instance.new("TextLabel", cont)
lab.Size = UDim2.new(0.4, 0, 1, 0)
lab.Position = UDim2.new(0, 12, 0, 0)
lab.BackgroundTransparency = 1
lab.TextColor3 = Color3.fromRGB(190, 195, 210)
lab.Font = Enum.Font.GothamSemibold
lab.TextSize = 13
lab.ZIndex = 9
lab.TextXAlignment = Enum.TextXAlignment.Left
lab.Text = " " .. titleText

local btn = Instance.new("TextButton", cont)
btn.Size = UDim2.new(0.55, 0, 0, 36)
btn.Position = UDim2.new(0.45, 0, 0, 2)
btn.BackgroundColor3 = Color3.fromRGB(21, 23, 31)
btn.TextColor3 = Color3.fromRGB(255, 255, 255)
btn.Font = Enum.Font.GothamSemibold
btn.TextSize = 13
btn.ZIndex = 50
Instance.new("UICorner", btn).CornerRadius = UDim.new(0, 10)
local stroke = Instance.new("UIStroke", btn)
stroke.Color = Color3.fromRGB(35, 38, 52)

local scroll = Instance.new("ScrollingFrame", btn)
scroll.Size = UDim2.new(1, 0, 0, 0)
scroll.Position = UDim2.new(0, 0, 1, 5)
scroll.BackgroundColor3 = Color3.fromRGB(21, 23, 31)
scroll.Visible = false
scroll.ZIndex = 60
scroll.BorderSizePixel = 0
scroll.ScrollBarThickness = 3
scroll.ScrollBarImageColor3 = Color3.fromRGB(0, 180, 255)
table.insert(allScrollFrames, scroll)
scroll.CanvasSize = UDim2.new(0, 0, 0, #optionsArray * 36)
Instance.new("UICorner", scroll).CornerRadius = UDim.new(0, 8)
Instance.new("UIListLayout", scroll).Padding = UDim.new(0, 4)

for _, optData in ipairs(optionsArray) do
local optBtn = Instance.new("TextButton", scroll)
optBtn.Size = UDim2.new(1, -4, 0, 32)
optBtn.BackgroundColor3 = Color3.fromRGB(28, 31, 43)
optBtn.TextColor3 = Color3.fromRGB(210, 215, 230)
optBtn.Text = optData.name
optBtn.Font = Enum.Font.GothamSemibold
optBtn.TextSize = 12
optBtn.ZIndex = 61
Instance.new("UICorner", optBtn).CornerRadius = UDim.new(0, 6)

optBtn.MouseButton1Click:Connect(function()
TS:Create(scroll, TweenInfo.new(0.2), {Size = UDim2.new(1, 0, 0, 0)}):Play()
task.wait(0.2)
scroll.Visible = false
onSelectCallback(optData)
end)
end

local isOpenDropdown = false
btn.MouseButton1Click:Connect(function()
isOpenDropdown = not isOpenDropdown
if isOpenDropdown then
scroll.Visible = true
local targetH = math.clamp(#optionsArray * 36, 0, 130)
TS:Create(scroll, TweenInfo.new(0.2), {Size = UDim2.new(1, 0, 0, targetH)}):Play()
else
TS:Create(scroll, TweenInfo.new(0.2), {Size = UDim2.new(1, 0, 0, 0)}):Play()
task.wait(0.2)
if not isOpenDropdown then scroll.Visible = false end
end
end)

return {Button = btn, Label = lab}
end

local speedOptions = {}
for i = 10, 100, 10 do table.insert(speedOptions, {name = tostring(i), value = i}) end

local themeOptions = {
{name = "Синяя 🔵", value = "Синяя"},
{name = "Зеленая 🟢", value = "Зеленая"},
{name = "Фиолетовая 🟣", value = "Фиолетовая"}
}

local alphaOptions = {
{name = "1. Непрозрачный", value = 0},
{name = "2. Чуть виден", value = 0.15},
{name = "3. Средне", value = 0.3},
{name = "4. Сильно", value = 0.45},
{name = "5. Максимум", value = 0.6}
}

local langOptions = {
{name = "한국어", value = "한국어"},
{name = "Русский", value = "Русский"},
{name = "English", value = "English"},
{name = "Українська", value = "Українська"},
{name = "Español", value = "Español"},
{name = "Deutsch", value = "Deutsch"},
{name = "Français", value = "Français"},
{name = "Türkçe", value = "Türkçe"}
}

speedDropdownRef = createFixedDropdownSetting(settingsPage, 1, "이동 속도", speedOptions, function(opt)
SelectedSpeed = opt.value
speedDropdownRef.Button.Text = tostring(opt.value)
pcall(function()
if CoolPlr.Character then
local hum = CoolPlr.Character:FindFirstChildOfClass("Humanoid")
if hum then hum.WalkSpeed = SelectedSpeed end
end
end)
end)
speedDropdownRef.Button.Text = tostring(SelectedSpeed)

themeDropdownRef = createFixedDropdownSetting(settingsPage, 2, "메뉴 테마", themeOptions, function(opt)
CurrentTheme = opt.value
themeDropdownRef.Button.Text = opt.name
updateThemeColors()
updateUI()
end)
themeDropdownRef.Button.Text = "Синяя 🔵"

alphaDropdownRef = createFixedDropdownSetting(settingsPage, 3, "투명도", alphaOptions, function(opt)
alphaDropdownRef.Button.Text = opt.name
TS:Create(Main, TweenInfo.new(0.3), {BackgroundTransparency = opt.value}):Play()
end)
alphaDropdownRef.Button.Text = "1. Непрозрачный"

langDropdownRef = createFixedDropdownSetting(settingsPage, 4, "언어", langOptions, function(opt)
CurrentLang = opt.value
langDropdownRef.Button.Text = opt.name
updateUI()
end)
langDropdownRef.Button.Text = "한국어"

function updateUI()
local L = Langs[CurrentLang] or Langs["English"]

if CurrentLang == "한국어" then
tabButtonsList["tabInfo"].Text = "ℹ️ 정보"
elseif CurrentLang == "English" then
tabButtonsList["tabInfo"].Text = "ℹ️ Info"
else
tabButtonsList["tabInfo"].Text = "ℹ️ Инфо"
end
tabButtonsList["tabFarm"].Text = L.FarmT
tabButtonsList["tabVisuals"].Text = L.VisT
tabButtonsList["tabVote"].Text = L.VoteT
tabButtonsList["tabSettings"].Text = L.SettT

HubTitle.Text = HUB_NAME .. " (" .. HUB_VERSION .. ")"
InfoTextLabel.Text = L.infoText

TpB.Text = L.AFarm .. ": " .. (Turn and "ON" or "OFF")
AtkB.Text = L.AAtk .. ": " .. (AttackTurn and "ON" or "OFF")
KillB.Text = L.AKill .. ": " .. (AutoKillTurn and "ON" or "OFF")
AutoBtnSelectorMain.Text = L.KeySelector
AutoKeyTriggerB.Text = L.AutoKeyTrigger .. ": " .. (AutoKeyTurn and "ON" or "OFF")
ReadyB.Text = L.AReady .. ": " .. (AutoReadyTurn and "ON" or "OFF")
EspB.Text = L.ESP .. ": " .. (EspTurn and "ON" or "OFF")
AfkBBtn.Text = L.AFK .. ": " .. (AfkTurn and "ON" or "OFF")
HeliSkipB.Text = (HeliSkipLabels[CurrentLang] or "HELI SKIP") .. ": " .. (AutoHeliSkipTurn and "ON" or "OFF")
VoteBtn.Text = L.AVote .. ": " .. (AutoVoteTurn and "ON" or "OFF")

speedDropdownRef.Label.Text = " " .. L.SpeedText
themeDropdownRef.Label.Text = " " .. L.ThemeText
alphaDropdownRef.Label.Text = " " .. L.AlphaText
langDropdownRef.Label.Text = " " .. L.Lang

for kName, btnObj in pairs(keyButtonsMap) do
if btnObj then
btnObj.Text = (L.KeyPrefix or " 키: [") .. kName:upper() .. "]"
end
end

for _, mode in pairs(rawVoteModes) do
local btn = voteButtonsMap[mode]
if btn then
local localizedName = (VoteModesTranslated[mode] and VoteModesTranslated[mode][CurrentLang]) or mode
local isSelected = (SelectedVoteMode == mode)
btn.Text = "🗳️ " .. localizedName
btn:SetAttribute("IsActive", isSelected)
if isSelected then
btn.BackgroundColor3 = activeThemeColor
btn.TextColor3 = Color3.fromRGB(255, 255, 255)
else
btn.BackgroundColor3 = Color3.fromRGB(21, 23, 31)
btn.TextColor3 = Color3.fromRGB(190, 195, 210)
end
end
end

local function applyColor(btn, state)
btn:SetAttribute("IsActive", state)
if state then
TS:Create(btn, TweenInfo.new(0.2), {BackgroundColor3 = activeThemeColor, TextColor3 = Color3.fromRGB(255, 255, 255)}):Play()
else
TS:Create(btn, TweenInfo.new(0.2), {BackgroundColor3 = Color3.fromRGB(21, 23, 31), TextColor3 = Color3.fromRGB(190, 195, 210)}):Play()
end
end
applyColor(TpB, Turn)
applyColor(AtkB, AttackTurn)
applyColor(KillB, AutoKillTurn)
applyColor(ReadyB, AutoReadyTurn)
applyColor(AutoKeyTriggerB, AutoKeyTurn)
applyColor(EspB, EspTurn)
applyColor(AfkBBtn, AfkTurn)
applyColor(HeliSkipB, AutoHeliSkipTurn)
applyColor(VoteBtn, AutoVoteTurn)
end

TpB.MouseButton1Click:Connect(function() Turn = not Turn; updateUI() end)
AtkB.MouseButton1Click:Connect(function() AttackTurn = not AttackTurn; updateUI() end)
KillB.MouseButton1Click:Connect(function() AutoKillTurn = not AutoKillTurn; updateUI() end)
ReadyB.MouseButton1Click:Connect(function() AutoReadyTurn = not AutoReadyTurn; updateUI() end)
AutoKeyTriggerB.MouseButton1Click:Connect(function() AutoKeyTurn = not AutoKeyTurn; updateUI() end)
AfkBBtn.MouseButton1Click:Connect(function() AfkTurn = not AfkTurn; updateUI() end)
HeliSkipB.MouseButton1Click:Connect(function() AutoHeliSkipTurn = not AutoHeliSkipTurn; updateUI() end)
EspB.MouseButton1Click:Connect(function() EspTurn = not EspTurn; updateUI() end)
VoteBtn.MouseButton1Click:Connect(function() AutoVoteTurn = not AutoVoteTurn; updateUI() end)

-- Эпичная логика выбора языка с анимацией взрыва/раширения
local function selectLanguageAndStart(lang, chosenBtn, otherBtn)
CurrentLang = lang
langDropdownRef.Button.Text = lang
updateUI()

-- Невыбранный язык «взрывается» (быстро увеличивается и исчезает)
TS:Create(otherBtn, TweenInfo.new(0.25, Enum.EasingStyle.Back, Enum.EasingDirection.In), {
Size = UDim2.new(0, 0, 0, 0),
Position = otherBtn.Position + UDim2.new(0, 75, 0, 35),
BackgroundTransparency = 1
}):Play()
TS:Create(QuestionText, TweenInfo.new(0.2), {TextTransparency = 1}):Play()

task.wait(0.2)

-- Выбранный летит в самый центр экрана (где появится меню) и расширяется
local centerPos = UDim2.new(0.5, -75, 0.5, -35)
local moveTween = TS:Create(chosenBtn, TweenInfo.new(0.4, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
Position = centerPos,
Size = UDim2.new(0, 530, 0, 380)
})
moveTween:Play()

TS:Create(chosenBtn, TweenInfo.new(0.3), {BackgroundTransparency = 1}):Play()
TS:Create(ImageFrame, TweenInfo.new(0.3), {ImageTransparency = 1}):Play()

moveTween.Completed:Wait()

-- Плавное появление главного меню
SplashOverlay:Destroy()
Main.Visible = true
Main.Size = UDim2.new(0, 0, 0, 0)
Main.Position = UDim2.new(0.5, 0, 0.5, 0)

TS:Create(Main, TweenInfo.new(0.35, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {
Size = UDim2.new(0, 530, 0, 380),
Position = UDim2.new(0.5, -265, 0.5, -190)
}):Play()
end

BlueBtn.MouseButton1Click:Connect(function() selectLanguageAndStart("한국어", BlueBtn, RedBtn) end)
RedBtn.MouseButton1Click:Connect(function() selectLanguageAndStart("English", RedBtn, BlueBtn) end)

local isOpen = true
local lastPosition = Main.Position
local isToggling = false

local function toggleMain()
if isToggling then return end
isToggling = true
isOpen = not isOpen

if isOpen then
Main.Visible = true
OpenBtn.Visible = false

local targetPos = lastPosition
Main.Position = targetPos + UDim2.new(0, 0, 0, -250)
Main.Size = UDim2.new(0, 10, 0, 10)

TS:Create(Main, TweenInfo.new(0.35, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {
Position = targetPos,
Size = UDim2.new(0, 530, 0, 380)
}):Play()

task.wait(0.35)
isToggling = false
else
lastPosition = Main.Position
local centerPos = lastPosition + UDim2.new(0, 265, 0, 190)

local closeTween = TS:Create(Main, TweenInfo.new(0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {
Position = centerPos,
Size = UDim2.new(0, 0, 0, 0)
})
closeTween:Play()
closeTween.Completed:Wait()

Main.Visible = false
Main.Size = UDim2.new(0, 530, 0, 380)
Main.Position = lastPosition
OpenBtn.Visible = true
isToggling = false
end
end

CloseBtn.MouseButton1Click:Connect(toggleMain)
OpenBtn.MouseButton1Click:Connect(toggleMain)

UIS.InputBegan:Connect(function(i, p)
if not p and i.KeyCode == OpenKey then
toggleMain()
end
end)
updateUI()
