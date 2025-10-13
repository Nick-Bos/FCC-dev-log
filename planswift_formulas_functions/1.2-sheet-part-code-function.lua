if '[Wall Type]' = '6.5FLEX' then
  if '[Wall Sheet Length]' = '3.6' then
    result := 'PB101'
  else
    result := ''
else if '[Wall Type]' = '10RE' then
  if '[Wall Sheet Length]' = '6.0' then result := 'PB37'
  else if '[Wall Sheet Length]' = '4.8' then result := 'PB36'
  else if '[Wall Sheet Length]' = '4.2' then result := 'PB35'
  else if '[Wall Sheet Length]' = '3.6' then result := 'PB34'
  else if '[Wall Sheet Length]' = '3.0' then result := 'PB33'
  else if '[Wall Sheet Length]' = '2.7' then result := 'PB32'
  else if '[Wall Sheet Length]' = '2.4' then result := 'PB31'
  else result := ''
else if '[Wall Type]' = '13RE' then
  if '[Wall Sheet Length]' = '6.0' then result := 'PB51'
  else if '[Wall Sheet Length]' = '4.8' then result := 'PB50'
  else if '[Wall Sheet Length]' = '4.2' then result := 'PB49'
  else if '[Wall Sheet Length]' = '3.6' then result := 'PB48'
  else if '[Wall Sheet Length]' = '3.0' then result := 'PB47'
  else if '[Wall Sheet Length]' = '2.7' then result := 'PB46'
  else if '[Wall Sheet Length]' = '2.4' then result := 'PB45'
  else result := ''
else if '[Wall Type]' = '10SS' then
  if '[Wall Sheet Length]' = '6.0' then result := 'PB86'
  else if '[Wall Sheet Length]' = '3.6' then result := 'PB85'
  else if '[Wall Sheet Length]' = '3.0' then result := 'PB87'
  else result := ''
else if '[Wall Type]' = '13SS' then
  if '[Wall Sheet Length]' = '3.0' then result := 'PB89'
  else if '[Wall Sheet Length]' = '2.4' then result := ''
  else result := ''
else if '[Wall Type]' = '10KSS' then
  if '[Wall Sheet Length]' = '6.0' then result := ''
  else if '[Wall Sheet Length]' = '4.8' then result := ''
  else if '[Wall Sheet Length]' = '4.2' then result := ''
  else if '[Wall Sheet Length]' = '3.6' then result := ''
  else if '[Wall Sheet Length]' = '3.0' then result := ''
  else if '[Wall Sheet Length]' = '2.7' then result := ''
  else if '[Wall Sheet Length]' = '2.4' then result := ''
  else result := ''
else if '[Wall Type]' = '13KSS' then
  if '[Wall Sheet Length]' = '6.0' then result := ''
  else if '[Wall Sheet Length]' = '5400' then result := ''
  else if '[Wall Sheet Length]' = '4.8' then result := ''
  else if '[Wall Sheet Length]' = '4.2' then result := ''
  else if '[Wall Sheet Length]' = '3.6' then result := ''
  else if '[Wall Sheet Length]' = '3.0' then result := ''
  else if '[Wall Sheet Length]' = '2.7' then result := ''
  else if '[Wall Sheet Length]' = '2.4' then result := ''
  else result := ''
else if '[Wall Type]' = '10WR' then
  if '[Wall Sheet Length]' = '4.2' then result := 'PB74'
  else if '[Wall Sheet Length]' = '3.6' then result := 'PB73'
  else if '[Wall Sheet Length]' = '3.0' then result := 'PB72'
  else if '[Wall Sheet Length]' = '2.7' then result := 'PB71'
  else if '[Wall Sheet Length]' = '2.4' then result := 'PB70'
  else result := ''
else if '[Wall Type]' = '13WR' then
  if '[Wall Sheet Length]' = '3.6' then result := 'PB82'
  else if '[Wall Sheet Length]' = '3.0' then result := 'PB81'
  else if '[Wall Sheet Length]' = '2.7' then result := 'PB80'
  else result := ''
else if '[Wall Type]' = '13FC' then
  if '[Wall Sheet Length]' = '3.6' then result := 'PB93'
  else if '[Wall Sheet Length]' = '3.0' then result := 'PB92'
  else result := ''
else if '[Wall Type]' = '16FC' then
  if '[Wall Sheet Length]' = '3.6' then result := 'PB98'
  else if '[Wall Sheet Length]' = '3.0' then result := 'PB97'
  else result := ''
else if '[Wall Type]' = '13MRFC' then
  if '[Wall Sheet Length]' = '3.6' then result := 'PB105'
  else if '[Wall Sheet Length]' = '3.0' then result := 'PB104'
  else result := ''
else if '[Wall Type]' = '16MRFC' then
  if '[Wall Sheet Length]' = '3.6' then result := 'PB107'
  else result := ''
else if '[Wall Type]' = '6VILLA' then
  if '[Wall Sheet Length]' = '3.6' then result := 'PB125'
  else if '[Wall Sheet Length]' = '3.0' then result := 'PB124'
  else if '[Wall Sheet Length]' = '2.7' then result := 'PB123'
  else if '[Wall Sheet Length]' = '2.4' then result := 'PB122'
  else result := ''
else if '[Wall Type]' = '9VILLA' then
  if '[Wall Sheet Length]' = '3.6' then result := 'PB134'
  else if '[Wall Sheet Length]' = '3.0' then result := 'PB133'
  else if '[Wall Sheet Length]' = '2.7' then result := 'PB132'
  else if '[Wall Sheet Length]' = '2.4' then result := 'PB131'
  else result := ''
else if '[Wall Type]' = '13IMP' then
  result := ''
else
  result := ''