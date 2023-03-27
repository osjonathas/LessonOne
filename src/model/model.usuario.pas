unit model.usuario;

interface
  uses classes, System.StrUtils, System.SysUtils, Data.DB, FireDAC.Comp.Client, einterface.usuario;

 type
   TUsuario = class(TInterfacedObject, iUsuario)
   private
     FFDQuery : TFDQuery;
     FCodigo: integer;
     FNome : String;
     FLogin : String;
     FSenha : String;
     FCodigoEmpresa : integer;

   public
     Constructor Create;
     Destructor Destroy; override;

     class function New:iUsuario;

     function Codigo(Value: integer) :iUsuario; overload;
     function Codigo :integer; overload;

     function Nome(Value: String) :iUsuario; overload;
     function Nome: String; overload;

     function Login(Value: String) :iUsuario; overload;
     function Login: String; overload;

     function Senha(Value: String) :iUsuario; overload;
     function Senha: String; overload;

     function CodigoEmpresa(Value: integer) :iUsuario; overload;
     function CodigoEmpresa: integer; overload;

     function Open(aTabela : string; aDataSource : TDataSource):iUsuario; overload;
     function getUsuario(aCodigo:integer; aLogin: string):iUsuario; overload;
   end;

implementation

{ TUsuario }

uses model.connection;

function TUsuario.Codigo(Value: integer): iUsuario;
begin
  Result := Self;
  FCodigo := Value;
end;

function TUsuario.CodigoEmpresa(Value: integer): iUsuario;
begin
  Result := Self;
  FCodigoEmpresa := Value;
end;

function TUsuario.CodigoEmpresa: integer;
begin
  Result := FCodigoEmpresa;
end;

constructor TUsuario.Create;
begin
  FFDQuery := TFDQuery.Create(nil);
end;

destructor TUsuario.Destroy;
begin

end;

function TUsuario.getUsuario(aCodigo: integer; aLogin: string): iUsuario;
begin
  try
    FFDQuery.Close;
    FFDQuery.Connection := connection.FDConnection;
    FFDQuery.Sql.Clear;
    FFDQuery.Sql.Add(' SELECT f.fun_codigo, f.fun_nome, f.fun_dtnascimento, f.fun_nacionalidade, f.fun_naturalidade, f.fun_sexo, f.fun_estcivil, f.gra_codigo, f.fun_linkcurrlates, f.fun_login,');
    FFDQuery.Sql.Add(' f.fun_senha, f.dep_codigo, f.tit_codigo, f.fun_professor, f.fun_especialidade, f.fun_telefone, f.grpa_codigo, e.emp_codigo, e.emp_rzsocial');
    FFDQuery.Sql.Add(' FROM Funcionario f');
    FFDQuery.Sql.Add(' inner join empresa e on (e.emp_codigo = f.emp_codigo)');
    FFDQuery.Open();
    if not FFDQuery.IsEmpty then
    begin
      Self.Codigo(FFDQuery.FieldByName('fun_codigo').AsInteger);
      Self.Nome(FFDQuery.FieldByName('fun_nome').AsString);
      Self.Login(FFDQuery.FieldByName('fun_login').AsString);
      Self.Senha(FFDQuery.FieldByName('fun_senha').AsString);
      Self.CodigoEmpresa(FFDQuery.FieldByName('emp_codigo').AsInteger);
    end;
    Result := self;
  finally

  end;
end;

function TUsuario.Login: String;
begin
  Result := FLogin;
end;

function TUsuario.Login(Value: String): iUsuario;
begin
  Result := Self;
  FLogin := Value;
end;

class function TUsuario.New: iUsuario;
begin
  Result := Self.Create;
end;

function TUsuario.Nome: String;
begin
  Result := FNome;
end;

function TUsuario.Open(aTabela: string; aDataSource: TDataSource): iUsuario;
begin
  try
    FFDQuery.Close;
    FFDQuery.Connection := connection.FDConnection;
    FFDQuery.Sql.Clear;
    FFDQuery.Sql.Add(' SELECT f.fun_codigo, f.fun_nome, f.fun_dtnascimento, f.fun_nacionalidade, f.fun_naturalidade, f.fun_sexo, f.fun_estcivil, f.gra_codigo, f.fun_linkcurrlates, f.fun_login,');
    FFDQuery.Sql.Add(' f.fun_senha, f.dep_codigo, f.tit_codigo, f.fun_professor, f.fun_especialidade, f.fun_telefone, f.grpa_codigo, e.emp_codigo, e.emp_rzsocial');
    FFDQuery.Sql.Add(' FROM Funcionario f');
    FFDQuery.Sql.Add(' inner join empresa e on (e.emp_codigo = f.emp_codigo)');
    FFDQuery.Open();
    aDataSource.DataSet := FFDQuery;
    Result := self;
  finally

  end;
end;

function TUsuario.Nome(Value: String): iUsuario;
begin
  Result := Self;
  FNome := Value;
end;

function TUsuario.Senha(Value: String): iUsuario;
begin
  Result := Self;
  FSenha := Value;
end;

function TUsuario.Codigo: integer;
begin
  Result := FCodigo;
end;

function TUsuario.Senha: String;
begin
  Result := FSenha;
end;

end.
