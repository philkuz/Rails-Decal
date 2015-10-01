1. What is the difference between new and create for a model?
'new' simply creates the model in the system memory with empty fields while create foregoes system memory and directly writes to the database.
2. What command combined with new will emulate the same behavior as create?
<Model>.save
3. What is the column that exists on every table but we did NOT define?
id
4. What single line of ruby code can insert a cat with the name "hat" in the database?
Cat.create name="hat"
5. What was the most confusing part over the last few weeks?
The seemingly arbitrary use of plurals (appending s to a model name) in rails console vs the singular notation in ruby files.
6. How did you like this homework in comparison with the others?
This homework was more difficult, but I thought it provided an excellenet opportunity to try out problem solving methods that are more valuable than regularly programming.
