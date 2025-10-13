if '[Wall Type]' = '10RE' then
  if '[Wall Sheet Length]' = '6.0' then result := 'PB44'
  else if '[Wall Sheet Length]' = '4.8' then result := 'PB43'
  else if '[Wall Sheet Length]' = '4.2' then result := 'PB42'
  else if '[Wall Sheet Length]' = '3.6' then result := 'PB41'
  else if '[Wall Sheet Length]' = '3.0' then result := 'PB40'
  else if '[Wall Sheet Length]' = '2.7' then result := 'PB39'
  else if '[Wall Sheet Length]' = '2.4' then result := 'PB38'
  else result := ''
else if '[Wall Type]' = '13RE' then
  if '[Wall Sheet Length]' = '4.8' then result := 'PB54'
  else if '[Wall Sheet Length]' = '3.6' then result := 'PB53'
  else if '[Wall Sheet Length]' = '3.0' then result := 'PB52'
  else result := ''
else if '[Wall Type]' = '10SS' then
  if '[Wall Sheet Length]' = '6.0' then result := 'PB88'
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
  else if '[Wall Sheet Length]' = '4.8' then result := ''
  else if '[Wall Sheet Length]' = '4.2' then result := ''
  else if '[Wall Sheet Length]' = '3.6' then result := ''
  else if '[Wall Sheet Length]' = '3.0' then result := ''
  else if '[Wall Sheet Length]' = '2.7' then result := ''
  else if '[Wall Sheet Length]' = '2.4' then result := ''
  else result := ''
else if '[Wall Type]' = '10WR' then
  if '[Wall Sheet Length]' = '4.8' then result := 'PB78'
  else if '[Wall Sheet Length]' = '3.6' then result := 'PB77'
  else if '[Wall Sheet Length]' = '3.0' then result := 'PB76'
  else result := ''
else if '[Wall Type]' = '13WR' then
  if '[Wall Sheet Length]' = '3.6' then result := 'PB84'
  else if '[Wall Sheet Length]' = '3.0' then result := 'PB83'
  else result := ''
else if '[Wall Type]' = '13FC' then
  if '[Wall Sheet Length]' = '3.6' then result := 'PB94'
  else result := ''
else if '[Wall Type]' = '16FC' then
  if '[Wall Sheet Length]' = '3.6' then result := 'PB100'
  else if '[Wall Sheet Length]' = '3.0' then result := 'PB99'
  else result := ''
else if '[Wall Type]' = '13MRFC' then
  if '[Wall Sheet Length]' = '3.6' then result := ''
  else if '[Wall Sheet Length]' = '3.0' then result := ''
  else result := ''
else if '[Wall Type]' = '16MRFC' then
  if '[Wall Sheet Length]' = '3.0' then result := 'PB108'
  else result := ''
else if '[Wall Type]' = '6VILLA' then
  if '[Wall Sheet Length]' = '4.2' then result := 'PB130'
  else if '[Wall Sheet Length]' = '3.6' then result := 'PB129'
  else if '[Wall Sheet Length]' = '3.0' then result := 'PB128'
  else if '[Wall Sheet Length]' = '2.4' then result := 'PB127'
  else result := ''
else if '[Wall Type]' = '9VILLA' then
  if '[Wall Sheet Length]' = '3.0' then result := 'PB135'
  else result := ''
else if '[Wall Type]' = '13IMP' then
  result := ''
else
  result := ''