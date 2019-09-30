unit uItemVenda;

interface

uses
  Classes;

type
  TItemVenda = class(TCollectionItem)
  private
    FTotal: Currency;
    FNome: String;
    FIdProduto : Integer;
    FValorUnitario: Currency;
    FIdSequencia: Integer;
    FIdVenda: Integer;
    FQuantidade: Integer;
    FDescricao: String;
    procedure SetQuantidade(const Value: Integer);

  public
    constructor Create(ACollection : TCollection);
    property IdVenda : Integer read FIdVenda write FIdVenda;
    property IdSequencia : Integer read FIdSequencia write FIdSequencia;
    property IdProduto:Integer read FIdProduto  write FIdProduto;
    property Quantidade : Integer read FQuantidade write SetQuantidade;
    property ValorUnitario : Currency read FValorUnitario write FValorUnitario;
    property Nome:String read FNome write FNome;
    property Descricao : String read FDescricao write FDescricao;
    property Total:Currency read FTotal write FTotal;
  end;

  TItensVenda = class(TCollection)
  private
  protected
    function GetItems(Index: Integer): TItemVenda;
  public
    constructor Create;
    function Add : TItemVenda;
    property Items[Index:Integer ] : TItemVenda read GetItems;default;
  end;

implementation

{ TItensVenda }

function TItensVenda.Add: TItemVenda;
begin
  Result := TItemVenda.Create(Self);
end;

constructor TItensVenda.Create;
begin
  inherited Create(TItemVenda);
end;

function TItensVenda.GetItems(Index: Integer): TItemVenda;
begin
  Result := TItemVenda(inherited GetItem(Index));
end;

{ TItemVenda }

constructor TItemVenda.Create(ACollection: TCollection);
begin
  inherited Create(ACollection);
end;


procedure TItemVenda.SetQuantidade(const Value: Integer);
begin
  FQuantidade := Value;
  FTotal := Self.Quantidade * Self.ValorUnitario;
end;

end.
