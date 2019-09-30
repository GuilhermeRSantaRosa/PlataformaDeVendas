program PlataformaVendas;

uses
  Vcl.Forms,
  uPrincipal in 'uPrincipal.pas' {FrmPrincipal},
  vwVenda in 'Views\vwVenda.pas' {FrmVenda},
  vwCadastroProduto in 'Views\vwCadastroProduto.pas' {FrmCadastroProdutos},
  FdQuery in 'Classes\FdQuery.pas',
  uProduto in 'Classes\uProduto.pas',
  uDatabase in 'Classes\uDatabase.pas',
  uDataModule in 'uDataModule.pas' {dmPrincipal: TDataModule},
  uUtils in 'Classes\uUtils.pas',
  vwConfiguracao in 'Views\vwConfiguracao.pas' {FrmConfiguracao},
  uConfiguracao in 'Classes\uConfiguracao.pas',
  uParametros in 'Classes\uParametros.pas',
  uItemVenda in 'Classes\uItemVenda.pas',
  uVenda in 'Classes\uVenda.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.CreateForm(TdmPrincipal, dmPrincipal);
  Application.Run;
end.
