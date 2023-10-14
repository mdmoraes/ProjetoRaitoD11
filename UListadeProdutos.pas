unit UListadeProdutos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DBCtrls, Buttons, StdCtrls, DB, DBTables, Mask,
  JvExMask, JvToolEdit, JvMaskEdit, JvDBFindEdit;
 
type
  TFormListadeProdutos = class(TForm)
    grpListadeProdutos: TGroupBox;
    LabelFechar: TLabel;
    Label1: TLabel;
    btnFiltar: TSpeedButton;
    btnCopiar: TSpeedButton;
    grp1: TGroupBox;
    qry1: TQuery;
    qry1representada: TStringField;
    qry1Pvenda: TFloatField;
    ds1: TDataSource;
    qry1unidade: TStringField;
    chk1: TCheckBox;
    grp2: TGroupBox;
    rbcodigo: TRadioButton;
    rbproduto: TRadioButton;
    ComboBox1: TComboBox;
    Label2: TLabel;
    Label3: TLabel;
    chkMarcarTodos: TCheckBox;
    edtRepresentada: TEdit;
    qry1grupo: TStringField;
    qry1Codigo: TStringField;
    qry1Produto: TStringField;
    Label4: TLabel;
    qry1X: TIntegerField;
    DBGrid1: TDBGrid;
    edtFindEdit1: TJvDBFindEdit;
    procedure dblokup1CloseUp(Sender: TObject);
    procedure btnCopiarClick(Sender: TObject);
    procedure btnFiltarClick(Sender: TObject);
    procedure LabelFecharClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure chk1Click(Sender: TObject);
    procedure rbcodigoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure chkMarcarTodosClick(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure ComboBox1CloseUp(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormListadeProdutos: TFormListadeProdutos;
  v_codigos : TStringList;

implementation

uses UEmissaodePedido, UDBRATIO;

{$R *.dfm}



//Implemente a função abaixo
//(serve para identificar se um determinado valor já foi selecionado):

function Selecionado(Codigos : TStringList; Codigo : String) : Integer;
var
  x : integer;
begin
  //Verificando se o código já esta selecionado...
  //Resultando -1 se não estiver e Resultando a posição
  //dele na StringList caso já esteja selecionado.
  Result := -1;
  for x := 0 to Codigos.Count-1 do
    if (Codigos[x] = Codigo) then
      begin
        Result := x; //Retorna a posição na StringList;
        Break; //PARA DE EXECUTAR O LOOP
      end;
end;

procedure TFormListadeProdutos.dblokup1CloseUp(Sender: TObject);
begin
btnFiltarClick(Self);
end;

procedure TFormListadeProdutos.btnCopiarClick(Sender: TObject);
var
idx :integer;
begin
  if DBGrid1.SelectedRows.Count = 0 then
  begin
  ShowMessage('É NECESSÁRIO SELECIONAR PELO MENOS UM ITEM !');
  Abort;
  end
  else
    with DBGrid1.DataSource do
    if DBGrid1.SelectedRows.Count > 0 then

      for Idx :=0 to DBGrid1.SelectedRows.Count-1 do
      begin
        //Codigo, Unidade, Produto, ValorUnit

//      codigoproduto, unidade, descricao, Pvenda

      //  fdados.tabelaexportadora.GotoBookmark(pointer(DBGrid1.SelectedRows.Items[Idx]));
        qry1.GotoBookmark(pointer(DBGrid1.SelectedRows.Items[Idx]));
        DMRatio.TBItens.Edit;
        DMRatio.TBItens.Append;
        DMRatio.TBItens.FieldByName('Codigo').Value:=
        qry1.FieldByName('Codigo').Value;

        DMRatio.TBItens.FieldByName('Unidade').Value:=
        qry1.FieldByName('unidade').Value;

        DMRatio.TBItens.FieldByName('Produto').Value:=
        qry1.FieldByName('Produto').Value;

        DMRatio.TBItens.FieldByName('ValorUnit').Value:=
        qry1.FieldByName('Pvenda').Value;

        DMRatio.TBItens.FieldByName('Grupo').Value:=
        qry1.FieldByName('grupo').Value;

//        fdados.tabelareceptora.FieldByName('PROFISSAO').Value := fdados.tabelaexportadora.FieldByName('PROFISSAO').Value;
//        fdados.tabelareceptora.FieldByName('SALARIO').Value := fdados.tabelaexportadora.FieldByName('SALARIO').Value;

        DMRatio.TBItens.Edit;
        DMRatio.TBItens.Post;
      end;


//     keybd_event(VK_CONTROL, $45, KEYEVENTF_EXTENDEDKEY or KEYEVENTF_KEYUP, 0);
     close;
end;

procedure TFormListadeProdutos.btnFiltarClick(Sender: TObject);
  var
  contador: Integer;
  codigos: string;
begin
    begin
      codigos := '';
      With DBGrid1 do
      Begin
        for contador := 0 to Pred(SelectedRows.Count) do
        Begin
          //posiciona nos registros selecionados do DBGrid
          ds1.Dataset.Bookmark := SelectedRows[contador];

          //executar operações com o registro atual      codigos := codigos +
//            ds1.DataSet.FieldByName('ID').AsString + ',';
        end;
      end;
      codigos := Copy(codigos,1,Length(codigos)-1);
//      ShowMessage(codigos);
    end;

    qry1.Close;
    qry1.ParamByName('varRep').AsString:= edtRepresentada.Text;
    qry1.Prepare;
    qry1.Open;

end;

procedure TFormListadeProdutos.LabelFecharClick(Sender: TObject);
begin
  Close;

//    grpListadeProdutos.Visible:= false;
//    FrmEmissaodePedido.pnlNav.Visible:= True;
//    FrmEmissaodePedido.pnlConfirma.Visible:= True;
end;

procedure TFormListadeProdutos.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = vk_escape then
  Close;
end;


procedure TFormListadeProdutos.rbcodigoClick(Sender: TObject);
begin
 if length(combobox1.Items[ComboBox1.ItemIndex]) > 0 then
  begin
    edtFindEdit1.DataField := combobox1.Items[ComboBox1.ItemIndex];
    if rbcodigo.Checked = True then
    edtFindEdit1.DataField := qry1Codigo.AsString;

    if rbproduto.Checked = True then
    edtFindEdit1.DataField := qry1Produto.AsString;

end;

procedure TFormListadeProdutos.rbcodigoClick(Sender: TObject);
begin
 if length(combobox1.Items[ComboBox1.ItemIndex]) > 0 then
  begin
    edtFindEdit1.DataField := combobox1.Items[ComboBox1.ItemIndex];
    if rbcodigo.Checked = True then
    edtFindEdit1.DataField := qry1Codigo.AsString;

    if rbproduto.Checked = True then
    edtFindEdit1.DataField := qry1Produto.AsString;

end;
end;






procedure TFormListadeProdutos.chkMarcarTodosClick(Sender: TObject);
Var ABookmark: TBookmark;
Begin
  if chkMarcarTodos.Checked = True then
  begin
  chkMarcarTodos.Caption:= 'Marcar Todos';
  if (qry1.BOF and qry1.EOF) then Exit;

  qry1.DisableControls;
  DBGrid1.Options := DBGrid1.Options + [dgMultiselect];

  try

    ABookmark := qry1.GetBookmark;

    try

      qry1.First;

      while not qry1.EOF do begin

         DBGrid1.SelectedRows.CurrentRowSelected := True;

         qry1.Next;

      end;

    finally

      try

         qry1.GotoBookmark(ABookmark);

      except

      end;

       qry1.FreeBookmark(ABookmark);

    end;

  finally

    qry1.EnableControls;

  end;
  end;

  if chkMarcarTodos.Checked = False then
  begin
  chkMarcarTodos.Caption := 'Desmarcar Todos';
  if (qry1.BOF and qry1.EOF) then Exit;
  qry1.DisableControls;
  DBGrid1.Options := DBGrid1.Options + [dgMultiselect];

  try

    ABookmark := qry1.GetBookmark;

    try

      qry1.First;

      while not qry1.EOF do begin

         DBGrid1.SelectedRows.CurrentRowSelected := False;

         qry1.Next;

      end;

    finally

      try

         qry1.GotoBookmark(ABookmark);

      except

      end;

       qry1.FreeBookmark(ABookmark);

    end;

  finally

    qry1.EnableControls;

  end;
  end;
end;

procedure TFormListadeProdutos.DBGrid1TitleClick(Column: TColumn);
var
   campo:string;
begin

   campo:=column.fieldname;

   application.processmessages;

   qry1.sql.clear;

   Qry1.sql.add('select * from CadastroProdutos order by '+campo);

   if not Qry1.Prepared then

     Qry1.Prepare;

   Qry1.Open;

end;


procedure TFormListadeProdutos.DBGrid1CellClick(Column: TColumn);
var
  x, y : integer;
begin
  //VERIFICAR SE JÁ ESTA INCLUSO
  y := Selecionado(v_codigos, ds1.DataSet.Fields[0].AsString);
  if (y < 0) then // menor que zero, então não esta selecionado
     v_codigos.Add(ds1.DataSet.Fields[0].AsString)      //Adiciona à lista
  else
    v_codigos.Delete(y); //Senão remove ele da lista
  DBGrid1.Repaint;

//  //Trecho para teste (deve haver uma label no form chamada Label4
  Label4.Caption := 'Selecioados >> ';
  for x := 0 to v_codigos.Count-1 do
    Label4.Caption := Label4.Caption + ' ' + v_codigos[x];

// keybd_event(VK_CONTROL, 0, KEYEVENTF_EXTENDEDKEY or 0, 0);

// DBGrid1.SelectedRows.CurrentRowSelected:=
// not DBGrid1.SelectedRows.CurrentRowSelected;
end;

procedure TFormListadeProdutos.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var
  x,y,Check : integer;
  R: TRect;
begin
  //Desenhar o CheckBox na primeira coluna
  if (DataCol = 0) then
  begin
    y := Selecionado(v_codigos,ds1.DataSet.Fields[0].AsString);
    R := Rect;
    R.Left :=  (Column.Width * -1) + 30; //Posicionando o CheckBox
    InflateRect(R,-2,-2); //Diminuindo o CheckBox

    if (y < 0) then //menor que zero, então não esta selecionado
      begin
      DrawFrameControl(DBGrid1.Canvas.Handle,R,DFC_BUTTON, DFCS_BUTTONCHECK);
 //     DBGrid1.SelectedRows.CurrentRowSelected:= true;
      end
    else
      DrawFrameControl(DBGrid1.Canvas.Handle,R,DFC_BUTTON, DFCS_CHECKED);
//      DBGrid1.SelectedRows.CurrentRowSelected:= false;
  end;
end;

procedure TFormListadeProdutos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 //Destruindo a lista de codigos
  v_codigos.Free;
end;

end.
