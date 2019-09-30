unit uUtils;

interface

uses FdQuery, uDatabase;

function ValorSql(AValor : Currency) : String;
function DataSql(AValor : TDate) : String;
function HoraSql(AValor : TTime) : String;
function SomenteNumeros(AValor : String) : String;
procedure RecalculaValorVendaProdutos;

implementation

uses
  System.SysUtils,uParametros,uProduto;

function DataSql(AValor : TDate) : String;
begin
  if AValor=0 then
    Result := 'null'
  else
    Result := FormatDateTime('dd.mm.yyyy',AValor);
  Result := QuotedStr(Result);
end;

function HoraSql(AValor : TTime) : String;
begin
  if AValor=0 then
    Result := 'null'
  else
    Result := FormatDateTime('hh:mm:ss',AValor);
  Result := QuotedStr(Result);
end;

function ValorSql(AValor : Currency) : String;
var aTemp : String;
begin
  aTemp :=  FormatFloat('#,##0.00',AValor);
  aTemp := StringReplace(aTemp,'.','',[rfReplaceAll]);
  Result := StringReplace(aTemp,',','.',[rfReplaceAll]);
end;

function SomenteNumeros(AValor : String) : String;
var Loop : Integer;
begin
  Result := '';
  for Loop := 0 to Length(AValor) do
  begin
    if (AValor[Loop] in ['0'..'9']) then
      Result := Result + AValor[Loop];
  end;
end;

procedure RecalculaValorVendaProdutos;
var Query : TFdQuerySqlite;
    vQtdeProdutos,Loop : Integer;
    vValorRateio : Currency;
    Prod : TProduto;
    Produtos : TArray<TProduto>;
begin
  Loop := 0;
  vValorRateio := 0;
  vQtdeProdutos := 0;
  try
    Query := TFdQuerySqlite.Create;
    if (Query.OpenSQLQuery('Select Count(*) as Qtde From Produtos')) then
    begin
      vQtdeProdutos := Query.FieldInteger('Qtde');
      SetLength(Produtos,vQtdeProdutos);
      vValorRateio := TParametros.ValorDespesas / vQtdeProdutos;
      if (Query.OpenSQLQuery('Select * From Produtos ')) then
      begin
        while not Query.eof do
        begin
          Prod := TProduto.Create;
          Prod.Id := Query.FieldInteger('Id');
          Prod.Custo := Query.FieldCurrency('Custo');
          Prod.Venda := Prod.Custo + vValorRateio;
          Prod.Venda := Prod.Venda * (1 + TParametros.MargemLucro/100);
          Prod.Comando  := tcUpdate;
          Produtos[Loop]  := Prod;
          Inc(Loop);
          Query.Next;
        end;
      end;
      for Loop := Low(Produtos) to High(Produtos) do
      begin
        Prod := Produtos[Loop];
        Prod.AtualizaPrecoVenda;
      end;

    end;
  finally
    FreeAndNil(Query);
  end;
end;

end.
