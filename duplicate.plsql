{\rtf1\ansi\ansicpg1254\deff0\nouicompat\deflang1055{\fonttbl{\f0\fnil\fcharset0 Calibri;}}
{\*\generator Riched20 10.0.19041}\viewkind4\uc1 
\pard\sa200\sl276\slmult1\f0\fs22\lang31 delete from sema\par
where rowid IN (\par
  select rid\par
  from (\par
    select rowid as rid, \par
           row_number() over (partition by department_id order by rowid) as rn\par
    from sema\par
  ) subquery\par
  where rn <> 1\par
);\par
}
 