program CaesEGato;

uses crt;

function teste(rex, bob, oli: integer): string;
var
  distancia_rex, distancia_bob: integer;
begin
  distancia_rex := abs(rex - oli);
  distancia_bob := abs(bob - oli);
  
  if distancia_rex < distancia_bob then
    teste := 'Rex chegou primeiro no gato'
  else if distancia_bob < distancia_rex then
    teste := 'Bob chegou primeiro no gato'
  else
    teste := 'O gato Oli conseguiu fugir'
end;

var
  rex, bob, oli: integer;

begin
  clrscr; 
  writeln('Digite a posicao de Rex: ');
  readln(rex);
  
  writeln('Digite a posicao de Bob: ');
  readln(bob);
  
  writeln('Digite a posicao de Oli: ');
  readln(oli);

  writeln(teste(rex, bob, oli));

  write('Pressione qualquer tecla para sair');
  ReadKey;
end.