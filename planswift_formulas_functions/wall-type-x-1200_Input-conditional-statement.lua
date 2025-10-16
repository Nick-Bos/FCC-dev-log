// Condition for wall type '10RE' based on ceiling heights
// This condition checks if the wall type is '10RE' and if the ceiling height is one of the specified values 
// (2.4, 3.0, 3.6, or 4.2 meters). If both conditions are met, it returns true; otherwise, it returns false.
('[Wall Type]' = '10RE') and (('[Ceiling Height]' = 2.4) or ('[Ceiling Height]' = 3.6) or (([Ceiling Height] > 2.9) and ([Ceiling Height] < 3.1)) or ('[Ceiling Height]' = 4.2))
      
