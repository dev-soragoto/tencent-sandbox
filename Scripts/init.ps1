$UserLanguageList = New-WinUserLanguageList -Language "zh-Hans-CN"

# 删除默认输入法
$UserLanguageList[0].InputMethodTips.Clear()

# 添加微软五笔
$UserLanguageList[0].InputMethodTips.Add("0804:{6A498709-E00B-4C45-A018-8F9E4081AE40}{82590C13-F4DD-44F4-BA1D-8667246FDF8E}")

$LanguageList = Get-WinUserLanguageList

$LanguageList.Add($UserLanguageList[0])

Set-WinUserLanguageList $LanguageList -Force

reg.exe import C:\Scripts\ime_conf.reg
