unit uConfiguracao;

interface

uses uDatabase, uUtils;

type
  TConfiguracao = class(TDatabaseObject)
  private
    FMargemLucro: Currency;
    FDespesasTotais: Currency;
    procedure SetDespesasTotais(const Value: Currency);
  protected
    function InsertCommand : WideString;override;
    function UpdateCommand : WideString;override;
    procedure Persist;override;
  public
    property DespesasTotais : Currency read FDespesasTotais write SetDespesasTotais;
    property MargemLucro : Currency read FMargemLucro write FMargemLucro;
    function Load(AId:Integer=0) : Boolean;override;
  end;

implementation

uses
  System.SysUtils, uParametros;

{ TConfiguracao }

function TConfiguracao.InsertCommand: WideString;
begin
  Result := Format('Insert Into Configuracao (DespesasTotais,MargemLucro) Values (%s,%s) ',
            [ValorSql(DespesasTotais),ValorSqL(MargemLucro)]);
end;


function TConfiguracao.Load(AId: Integer=0): Boolean;
begin
  Result := False;
  if (Query.OpenSQLQuery('Select * from Configuracao')) then
  begin
    Result := True;
    Self.DespesasTotais := Query.FieldCurrency('DespesasTotais');
    Self.MargemLucro := Query.FieldCurrency('MargemLucro');
    TParametros.ValorDespesas := Self.DespesasTotais;
    TParametros.MargemLucro := Self.MargemLucro;
  end;
end;

procedure TConfiguracao.Persist;
begin
  inherited;
  RecalculaValorVendaProdutos;
end;

procedure TConfiguracao.SetDespesasTotais(const Value: Currency);
begin
  if (Value=0) then
    FDespesasTotais := 400
  else
    FDespesasTotais := Value;
end;

function TConfiguracao.UpdateCommand: WideString;
begin
  Result := Format('Update Configuracao Set DespesasTotais=%s,MargemLucro=%s',
            [ValorSql(DespesasTotais),ValorSqL(MargemLucro)]);
end;

end.
