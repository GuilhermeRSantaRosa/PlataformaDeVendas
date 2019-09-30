unit vwVenda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB,
  Datasnap.DBClient, Vcl.Grids, Vcl.DBGrids, Vcl.Buttons, FdQuery, uProduto,uVenda,
  uItemVenda, Vcl.DBCtrls, Vcl.DBCGrids, uDatabase;

type
  TFrmVenda = class(TForm)
    pnTop: TPanel;
    Label1: TLabel;
    pnListaProdutos: TPanel;
    DBGrid1: TDBGrid;
    cdsProdutos: TClientDataSet;
    DataSource1: TDataSource;
    cdsProdutosIdProduto: TIntegerField;
    cdsProdutosNome: TStringField;
    cdsProdutosDescricao: TStringField;
    cdsProdutosCusto: TCurrencyField;
    cdsProdutosVenda: TCurrencyField;
    pnBottom: TPanel;
    pnTotais: TPanel;
    lbTotalPedido: TLabel;
    btSair: TSpeedButton;
    lbTotalItens: TLabel;
    pnLancados: TPanel;
    DBCtrlGrid1: TDBCtrlGrid;
    pnTitleLancados: TPanel;
    Label2: TLabel;
    DataSource2: TDataSource;
    cdsLancados: TClientDataSet;
    DBText4: TDBText;
    SpeedButton1: TSpeedButton;
    Panel5: TPanel;
    cdsLancadosNome: TStringField;
    cdsLancadosDescricao: TStringField;
    cdsLancadosQuantidade: TIntegerField;
    cdsLancadosValorUnitario: TCurrencyField;
    cdsLancadosTotal: TCurrencyField;
    cdsLancadosIdProduto: TIntegerField;
    cdsLancadosIdSequencia: TIntegerField;
    Panel6: TPanel;
    DBText1: TDBText;
    Label7: TLabel;
    DBText2: TDBText;
    DBText5: TDBText;
    Label3: TLabel;
    DBText3: TDBText;
    pnBackGroundLancamento: TPanel;
    pnLancamento: TPanel;
    edNomeProduto: TEdit;
    pnQtde: TPanel;
    pnBotoes: TPanel;
    btAdiciona: TSpeedButton;
    btRemove: TSpeedButton;
    Panel3: TPanel;
    lbValorUnitario: TLabel;
    Label6: TLabel;
    Panel4: TPanel;
    Label4: TLabel;
    edQtde: TEdit;
    pnTotalProduto: TPanel;
    lbTotalProduto: TLabel;
    Panel2: TPanel;
    btnIncluir: TSpeedButton;
    btnCancelar: TSpeedButton;
    Panel1: TPanel;
    Label5: TLabel;
    btnFinalizarVenda: TSpeedButton;
    Panel7: TPanel;
    Label8: TLabel;
    procedure FormResize(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btSairClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormShow(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btAdicionaClick(Sender: TObject);
    procedure btRemoveClick(Sender: TObject);
    procedure edQtdeChange(Sender: TObject);
    procedure edQtdeExit(Sender: TObject);
    procedure Panel5Click(Sender: TObject);
    procedure btnFinalizarVendaClick(Sender: TObject);
    procedure Panel7Click(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormDestroy(Sender: TObject);
  private
    FQuery: TFdQuerySqlite;
    FVenda: TVenda;
    FItemTemp : TItemVenda;
    FEditMode : Boolean;
    { Private declarations }
    procedure RecalculaGridProdutos;
    procedure EditarItem;
    function GetQuery: TFdQuerySqlite;
    procedure IniciaInclusaoItem;
    function GetVenda: TVenda;
    procedure RecalculaTotais;
    procedure AdicionaItemLista(AItem : TItemVenda);
    procedure MostraTotaisProduto;
  public
    { Public declarations }
    procedure ListarProdutos;
    property Query : TFdQuerySqlite read GetQuery write FQuery;
    property Venda : TVenda read GetVenda write FVenda;
  end;

var
  FrmVenda: TFrmVenda;

implementation

{$R *.dfm}

{ TFrmVenda }

procedure TFrmVenda.DBGrid1DblClick(Sender: TObject);
begin
  if (cdsProdutos.RecordCount>0) then
    IniciaInclusaoItem;
end;

procedure TFrmVenda.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  with DBGrid1 do
  begin
    if (cdsProdutos.RecNo mod 2 = 0) then
    begin
      Canvas.Brush.Color := clSilver;
      Canvas.Font.Color := clBlack;
    end
    else
    begin
      Canvas.Brush.Color := clWhite;
      Canvas.Font.Color := clBlack;
    end;

    if (gdSelected in state) then
    begin
      Canvas.Brush.Color := $00B17105;
      Canvas.Font.Color := clWhite;
    end;
  end;
  DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TFrmVenda.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key=VK_RETURN) then
  begin
   if (cdsProdutos.RecordCount>0) then
    IniciaInclusaoItem;
  end;
end;

procedure TFrmVenda.EditarItem;
begin
  FEditMode := True;
  FItemTemp := TItemVenda.Create(nil);
  FItemTemp.IdProduto := cdsLancadosIdProduto.AsInteger;
  FItemTemp.Nome := cdsLancadosNome.AsString;
  FItemTemp.ValorUnitario := cdsLancadosValorUnitario.AsCurrency;
  FItemTemp.Quantidade := cdsLancadosQuantidade.AsInteger;
  FItemTemp.Descricao := cdsLancadosDescricao.AsString;
  FItemTemp.IdSequencia := cdsLancadosIdSequencia.AsInteger;
  pnLancamento.Visible := True;
  edNomeProduto.Text := FItemTemp.Nome;
  edQtde.Text := IntToStr(FItemTemp.Quantidade);
  MostraTotaisProduto;
end;

procedure TFrmVenda.edQtdeChange(Sender: TObject);
begin
  if (edQtde.Text<>'') then
  begin
    FItemTemp.Quantidade := StrToInt(edQtde.Text);
    MostraTotaisProduto
  end;
end;

procedure TFrmVenda.edQtdeExit(Sender: TObject);
begin
  if ((edQtde.Text='0') or (edQtde.Text='')) then
  begin
    edQtde.Text := '1';
    MostraTotaisProduto;
  end;
end;

procedure TFrmVenda.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmVenda.FormDestroy(Sender: TObject);
begin
  if (Assigned(FVenda)) then
    FreeAndNil(FVenda);
  if (Assigned(FQuery)) then
    FreeAndNil(FQuery);
end;

procedure TFrmVenda.FormResize(Sender: TObject);
begin
  RecalculaGridProdutos;
end;

procedure TFrmVenda.FormShow(Sender: TObject);
begin
  ListarProdutos;
end;


function TFrmVenda.GetQuery: TFdQuerySqlite;
begin
  if (not Assigned(FQuery)) then
    Query := TFdQuerySqlite.Create;
  Result := FQuery;
end;

function TFrmVenda.GetVenda: TVenda;
begin
  if (not Assigned(FVenda)) then
    FVenda := TVenda.Create;
  Result := FVenda;
end;

procedure TFrmVenda.IniciaInclusaoItem;
begin
  DBGrid1.Enabled := False;
  FItemTemp := TItemVenda.Create(nil);
  FItemTemp.IdProduto := cdsProdutosIdProduto.AsInteger;
  FItemTemp.Nome := cdsProdutosNome.AsString;
  FItemTemp.ValorUnitario := cdsProdutosVenda.AsCurrency;
  FItemTemp.Quantidade := 1;
  FItemTemp.Descricao := cdsProdutosDescricao.AsString;
  pnLancamento.Visible := True;
  edNomeProduto.Text := FItemTemp.Nome;
  edQtde.Text := '1';
  MostraTotaisProduto;
  RecalculaTotais;
end;

procedure TFrmVenda.ListarProdutos;
begin
  cdsProdutos.EmptyDataSet;
  if (Query.OpenSQLQuery('Select * From Produtos Where Custo>0')) then
  begin
    while not Query.eof do
    begin
      cdsProdutos.Append;
      cdsProdutosIdProduto.AsInteger := Query.FieldInteger('Id');
      cdsProdutosNome.AsString := Query.FieldString('Nome');
      cdsProdutosDescricao.AsString := Query.FieldString('Descricao');
      cdsProdutosCusto.AsCurrency := Query.FdQuery.FieldByName('Custo').AsCurrency;
      cdsProdutosVenda.AsCurrency := Query.FieldCurrency('Venda');
      cdsProdutos.Post;
      Query.Next;
    end;
    cdsProdutos.First;
  end;
end;

procedure TFrmVenda.MostraTotaisProduto;
begin
  lbValorUnitario.Caption := FormatFloat('#,##0.00',FItemTemp.ValorUnitario);
  lbTotalProduto.Caption := 'Total: ' + FormatFloat('#,##0.00',FItemTemp.Total);
end;

procedure TFrmVenda.Panel5Click(Sender: TObject);
var Item : TItemVenda;
    Loop : Integer;
begin
  for Loop := 0 to Venda.Itens.Count -1 do
  begin
    Item := Venda.Itens[Loop];
    if Item.IdSequencia=cdsLancadosIdSequencia.AsInteger then
    begin
      Venda.Itens.Delete(Loop);
      cdsLancados.Delete;
      RecalculaTotais;
      Exit;
    end;
  end;
end;

procedure TFrmVenda.Panel7Click(Sender: TObject);
begin
  if cdsLancados.RecordCount>0 then
  begin
    if (FEditMode) then
    begin
      ShowMessage('Existe uma edi��o em andamento');
      Exit;
    end;
    EditarItem;
  end;
end;

procedure TFrmVenda.RecalculaGridProdutos;
var vWidth : Integer;
begin
  vWidth := Self.Width-55;
  DBGrid1.Columns[0].Width := Trunc(35/100 * vWidth);
  DbGrid1.Columns[1].Width := Trunc(50/100 * vWidth);
  DBGrid1.Columns[2].Width := Trunc(15/100 * vWidth);
end;

procedure TFrmVenda.RecalculaTotais;
begin
  Venda.Recalcula;
  lbTotalPedido.Caption := 'Total do pedido: ' + FormatFloat('#,##0.00',Venda.Total);
  lbTotalItens.Caption := 'Total itens: ' + IntToStr(Venda.Itens.Count);
end;

procedure TFrmVenda.AdicionaItemLista(AItem: TItemVenda);
begin
  if (FEditMode) then
  begin
    cdsLancados.Locate('IdSequencia',AItem.IdSequencia,[]);
    cdsLancados.Edit
  end
  else
    cdsLancados.Append;
  cdsLancadosIdProduto.AsInteger := AItem.IdProduto;
  cdsLancadosNome.AsString := Aitem.Nome;
  cdsLancadosDescricao.AsString := Aitem.Descricao;
  cdsLancadosQuantidade.AsInteger := AItem.Quantidade;
  cdsLancadosValorUnitario.AsCurrency := Aitem.ValorUnitario;
  cdsLancadosTotal.AsCurrency := AItem.Total;
  cdsLancadosIdSequencia.AsInteger := AItem.IdSequencia;
  cdsLancados.Post;
  FEditMode := False;
end;

procedure TFrmVenda.btAdicionaClick(Sender: TObject);
begin
  FItemTemp.Quantidade := FItemTemp.Quantidade + 1;
  edQtde.Text := IntToStr(FItemTemp.Quantidade);
  MostraTotaisProduto;
  RecalculaTotais;
end;

procedure TFrmVenda.btnCancelarClick(Sender: TObject);
begin
  DBGrid1.Enabled := True;
  FreeAndNil(FItemTemp);
  FEditMode := False;
  pnLancamento.Visible := False;
  DBGrid1.SetFocus;
end;

procedure TFrmVenda.btnFinalizarVendaClick(Sender: TObject);
begin
  if (pnLancamento.Visible) then
  begin
    ShowMessage('Existe um item pendente de lan�amento, cancele ou inclua para continuar');
    Exit;
  end;
  if (Venda.Itens.Count<=0) then
  begin
    ShowMessage('N�o h� itens lan�ados');
    Exit;
  end;
  try
    Venda.Comando := tcInsert;
    Venda.Persist;
  finally
    cdsLancados.EmptyDataSet;
    Venda.Iniciar;
    RecalculaTotais;
  end;
end;

procedure TFrmVenda.btnIncluirClick(Sender: TObject);
var Item : TItemVenda;
begin
  DBGrid1.Enabled := True;
  if FEditMode then
    Item := VEnda.GetByIdSequencia(FItemTemp.IdSequencia)
  else
  begin
    Item := Venda.Itens.Add;
    Item.IdSequencia := Venda.Itens.Count;
  end;
  Item.IdProduto := FItemTemp.IdProduto;
  Item.Nome := FItemTemp.Nome ;
  Item.ValorUnitario := FItemTemp.ValorUnitario;
  Item.Quantidade := FItemTemp.Quantidade;
  Item.Descricao := FItemTemp.Descricao;
  FreeAndNil(FItemTemp);
  pnLancamento.Visible := False;
  AdicionaItemLista(Item);
  RecalculaTotais;
  DBGrid1.SetFocus;
end;

procedure TFrmVenda.btRemoveClick(Sender: TObject);
begin
  if (FItemTemp.Quantidade>1) then
    FItemTemp.Quantidade := FItemTemp.Quantidade -1;
  edQtde.Text := IntToStr(FItemTemp.Quantidade);
  MostraTotaisProduto;
  RecalculaTotais;
end;

procedure TFrmVenda.btSairClick(Sender: TObject);
begin
  FreeAndNil(FrmVEnda);
end;

end.
