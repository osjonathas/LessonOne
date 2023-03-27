unit einterface.usuario;

interface
uses Data.DB;  //, model.usuario;
  type
  iUsuario = interface

    ['{DB0433D7-1DB5-4BDF-AD77-83C4612BF2F3}']
    {function DataSet(aValue : TDataSource): iTB_Usuario;
    procedure OpenTable;
    function ReturnTableID(id: string):TUsuario;}

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

end.
