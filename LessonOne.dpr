program LessonOne;

uses
  Vcl.Forms,
  uPrincipal in 'src\view\uPrincipal.pas' {fmPrincipal},
  model.connection in 'src\model\connection\model.connection.pas' {Connection: TDataModule},
  KrUtil in 'src\KrUtil.pas',
  unFormularioBase in 'src\view\unFormularioBase.pas' {frmFormularioBase},
  unFormularioCadastroBase in 'src\view\unFormularioCadastroBase.pas' {frmFormularioCadastroBase},
  UnitPergunta in 'src\view\UnitPergunta.pas' {frmPergunta},
  UnMensagem in 'src\view\UnMensagem.pas' {FrmMensagem},
  einterface.usuario in 'src\model\einterface.usuario.pas',
  model.usuario in 'src\model\model.usuario.pas',
  ufrmLogin in 'src\view\ufrmLogin.pas' {frmLogin},
  UnClasseSistema in 'src\model\UnClasseSistema.pas',
  unfraPesquisa in 'src\view\unfraPesquisa.pas' {fraPesquisa: TFrame},
  uframeCadastroBase in 'src\view\uframeCadastroBase.pas' {frameCadastroBase: TFrame},
  uframeCadEmpresa in 'src\view\uframeCadEmpresa.pas' {frameCadEmpresa: TFrame},
  uframeCadUsuario in 'src\view\uframeCadUsuario.pas' {frameCadUsuario: TFrame},
  einterface.empresa in 'src\model\einterface.empresa.pas',
  model.empresa in 'src\model\model.empresa.pas',
  ufrmDlgMensagem in 'src\view\ufrmDlgMensagem.pas' {fSC_FormMensagem},
  KrConstantes in 'src\KrConstantes.pas';

{$R *.res}



begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TConnection, Connection);
  Application.CreateForm(TfmPrincipal, fmPrincipal);
  Application.Run;
end.
