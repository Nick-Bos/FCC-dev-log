if '[Ceiling Type]' = '10SC' then
  if '[Ceiling Sheet Length]' = '6.0' then result := 'PB63'
  else if '[Ceiling Sheet Length]' = '4.8' then result := 'PB62'
  else if '[Ceiling Sheet Length]' = '4.2' then result := 'PB61'
  else if '[Ceiling Sheet Length]' = '3.6' then result := 'PB60'
  else if '[Ceiling Sheet Length]' = '3.0' then result := 'PB59'
  else if '[Ceiling Sheet Length]' = '2.7' then result := 'PB58'
  else if '[Ceiling Sheet Length]' = '2.4' then result := 'PB57'
  else result := ''
else if '[Ceiling Type]' = '13RE' then
  if '[Ceiling Sheet Length]' = '6.0' then result := 'PB51'
  else if '[Ceiling Sheet Length]' = '4.8' then result := 'PB50'
  else if '[Ceiling Sheet Length]' = '4.2' then result := 'PB49'
  else if '[Ceiling Sheet Length]' = '3.6' then result := 'PB48'
  else if '[Ceiling Sheet Length]' = '3.0' then result := 'PB47'
  else if '[Ceiling Sheet Length]' = '2.7' then result := 'PB46'
  else if '[Ceiling Sheet Length]' = '2.4' then result := 'PB45'
  else result := ''
else if '[Ceiling Type]' = '10SS' then
  if '[Ceiling Sheet Length]' = '6.0' then result := 'PB88'
  else result := ''
else if '[Ceiling Type]' = '10KSS' then
  if '[Ceiling Sheet Length]' = '6.0' then result := ''
  else if '[Ceiling Sheet Length]' = '4.8' then result := ''
  else if '[Ceiling Sheet Length]' = '4.2' then result := ''
  else if '[Ceiling Sheet Length]' = '3.6' then result := ''
  else if '[Ceiling Sheet Length]' = '3.0' then result := ''
  else if '[Ceiling Sheet Length]' = '2.7' then result := ''
  else if '[Ceiling Sheet Length]' = '2.4' then result := ''
  else result := ''
else if '[Ceiling Type]' = '13KSS' then
  if '[Ceiling Sheet Length]' = '6.0' then result := ''
  else if '[Ceiling Sheet Length]' = '4.8' then result := ''
  else if '[Ceiling Sheet Length]' = '4.2' then result := ''
  else if '[Ceiling Sheet Length]' = '3.6' then result := ''
  else if '[Ceiling Sheet Length]' = '3.0' then result := ''
  else if '[Ceiling Sheet Length]' = '2.7' then result := ''
  else if '[Ceiling Sheet Length]' = '2.4' then result := ''
  else result := ''
else if '[Ceiling Type]' = '10WR' then
  if '[Ceiling Sheet Length]' = '4.8' then result := 'PB78'
  else if '[Ceiling Sheet Length]' = '3.6' then result := 'PB77'
  else if '[Ceiling Sheet Length]' = '3.0' then result := 'PB76'
  else result := ''
else if '[Ceiling Type]' = '13WR' then
  if '[Ceiling Sheet Length]' = '3.6' then result := 'PB84'
  else if '[Ceiling Sheet Length]' = '3.0' then result := 'PB83'
  else result := ''
else if '[Ceiling Type]' = '13FC' then
  if '[Ceiling Sheet Length]' = '3.6' then result := 'PB94'
  else result := ''
else if '[Ceiling Type]' = '16FC' then
  if '[Ceiling Sheet Length]' = '3.6' then result := 'PB100'
  else if '[Ceiling Sheet Length]' = '3.0' then result := 'PB99'
  else result := ''
else if '[Ceiling Type]' = '13MRFC' then
  if '[Ceiling Sheet Length]' = '3.6' then result := ''
  else if '[Ceiling Sheet Length]' = '3.0' then result := ''
  else result := ''
else if '[Ceiling Type]' = '16MRFC' then
  if '[Ceiling Sheet Length]' = '3.0' then result := 'PB108'
  else result := ''
else if '[Ceiling Type]' = '6VILLA' then
  if '[Ceiling Sheet Length]' = '4.2' then result := 'PB130'
  else if '[Ceiling Sheet Length]' = '3.6' then result := 'PB129'
  else if '[Ceiling Sheet Length]' = '3.0' then result := 'PB128'
  else if '[Ceiling Sheet Length]' = '2.4' then result := 'PB127'
  else result := ''
else if '[Ceiling Type]' = '9VILLA' then
  if '[Ceiling Sheet Length]' = '3.0' then result := 'PB135'
  else result := ''
else if '[Ceiling Type]' = '13IMP' then
  result := ''
else
  result := ''
