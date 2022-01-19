## $contact.name$
$contact.addr$  
$contact.city$, $contact.state$ $contact.zip$  
$contact.phone$  
$contact.email$  
$contact.github$  
[download resume](./kylejones.pdf)

## Work History
$for(workhistory)$
### $workhistory.company$  $workhistory.year$
**$workhistory.title$**
$for(workhistory.workitems)$
  - $workhistory.workitems$
$endfor$
$endfor$

## Skills and Programming Languages
$for(skills)$
* $skills$
$endfor$

## Education
$for(education)$
* $education.school$       $education.year$
$endfor$
