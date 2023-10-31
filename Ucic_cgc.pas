unit Ucic_cgc;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask;

type
  Tfciccgc = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    procedure MaskEdit1Exit(Sender: TObject);
    procedure MaskEdit2Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
function vercpf(snrcpf:string):Boolean;
function VerCGC(snrcgc:string):Boolean;
function tbFormataCEP(const CEP: string): string;
function tbFormataTEL(const TEL: string): string;
function tbFormataTELDDD(const TELDDD: string): string;
function tbFormataDATA(const DATA: string): string;

var
  fciccgc: Tfciccgc;

implementation

{$R *.DFM}



function vercpf(snrcpf:string):Boolean;
VAR
   WCPFCALC : STRING;
   WSOMACPF : INTEGER;
   WSX1     : SHORTINT;
   WCPFDIGT : INTEGER;
   digit:string;
   s : string;
begin
  s := snrcpf;
  digit:=copy(snrcpf,14,1);
  while Pos('.', S) > 0 do
    S[Pos('.', S)] := ' ';
  while Pos('-', S) > 0 do
    S[Pos('-', S)] := ' ';
  s := TRIM(s);
  if s = '' then
  else if length(s) < 11 then
     begin
        application.messagebox('CPF Inválido !','Atenção!',mb_iconstop+mb_ok);
        VerCPF := False;
     end
  else
       BEGIN
      snrCpf := Copy(snrcpf,1,3)+Copy(snrcpf,5,3)+
     Copy(snrcpf,9,3)+Copy(snrcpf,13,2);
        wcpfcalc := copy(snrCpf, 1, 9);
        wsomacpf := 0;
        for wsx1:= 1 to 9 DO
             wsomacpf := wsomacpf + strtoint(copy(wcpfcalc, wsx1, 1)) * (11 - wsx1);
        wcpfdigt:= 11 - wsomacpf mod 11;
        if wcpfdigt in [10,11] then
            BEGIN
              wcpfcalc:= wcpfcalc + '0';
            END
        else
            BEGIN
              wcpfcalc := wcpfcalc +  inttoStr(wcpfdigt);
            END;
        wsomacpf:= 0;
        for wsx1:= 1 to 10 DO
             wsomacpf := wsomacpf + strtoint(copy(wcpfcalc, wsx1, 1)) * (12 - wsx1);
        wcpfdigt:= 11 - wsomacpf mod 11;
        if wcpfdigt in [10,11] then
            BEGIN
              wcpfcalc:= wcpfcalc + '0';
            END
        else
            BEGIN
              wcpfcalc := wcpfcalc +  inttoStr(wcpfdigt);
            END;
        if  snrcpf <> wcpfcalc then
            begin
               application.messagebox('CPF Inválido !','Atenção!',mb_iconstop+mb_ok);
               VerCPF := False;
               result:=false;
            end
        else
          begin
          VerCPF := True;
          result:=true;
          end;
    END;

end;

function VerCGC(snrcgc:string):Boolean;
   VAR
   WCGCCALC : STRING;
   WSOMACGC : INTEGER;
   WSX1     : SHORTINT;
   WCGCDIGT : INTEGER;
   s : string;
