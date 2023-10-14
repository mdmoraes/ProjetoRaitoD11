unit UMensagem;

interface

 uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db;

 // type
  procedure Mensagem();

implementation

//{$R *.res}

procedure Mensagem();
begin
  ShowMessage('Olá, bem vindo !');
end;

end.


