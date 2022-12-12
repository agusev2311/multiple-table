begin
  var q: text;
  assign(q, 'saves/education.txt');
  rewrite(q);
  writeln(q, 'false');
  close(q);
  assign(q, 'saves/reck.txt');
  rewrite(q);
  writeln(q, 0);
  close(q);
  assign(q, 'saves/Premium/nickname.txt');
  rewrite(q);
  writeln(q, 'don''t_have');
  close(q);
end.