unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.ExtCtrls, vwVenda,
  vwCadastroProduto, uConfiguracao, vwConfiguracao;

type
  TFrmPrincipal = class(TForm)
    pnTop: TPanel;
    btnVEnda: TSpeedButton;
    btnProdutos: TSpeedButton;
    btnConfigurações: TSpeedButton;
    procedure btnVEndaClick(Sender: TObject);
    procedure btnProdutosClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnConfiguraçõesClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

{$R *.dfm}

procedure TFrmPrincipal.btnConfiguraçõesClick(Sender: TObject);
begin
  if (not Assigned(FrmConfiguracao)) then
  begin
    FrmConfiguracao := TFrmConfiguracao.Create(nil);
    FrmConfiguracao.Show;
  end;
  FrmConfiguracao.BringToFront;
end;

procedure TFrmPrincipal.btnProdutosClick(Sender: TObject);
begin
  if (not Assigned(FrmCadastroProdutos)) then
  begin
    FrmCadastroProdutos := TFrmCadastroProdutos.Create(nil);
    FrmCadastroProdutos.Show;
  end;
  FrmCadastroProdutos.BringToFront;
end;

procedure TFrmPrincipal.btnVEndaClick(Sender: TObject);
begin
  if (not Assigned(FrmVenda)) then
  begin
    FrmVenda := TFrmVenda.Create(Self);
    FrmVEnda.Show;
  end;
  FrmVenda.BringToFront
end;

procedure TFrmPrincipal.FormShow(Sender: TObject);
var Config : TConfiguracao;
   myThread : TThread;
begin
  //A Thread serve para que somente após o carregamento do form principal abra a tela de configuracao
  myThread := TThread.CreateAnonymousThread(procedure
  begin
    Sleep(500);
    try
      Config := TConfiguracao.Create;
      if not Config.Load then
      begin
        if (not Assigned(FrmConfiguracao)) then
        begin
          FrmConfiguracao := TFrmConfiguracao.Create(nil);
          FrmConfiguracao.ShowModal;
        end;
      end
    finally
      FreeAndNil(Config);
    end
  end);
  myThread.Start;

end;

end.