begin
  s := snrCGC;
  while Pos('.', S) > 0 do
    S[Pos('.', S)] := ' ';
  while Pos('/', S) > 0 do
    S[Pos('/', S)] := ' ';
  while Pos('-', S) > 0 do
    S[Pos('-', S)] := ' ';
  s := TRIM(s);
  if s = '' then
  else if length(s) < 18 then
     begin
        application.messagebox('CNPJ Inválido !','Atenção!',mb_iconstop+mb_ok);
        VerCGC := False;
     end
   else
     BEGIN
         snrcgc := Copy(snrcgc,1,2)+Copy(snrcgc,4,3)+
           Copy(snrcgc,8,3)+Copy(snrcgc,12,4)+Copy(snrcgc,17,2);
         wCgcCalc := Copy(snrcgc,1,12);
         WSOMACGC := 0;
         for wsx1:= 1 to 4 do
              wsomacgc:= wsomacgc + strtoint(copy(wcgccalc, wsx1, 1)) * (6 - wsx1);
         for wsx1:= 1 to 8 do
              wsomacgc:= wsomacgc + strtoint(copy(wcgccalc, wsx1 + 4, 1)) * (10 - wsx1);
         wcgcdigt:= 11 - wsomacgc mod 11;
         if wcgcdigt in [10,11] then
             BEGIN
               wcgccalc:= wcgccalc + '0';
             END
         else
             BEGIN
               wcgccalc := wcgccalc +  inttoStr(wcgcdigt);
             END;
         wsomacgc:= 0;
         for wsx1:= 1 to 5 do
              wsomacgc:= wsomacgc + strtoint(copy(wcgccalc, wsx1, 1)) * (7 - wsx1);
         for wsx1:= 1 to 8 do
              wsomacgc:= wsomacgc + strtoint(copy(wcgccalc, wsx1 + 5, 1)) * (10 - wsx1);
         wcgcdigt:= 11 - wsomacgc mod 11;
         if wcgcdigt in [10,11] then
             BEGIN
               wcgccalc:= wcgccalc + '0';
             END
         else
             BEGIN
               wcgccalc := wcgccalc +  inttoStr(wcgcdigt);
             END;
         if  snrcgc <> wcgccalc then
            begin
              application.messagebox('CNPJ Inválido !','Atenção!',mb_iconstop+mb_ok);
              VerCGC := False;
              result:=false;
            end
         else
            begin
            VerCGC := True;
            result:=true;
            end;
      END

end;


procedure Tfciccgc.MaskEdit1Exit(Sender: TObject);
begin
    if VerCpf(MaskEdit1.Text) = False then
       MaskEdit1.SetFocus;

end;

procedure Tfciccgc.MaskEdit2Exit(Sender: TObject);
begin
    if VerCGC(MaskEdit2.Text) = False then
       MaskEdit2.SetFocus;
end;

function tbFormataCEP(const CEP: string): string;
var
  I: integer;
begin
  Result := '';
  for I := 1 to Length(CEP) do
  if CEP[I] in ['0'..'9'] then
  Result := Result + CEP[I];
  if (Length(Result) <> 8) or (Length(Result) <> 0) then
  raise Exception.Create('CEP INVÁLIDO.')
  else
  Result :=
//  Copy(Result, 1, 2) + '.' +
  Copy(Result, 1, 5) + '-' +
  Copy(Result, 6, 3);
end;

function tbFormataTEL(const TEL: string): string;
var
  I: integer;
begin
  Result := '';
  for I := 1 to Length(TEL) do
  if TEL[I] in ['0'..'9'] then
  Result := Result + TEL[I];
 // if Length(Result) <> 8 then
  if(Length(Result) <> 8) or (Length(Result) <> 0) then
  raise Exception.Create('TELEFONE INVÁLIDO.')
  else
  Result :=
//  Copy(Result, 1, 2) + '.' +
  Copy(Result, 1, 4) + '-' +
  Copy(Result, 5, 4);
END;

function tbFormataTELDDD(const TELDDD: string): string;
var
  I: integer;
begin
  Result := '';
  for I := 1 to Length(TELDDD) do
  if TELDDD[I] in ['0'..'9'] then
  Result := Result + TELDDD[I];
  if (Length(Result) <> 10) or (Length(Result) <> 0) then
  raise Exception.Create('TELEFONE INVÁLIDO.')
  else
  Result :=
  '('+Copy(Result, 1, 2)+')' + ' ' +
  Copy(Result, 3, 4) + '-' +
  Copy(Result, 7, 4);
END;

//FORMATA CAMPO DATA
function tbFormataDATA(const DATA: string): string;
var
  I: integer;
begin
  Result := '';
  for I := 1 to Length(DATA) do
  if DATA[I] in ['0'..'9'] then
  Result := Result + DATA[I];
  if Length(Result) <> 8 then
  raise Exception.Create('DATA INVÁLIDA.')
  else
  Result :=
  Copy(Result, 1, 2) + '/' +
  Copy(Result, 3, 2) + '/' +
  Copy(Result, 5, 4);
end;


end.

