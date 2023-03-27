unit uframeCadastroBase;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Data.DB, unfraPesquisa, Vcl.Grids, Vcl.DBGrids,
  KrUtil, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TframeCadastroBase = class(TFrame)
    pnTitulo: TPanel;
    btnRest: TSpeedButton;
    lbTitulo: TLabel;
    btnClose: TSpeedButton;
    lbSubTituloForm: TLabel;
    pnCentral: TPanel;
    pnCadastro: TPanel;
    pnBotoesForm: TPanel;
    pn_Confirma: TPanel;
    btConfirma: TSpeedButton;
    pn_Cancela: TPanel;
    btCancela: TSpeedButton;
    pn_Exclui: TPanel;
    btExclui: TSpeedButton;
    pnConsulta: TPanel;
    gridPesquisa: TDBGrid;
    pn_IncluirNovo: TPanel;
    btIncluir: TSpeedButton;
    pnResultado: TPanel;
    fraPesquisa: TfraPesquisa;
    dsConsulta: TDataSource;
    FDConsulta: TFDQuery;
    opdProduto: TOpenDialog;
    pn_Importar: TPanel;
    btImportar: TSpeedButton;
    pn_imprimirRel: TPanel;
    btRel: TSpeedButton;
    procedure fraPesquisabtPesqClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure FrameResize(Sender: TObject);
    procedure btIncluirClick(Sender: TObject);
    procedure gridPesquisaDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btCancelaClick(Sender: TObject);
    procedure btConfirmaClick(Sender: TObject);
  private
    FNomeTabela: String;
    FCampoControle: String;
    { Private declarations }
  public
    { Public declarations }
    FInclusao, FEdicao : boolean;
    procedure PosicionarBotoes;
    procedure DesenharTelaInicial;

    procedure MudarEstadoBotoes(opcao: TStatusBotoes);
    procedure ColocarEmEstadoInclusao; Virtual;
    procedure ColocarEmEstadoEdicao; Virtual;
    procedure CancelarEdicao; virtual;
    procedure Excluir; Virtual;
    procedure Persistir; virtual;
    procedure ExecutarPesquisa; virtual;
    procedure CarregarRegistroPesquisa(AValor: String); virtual;

    property NomeTabela: String read FNomeTabela write FNomeTabela;
    property CampoControle: String read FCampoControle write FCampoControle;

    procedure TratamentoDeTecla(aKey : Char);

  end;

implementation

{$R *.dfm}

uses UnMensagem, UnitPergunta;


{ TframeCadastroBase }

procedure TframeCadastroBase.btCancelaClick(Sender: TObject);
begin
  CancelarEdicao;
end;

procedure TframeCadastroBase.btConfirmaClick(Sender: TObject);
begin
  Persistir;
end;

procedure TframeCadastroBase.btIncluirClick(Sender: TObject);
begin
  ColocarEmEstadoInclusao;
end;

procedure TframeCadastroBase.btnCloseClick(Sender: TObject);
begin
  if (not FInclusao) and (not FEdicao) then
  begin
    Visible := False;
    align   := alNone;
    SendToBack;
  end
  else
    TFrmMensagem.ExibirMensagem(mCanceleOuGrave, tmInformacao);
end;

procedure TframeCadastroBase.CancelarEdicao;
begin
  if not TfrmPergunta.Pergunta(mPerguntaCancela, tmPergunta) then
    exit;

  MudarEstadoBotoes(sbInicialSemDados);
  FInclusao := False;
  FEdicao   := False;
  pnConsulta.Visible := True;
  pnCadastro.Visible := False;
  pnConsulta.BringToFront;
end;

procedure TframeCadastroBase.CarregarRegistroPesquisa(AValor: String);
begin

end;

procedure TframeCadastroBase.ColocarEmEstadoEdicao;
begin
  pnConsulta.Visible := False;
  pnCadastro.Visible := True;
  pnCadastro.BringToFront;
  MudarEstadoBotoes(sbInsercaoEdicao);
  FEdicao := True;
end;

procedure TframeCadastroBase.ColocarEmEstadoInclusao;
begin
  pnConsulta.Visible := False;
  pnCadastro.Visible := True;
  pnCadastro.BringToFront;
  MudarEstadoBotoes(sbInsercaoEdicao);
  FInclusao := True;
end;

procedure TframeCadastroBase.DesenharTelaInicial;
begin

end;

procedure TframeCadastroBase.Excluir;
begin

end;

procedure TframeCadastroBase.ExecutarPesquisa;
begin

end;

procedure TframeCadastroBase.FrameResize(Sender: TObject);
begin
  pnConsulta.BringToFront;
end;

procedure TframeCadastroBase.fraPesquisabtPesqClick(Sender: TObject);
begin
  ExecutarPesquisa;
end;

procedure TframeCadastroBase.gridPesquisaDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if not Odd (gridPesquisa.DataSource.DataSet.RecNo) then
    if not (gdSelected in State) then
    begin
      gridPesquisa.Canvas.Brush.Color := $00EEEEEE;
      gridPesquisa.Canvas.FillRect(Rect);
      gridPesquisa.DefaultDrawDataCell(Rect, Column.Field,State);
    end;
end;

procedure TframeCadastroBase.MudarEstadoBotoes(opcao: TStatusBotoes);
begin

end;

procedure TframeCadastroBase.Persistir;
begin
  pnConsulta.Visible := True;
  pnCadastro.Visible := False;
  pnConsulta.BringToFront;
  MudarEstadoBotoes(sbInicialSemDados);
  FInclusao := False;
  FEdicao := False;
end;

procedure TframeCadastroBase.PosicionarBotoes;
begin

end;

procedure TframeCadastroBase.TratamentoDeTecla(aKey: Char);
begin

end;

end.
