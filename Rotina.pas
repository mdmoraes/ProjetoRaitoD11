unit Rotina;

interface

 uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db;

type
vetor = array[0..6]of string[3] ;
procedure proprio(var Letra: string) ;
procedure Found_Letter(var Subst: String; var ACH: boolean) ;
procedure DeleteAll(const DataSet: TDataSet);
//procedure Registrar(const DataSet: TDataSet);


implementation

var
Lista: vetor ;
ACH: boolean ;
Blank: Integer ;

procedure DeleteAll(const DataSet: TDataSet);
begin
  with DataSet do
    while RecordCount > 0 do Delete;
end;

procedure Proprio(var Letra: String) ;
var
Tamanho, I, P2: Integer ;
Inicio: Boolean ;
Subst: string ;
begin
lista[0] := 'das'; lista[1] := 'dos';
lista[2] := 'de' ; lista[3] := 'do' ;
lista[4] := 'da' ; lista[5] := 'e'  ;
lista[6] := 'c/' ;
Inicio := True   ;
P2 := 0 ;
Blank := 0 ;
Tamanho := Length(Letra) ;
ACH := false ;
Subst := ' ' ;
for I := 1 to Tamanho do
 begin
   if (Letra[I] = ' ') and (Inicio) then
     begin
      Letra[1] := UpCase(Letra[1]) ;
       Inicio := False ;
        Letra := Letra ;
      {! ;}   P2 := I+1 ;
          blank := 1 ;
   end ;
     if (Letra[I] = ' ') and not(Inicio)
       and (I-P2 > 3) then
        begin
         Letra[P2] := UpCase(Letra[P2]) ;
          Letra := Letra ;
           P2 := I+1 ;
       end ;
            if (Letra[I] = ' ') and not(Inicio)
             and (I-P2 <= 3)  then
         begin
           if blank = 2 then
         begin
           if (Letra[p2+1] <> ' ') and (Letra[p2+2] <> ' ') then
              subst := Letra[p2]+letra[p2+1]+letra[p2+2] ;
            if (Letra[p2+1] <> ' ') and (Letra[p2+2] = ' ') then
              subst := Letra[p2]+letra[p2+1] ;
             if (Letra[p2+1] = ' ') then
               subst := Letra[p2] ;
       Found_Letter(Subst,ACH) ;
        if not ACH then Letra[p2] := UpCase(Letra[p2]) ;
        ACH := False ;
        P2 :=  I+1 ;
        end
        else
        begin
        p2 := I+1 ;
        end ;
       end ;
   if (letra[i+1] = ' ') and (blank = 1) then
   blank := 2 ;
     if I = Tamanho then
     begin
      Letra[(Tamanho)-(Tamanho-P2)] :=
      UpCase(Letra[(Tamanho)-(Tamanho-P2)]) ;
     end ;
   if (I = Tamanho) and (Inicio)then
   begin
   Letra[1] := UpCase(Letra[1]) ;
   end ;
  Letra := Letra ;
 end ;
end ;

procedure Found_Letter(var Subst: String; var ACH: boolean) ;
var
tamvet: integer ;
begin
  for tamvet := Low(lista) to High(lista) do
   begin
    if  subst = lista[tamvet] then
     begin
      ACH := True ;
      blank := 1 ;
      exit ;
     end ;
   end ;
end ;



end.

