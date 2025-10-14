// Wall Sheet Length Function
// Created by Nick B

Has1350 := 0  
Has1200 := 0 


if ('[Ceiling Height]' = 2.55) or ('[Ceiling Height]' = 2.7) or ('[Ceiling Height]' = 3.07) or
   ('[Ceiling Height]' = 3.15) or ('[Ceiling Height]' = 3.3) or ('[Ceiling Height]' = 3.375) or
   ('[Ceiling Height]' = 3.9) or ('[Ceiling Height]' = 4.05) then Has1350 := 1
else if ('[Ceiling Height]' = 2.4) or ('[Ceiling Height]' = 3) or ('[Ceiling Height]' = 3.0) or
        ('[Ceiling Height]' = 3.00) or ('[Ceiling Height]' = 3.6) or ('[Ceiling Height]' = 4.2) then Has1200 := 1
else Has1200 := 1

if Has1350 = 1 then
begin
  if '[Wall Type]' = '10RE' then result := '[10RE x 1350 length]'
  else if '[Wall Type]' = '13RE' then result := '[13RE x 1350 length]'
  else if '[Wall Type]' = '10SS' then result := '[10SS x 1350 length]'
  else if '[Wall Type]' = '13SS' then result := '[13SS x 1350 length]'
  else if '[Wall Type]' = '10KSS' then result := '[10KSS x 1350 length]'
  else if '[Wall Type]' = '13KSS' then result := '[13KSS x 1350 length]'
  else if '[Wall Type]' = '10WR' then result := '[10WR x 1350 length]'
  else if '[Wall Type]' = '13WR' then result := '[13WR x 1350 length]'
  else if '[Wall Type]' = '13FC' then result := '[13FC x 1350 length]'
  else if '[Wall Type]' = '16FC' then result := '[16FC x 1350 length]'
  else if '[Wall Type]' = '13MRFC' then result := '[13MRFC x 1350 length]'
  else if '[Wall Type]' = '16MRFC' then result := '[16MRFC x 1350 length]'
  else if '[Wall Type]' = '9VILLA' then result := '[9VILLA x 1350 length]'
  else if '[Wall Type]' = '6VILLA' then result := '[6VILLA x 1350 length]'
  else if '[Wall Type]' = '6.5Flex' then result := '[6.5Flex x 1200 length]'
  else result := 0
end
else
begin
  if '[Wall Type]' = '10RE' then result := '[10RE x 1200 length]'
  else if '[Wall Type]' = '13RE' then result := '[13RE x 1200 length]'
  else if '[Wall Type]' = '6.5Flex' then result := '[6.5Flex x 1200 length]'
  else if '[Wall Type]' = '10SS' then result := '[10SS x 1200 length]'
  else if '[Wall Type]' = '13SS' then result := '[13SS x 1200 length]'
  else if '[Wall Type]' = '10KSS' then result := '[10KSS x 1200 length]'
  else if '[Wall Type]' = '13KSS' then result := '[13KSS x 1200 length]'
  else if '[Wall Type]' = '10WR' then result := '[10WR x 1200 length]'
  else if '[Wall Type]' = '13WR' then result := '[13WR x 1200 length]'
  else if '[Wall Type]' = '13FC' then result := '[13FC x 1200 length]'
  else if '[Wall Type]' = '16FC' then result := '[16FC x 1200 length]'
  else if '[Wall Type]' = '13MRFC' then result := '[13MRFC x 1200 length]'
  else if '[Wall Type]' = '16MRFC' then result := '[16MRFC x 1200 length]'
  else if '[Wall Type]' = '9VILLA' then result := '[9VILLA x 1200 length]'
  else if '[Wall Type]' = '6VILLA' then result := '[6VILLA x 1200 length]'
  else result := 0
end

if '[Location]' <> 'G' then
  if result > 4.2 then result := 4.2

if result = 0 then
  if '[Wall Type]' = '10RE' then result := 6000
  else if '[Wall Type]' = '13RE' then result := 6000
  else if '[Wall Type]' = '6.5Flex' then result := 3600
  else if '[Wall Type]' = '10SS' then result := 6000
  else if '[Wall Type]' = '13SS' then result := 6000
  else if '[Wall Type]' = '10KSS' then result := 6000
  else if '[Wall Type]' = '13KSS' then result := 6000
  else if '[Wall Type]' = '10WR' then result := 4200
  else if '[Wall Type]' = '13WR' then result := 3600
  else if '[Wall Type]' = '13FC' then result := 3600
  else if '[Wall Type]' = '16FC' then result := 3600
  else if '[Wall Type]' = '13MRFC' then result := 3600
  else if '[Wall Type]' = '16MRFC' then result := 3000
  else if '[Wall Type]' = '9VILLA' then result := 3600
  else if '[Wall Type]' = '6VILLA' then result := 3600
  else result := 6000
