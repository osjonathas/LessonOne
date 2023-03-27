  unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Buttons, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  unClasseSistema, Vcl.ComCtrls, Data.DB, unfraPesquisa, Vcl.Grids, Vcl.DBGrids, uframeCadastroBase, uframeCadEmpresa, uframeCadUsuario;

type
  TfmPrincipal = class(TForm)
    pnl_fundo: TPanel;
    pnl_menu_lateral: TPanel;
    btn_sair: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
    SpeedButton10: TSpeedButton;
    btn_empresa: TSpeedButton;
    btn_usuarios: TSpeedButton;
    btn_menu: TSpeedButton;
    pnSubmenu: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton11: TSpeedButton;
    SpeedButton12: TSpeedButton;
    SpeedButton13: TSpeedButton;
    pnTopo: TPanel;
    lbSistema: TLabel;
    lbUsuarioLogado: TLabel;
    pnBarraTopo: TPanel;
    pn_menu_barra: TPanel;
    imgLogoInt: TImage;
    btnRest: TSpeedButton;
    btnClose: TSpeedButton;
    frameCadUsuario: TframeCadUsuario;
    frameCadEmpresa: TframeCadEmpresa;
    procedure btn_menuClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure pnl_fundoMouseEnter(Sender: TObject);
    procedure btn_sairClick(Sender: TObject);
    procedure btcloseClick(Sender: TObject);
    procedure btminimizeClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btn_usuariosClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure btnRestClick(Sender: TObject);
    procedure btn_empresaClick(Sender: TObject);
  private
    { Private declarations }
    procedure FecharFrames;
    procedure ChamarFrame(Objeto: TWinControl);

  public

    { Public declarations }
    Sistema : TSistema;
  end;

var
  fmPrincipal: TfmPrincipal;
  FMenuExpandido : boolean;

implementation

{$R *.dfm}

uses model.connection, ufrmLogin;

procedure TfmPrincipal.btcloseClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TfmPrincipal.btminimizeClick(Sender: TObject);
begin
  if Self.WindowState = TWindowState.wsMaximized then
    Self.WindowState := TWindowState.wsMinimized
  else
    Self.WindowState := TWindowState.wsMaximized;
end;

procedure TfmPrincipal.btnCloseClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TfmPrincipal.btnRestClick(Sender: TObject);
begin
  Application.Minimize;
end;

procedure TfmPrincipal.btn_empresaClick(Sender: TObject);
begin
  FecharFrames;
{  if frameCadEmpresa = nil then
  begin
    frameCadEmpresa := TframeCadEmpresa.Create(nil);
    frameCadEmpresa.Align := alClient;
    frameCadEmpresa.Visible:= TRue;
  end;}

//    frameCadEmpresa.Align := alClient;
//    frameCadEmpresa.visible := true;
 // end;//}

  ChamarFrame(frameCadEmpresa);
end;

procedure TfmPrincipal.btn_menuClick(Sender: TObject);
begin
  if FMenuExpandido then
    pnl_menu_lateral.Width := 45
  else
    pnl_menu_lateral.Width :=  160;

  FMenuExpandido := not FMenuExpandido;
end;

procedure TfmPrincipal.btn_sairClick(Sender: TObject);
begin
  application.Terminate;
end;

procedure TfmPrincipal.btn_usuariosClick(Sender: TObject);
begin
  ChamarFrame(frameCadUsuario);
end;

procedure TfmPrincipal.ChamarFrame(Objeto: TWinControl);
begin
  FecharFrames;
  if not TWinControl(Objeto).Visible then
  begin
    Objeto.Align := alClient;
    Objeto.visible := true;
  end;
end;

procedure TfmPrincipal.FecharFrames;
begin
  if frameCadEmpresa.Visible then
  begin
    frameCadEmpresa.Align := alNone;
    frameCadEmpresa.visible := False;
  end;

  if frameCadUsuario.Visible then
  begin
    frameCadUsuario.Align := alNone;
    frameCadUsuario.visible := False;
  end;
end;

procedure TfmPrincipal.FormCreate(Sender: TObject);
begin
  Sistema := TSistema.Create;
  try
    if connection.Conectar(Sistema.NomeServidor, Sistema.NomeBanco, Sistema.LoginBanco, Sistema.SenhaBAnco) then
    begin
      SetWindowLong(fmPrincipal.Handle, GWL_STYLE, GetWindowLong(Handle,GWL_STYLE) and not WS_CAPTION);
      Height := ClientHeight;
      Application.CreateForm(TfrmLogin, frmLogin);
      frmLogin.ShowModal;
      if not frmLogin.ModalResult = mrOk then
        Application.Terminate;
      FreeAndNil(frmLogin);
    end;
  except on E: Exception do
    begin
      raise Exception.Create('Não foi possível conecar ao banco de dados! '+E.Message);
      Application.Terminate;
    end;
  end;
end;

procedure TfmPrincipal.FormShow(Sender: TObject);
begin
  pnl_menu_lateral.Width := 40;
  lbSistema.Caption := 'Inventory - versão '+Sistema.CapturarVersaoExe;
  lbSistema.left := imgLogoInt.Width + 30;
  lbSistema.Top  := 21;
  lbUsuarioLogado.Top := 21;
  lbUsuarioLogado.Caption := Sistema.NomeFuncionarioLogado;
  Application.ProcessMessages;
end;

procedure TfmPrincipal.pnl_fundoMouseEnter(Sender: TObject);
begin
  pnSubmenu.Visible := False;
end;

procedure TfmPrincipal.SpeedButton5Click(Sender: TObject);
begin
  pnSubmenu.Visible := not pnSubmenu.Visible;
end;

end.
