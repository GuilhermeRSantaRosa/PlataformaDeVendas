unit FdQuery;

interface

uses
  System.SysUtils, System.Classes, System.Json,
    Datasnap.DSServer, Datasnap.DSAuth, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.FB, FireDAC.Phys.FBDef, FireDAC.FMXUI.Wait, FireDAC.Stan.Param,
  FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, uDataModule ;

type
  TFdQuerySqlite = class
  private
    FFdQuery: TFDQuery;
    FFields: TFields;
    function GetFdQuery: TFDQuery;
  public
    constructor Create;
    property FdQuery : TFDQuery read GetFdQuery Write FFdQuery;
    function OpenSQLQuery(SQLText:WideString):Boolean;
    function Bof:Boolean;
    function eof:Boolean;
    procedure Next;
    procedure First;
    procedure ExecuteDirect(const TextSQL:WideString);
    function FieldByName(const FieldName:String):TField;
    function FieldString(const FieldName:String):String;
    function FieldInteger(const FieldName:String):Integer;
    function FieldBoolean(const FieldName:String):Boolean;
    function FieldDateTime(const FieldName:String):TDateTime;
    function FieldCurrency(const FieldName:String):Currency;
    property Fields: TFields read FFields;
  end;

implementation

{ TFdQuerySqlite }

function TFdQuerySqlite.Bof: Boolean;
begin
  Result := FFdQuery.Bof;
end;

constructor TFdQuerySqlite.Create;
begin
  FdQuery.Connection := dmPrincipal.fdConn;
end;

function TFdQuerySqlite.eof: Boolean;
begin
  Result := FFdQuery.Eof;
end;

procedure TFdQuerySqlite.ExecuteDirect(const TextSQL: WideString);
begin
  FdQuery.SQL.Clear;
  FdQuery.SQL.Add(TextSql);
    try
      FdQuery.ExecSQL;
    except on e:Exception do
       raise Exception.Create(e.message);
    end;
end;

function TFdQuerySqlite.FieldBoolean(const FieldName: String): Boolean;
begin
   Result := FFdQuery.FieldByName(FieldName).AsInteger=1;
end;

function TFdQuerySqlite.FieldByName(const FieldName: String): TField;
begin
   Result := FFdQuery.FieldByName(FieldName);
end;

function TFdQuerySqlite.FieldCurrency(const FieldName: String): Currency;
begin
   Result := FFdQuery.FieldByName(FieldName).AsCurrency;
end;

function TFdQuerySqlite.FieldDateTime(const FieldName: String): TDateTime;
begin
   Result := FFdQuery.FieldByName(FieldName).AsDateTime;
end;

function TFdQuerySqlite.FieldInteger(const FieldName: String): Integer;
begin
  Result := FFdQuery.FieldByName(FieldName).AsInteger;
end;

function TFdQuerySqlite.FieldString(const FieldName: String): String;
begin
  Result := FFdQuery.FieldByName(FieldName).AsString;
end;

procedure TFdQuerySqlite.First;
begin
  FdQuery.First;
end;

function TFdQuerySqlite.GetFdQuery: TFDQuery;
begin
  if (not Assigned(FFdQuery)) then
    FFdQuery := TFdQuery.Create(nil);
  Result := FFdQuery;
end;

procedure TFdQuerySqlite.Next;
begin
  FdQuery.Next;
end;

function TFdQuerySqlite.OpenSQLQuery(SQLText: WideString): Boolean;
begin
  FdQuery.SQL.Text := SQLText;
  FdQuery.Open;
  Result := not (FdQuery.Bof And FdQuery.Eof);
  FdQuery.First;
end;


end.
