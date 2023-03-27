unit ufrmLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Imaging.jpeg, Vcl.StdCtrls, Vcl.Buttons, Vcl.ComCtrls, Vcl.Mask, model.usuario, einterface.usuario, einterface.empresa,
  Vcl.Imaging.pngimage, model.empresa;

type
  TOpcaoValida = (ovLogin, ovSenha);

  TfrmLogin = class(TForm)
    imgFundoTela: TImage;
    pnLogin: TPanel;
    imgLogo: TImage;
    pnDadosLogin: TPanel;
    Label1: TLabel;
    shUsuario: TShape;
    edtLogin: TEdit;
    Label2: TLabel;
    shSenha: TShape;
    edtSenha: TEdit;
    pn_IncluirNovo: TPanel;
    btConfirmar: TSpeedButton;
    Panel1: TPanel;
    btFechar: TSpeedButton;
    Label3: TLabel;
    pnInformativo: TPanel;
    lbTitulo: TLabel;
    lbVersao: TLabel;
    shEmpresa: TShape;
    edtEmpresa: TEdit;
    procedure FormShow(Sender: TObject);
    procedure btFecharClick(Sender: TObject);
    procedure btConfirmarClick(Sender: TObject);
    procedure edtLoginKeyPress(Sender: TObject; var Key: Char);
    procedure edtSenhaKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    FUsuario : iUsuario;
    //FEmpresa : iEmpresa;
    function validalogin(aOpcaoValida: TOpcaoValida):boolean;
  public
    { Public declarations }
    procedure CentralizarPainelLogin(aForm: TForm; aPanel: TPanel);
  end;

var
  frmLogin: TfrmLogin;

implementation

{$R *.dfm}

uses UnMensagem, KrUtil, uPrincipal;

{ TfrmLogin }
procedure Arredondarcantos(componente: TWinControl; Y:String);
var
   BX: TRect;
   mdo: HRGN;
begin
  with componente do
  begin
    BX := ClientRect;
    mdo := CreateRoundRectRgn(BX.Left, BX.Top, BX.Right,
    BX.Bottom, StrToInt(Y), StrToInt(Y)) ;
    Perform(EM_GETRECT, 0, lParam(@BX)) ;
    InflateRect(BX, - 4, - 4) ;
    Perform(EM_SETRECTNP, 0, lParam(@BX)) ;
    SetWindowRgn(Handle, mdo, True) ;
    Invalidate;
  end;
end;

procedure TfrmLogin.btConfirmarClick(Sender: TObject);
begin
  inherited;
  validalogin(ovSenha);
end;

procedure TfrmLogin.CentralizarPainelLogin(aForm: TForm; aPanel: TPanel);
begin
  aPanel.Left := (aForm.ClientWidth div 2) - (aPanel.Width div 2);
  imgLogo.Top  := 10;
  imgLogo.Left := 0;
  aPanel.Update;
  aForm.Update;
end;

procedure TfrmLogin.edtLoginKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    if validalogin(ovLogin) then
      edtSenha.SetFocus;
end;

procedure TfrmLogin.edtSenhaKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    btConfirmar.Click;
  {begin
    Key := #0;
    SelectNext(ActiveControl as TWinControl, true, true);
  end;}
end;

procedure TfrmLogin.FormCreate(Sender: TObject);
begin
  ModalResult := mrNone;
end;

procedure TfrmLogin.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #27 then
    btFechar.Click;
end;

procedure TfrmLogin.FormShow(Sender: TObject);
begin
  CentralizarPainelLogin(frmLogin, pnLogin);
  Arredondarcantos(pnLogin, '25');
end;

procedure TfrmLogin.btFecharClick(Sender: TObject);
begin
  Application.Terminate;
end;

function TfrmLogin.validalogin(aOpcaoValida: TOpcaoValida): boolean;
var
  aEmpresa : iEmpresa;
begin
  Result := false;
  if aOpcaoValida = ovLogin then
  begin
    if (Trim(edtLogin.Text) = EmptyStr) then
    begin
      TfrmMensagem.ExibirMensagem('Informe o usu�rio para efetuar o login.', tmInformacao);
      Exit;
    end;

    FUsuario := TUsuario
                .New
                  .getUsuario(0, trim(edtLogin.Text));

    if Assigned(FUsuario) then
    begin
      aEmpresa := TEmpresa
                   .New
                    .getEmpresa(FUsuario.CodigoEmpresa) ;

      if assigned(aEmpresa) then
      begin
        edtEmpresa.Clear;
        edtEmpresa.Text := FUsuario.Nome;
      end;
    end
    else
    begin
      TfrmMensagem.ExibirMensagem('Usu�rio n�o localizado na base de dados.', tmInformacao);
      Exit;
    end;
  end;

  if aOpcaoValida = ovSenha then
  begin
    if (Assigned(FUsuario) and (edtSenha.Text = FUsuario.Senha))then
    begin
      fmPrincipal.Sistema.SetFuncionarioLogado(IntToStr(FUsuario.Codigo), FUsuario.Nome,'' );
      ModalResult:= mrOk
    end
    else
    begin
      TFrmMensagem.ExibirMensagem('Senha inv�lida.', tmPare);
      Exit;
    end;
  end;

  Result := True;
end;

end.
