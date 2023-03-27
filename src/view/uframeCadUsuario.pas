unit uframeCadUsuario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uframeCadastroBase, Data.DB, unfraPesquisa, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.WinXCtrls, Vcl.Mask;

type
  TframeCadUsuario = class(TframeCadastroBase)
    edtCodigo: TMaskEdit;
    edtNome: TSearchBox;
    FDConsultafun_codigo: TFDAutoIncField;
    FDConsultafun_nome: TStringField;
    FDConsultafun_dtnascimento: TSQLTimeStampField;
    FDConsultafun_nacionalidade: TStringField;
    FDConsultafun_naturalidade: TStringField;
    FDConsultafun_sexo: TStringField;
    FDConsultafun_estcivil: TStringField;
    FDConsultagra_codigo: TIntegerField;
    FDConsultafun_linkcurrlates: TStringField;
    FDConsultafun_login: TStringField;
    FDConsultafun_senha: TStringField;
    FDConsultadep_codigo: TIntegerField;
    FDConsultatit_codigo: TIntegerField;
    FDConsultafun_professor: TStringField;
    FDConsultafun_especialidade: TStringField;
    FDConsultafun_telefone: TStringField;
    FDConsultagrpa_codigo: TLargeintField;
    FDConsultaemp_codigo: TFDAutoIncField;
    FDConsultaemp_rzsocial: TStringField;
    procedure fraPesquisabtPesqClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frameCadUsuario: TframeCadUsuario;

implementation

{$R *.dfm}

uses model.connection, model.usuario;

procedure TframeCadUsuario.fraPesquisabtPesqClick(Sender: TObject);
begin
  inherited;
  TUsuario
   .New
    .Open('', dsConsulta);
end;

end.
