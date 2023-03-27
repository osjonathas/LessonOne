unit KrUtil;

interface
uses Winapi.Windows, Vcl.Controls, Vcl.StdCtrls, SysUtils, ufrmDlgMensagem, Vcl.Forms;

type
  TipoMensagem   = (tmAlerta, tmErro, tmInformacao, tmPare, tmPergunta, tmAviso);
  TStatusBotoes = (sbInicialSemDados, sbInicialComDados, sbInsercaoEdicao);
  TEstado = (eInclusao, eEdicao, eLivre);
  TMensagem = (mAlerta, mInfo, mErro);

const
   mProblemasNaConexaoComBanco    :string = 'Problemas na conex�o com o banco!';
   mPerguntaGravacao              :string = 'Deseja gravar a edi��o corrente?';
   mPerguntaCancela               :string = 'Deseja cancelar a edi��o corrente?';
   mPerguntaExclusao              :string = 'Deseja excluir o registro atual?';
   mNaoFoiPossivelIncluir         :string = 'N�o foi poss�vel realizar a inclus�o! ';
   mNaoFoiPossivelAlterar         :string = 'N�o foi poss�vel realizar a altera��o! ';
   mProblemasAoListar             :string = 'N�o foi poss�vel processar a listagem! ';
   mCanceleOuGrave                :string = 'Cancele ou grave a edi��o em andamento! ';
   mRegistroNaoEncontrado         :string = 'Nenhum registro encontrado com esses par�metros';
   mRegistroSalvoComSucesso       :string = 'Registro salvo com sucesso!';


function LerArquivoIni(aSecao, aChave: String):String;
procedure SetarFoco(Objeto: TWinControl);
function SoNumero(S:String):String;
function AllTrim(ptexto:string):string;
procedure CarregarComboCidades(aEstado: String; aCombo: TComboBox);
function StrToExt(S:string):Extended;
function CSI(ValorTexto:string):Integer;
function CpfValido(ParCpf : string) : boolean;
function CnpjValido(ParCnpj : string) : boolean;
function FormataCpfCnpj(aTexto: string): string;
function Codificar(pArmazena: String; pChave: Integer): String;
function Decodificar(pArmazena: String; pChave: Integer): String;
function CapturarVersaoExe: string;
function Encrypt(pSenha:String): String;
function Mensagem(p_Text : String = ''): TfSC_FormMensagem;


implementation

uses
  System.IniFiles;

function LerArquivoIni(aSecao, aChave: String):String;
var aArqIni : TIniFile;
begin
  Result  := '';
  aArqIni := TIniFile.Create(GetCurrentDir+'\config.ini');
  Result  := aArqIni.ReadString(aSecao, aChave, '');
  aArqIni.Free;
end;


procedure SetarFoco(Objeto: TWinControl);
begin
  TWinControl(Objeto).SetFocus;
  if Objeto.InheritsFrom(TCustomEdit) then TCustomEdit(Objeto).SelectAll;
end;

function SoNumero(S: String): String;
var StrAux : String;
    i,intAux : Integer;
begin
  Try
    StrAux := S;
    intAux := length(StrAux);
    for i:=1 to intAux do begin
      if Pos(StrAux[i],'0123456789') = 0 then begin
        StrAux[i]:=' ';
      end;
    end;
    Result:= AllTrim(StrAux);
  except
    Result:='';
  end;
end;

function AllTrim(ptexto:string):string;
var temp : string;
begin
  temp := ptexto;
  while Pos(' ', temp) > 0 do begin
    Delete(temp,Pos(' ', temp),1);
  end;
  result:=temp;
end;

function StrToExt(S:string):Extended;
var v : string;
    i,t : Integer;
begin
  try
    v := S;
    t := length(v);
    for i:=1 to t do if v[i]= FormatSettings.ThousandSeparator then v[i]:=' ';
    Result:= StrToFloat(AllTrim(v));
  except
    Result:=0;
  end;
end;

function CSI(ValorTexto:string):Integer;
begin
  try
    Result:= StrToInt(AllTrim(ValorTexto));
  except
    Result:=0;
  end;
end;

function CpfValido(ParCpf : string) : boolean;
var
  Digito1,Digito2 : integer;
  Soma : LongInt;
  Cpf : string;
begin
  Result := False;
  Cpf := ParCpf;
  if (StrToExt(Cpf) > 99999999999) or (StrToExt(Cpf)=0) then exit;
  Cpf := FormatFloat('00000000000',StrToExt(Cpf));
  { calcula o 1o. d�gito }
  Soma := (CSI(Cpf[01]) * 10) +
          (CSI(Cpf[02]) * 09) +
          (CSI(Cpf[03]) * 08) +
          (CSI(Cpf[04]) * 07) +
          (CSI(Cpf[05]) * 06) +
          (CSI(Cpf[06]) * 05) +
          (CSI(Cpf[07]) * 04) +
          (CSI(Cpf[08]) * 03) +
          (CSI(Cpf[09]) * 02);
  Soma := Soma * 10;
  Digito1 := Soma mod 11;
  if Digito1 = 10 then
    Digito1 := 0;
  { compara o resultado com o 1o. digito informado }
  if Digito1 = CSI(Cpf[10]) then
  begin
    { se correto ... }
    { calcula o 2o. d�gito }
    Soma := (CSI(Cpf[01]) * 11) +
            (CSI(Cpf[02]) * 10) +
            (CSI(Cpf[03]) * 09) +
            (CSI(Cpf[04]) * 08) +
            (CSI(Cpf[05]) * 07) +
            (CSI(Cpf[06]) * 06) +
            (CSI(Cpf[07]) * 05) +
            (CSI(Cpf[08]) * 04) +
            (CSI(Cpf[09]) * 03) +
            (CSI(Cpf[10]) * 02);
    Soma := Soma * 10;
    Digito2 := Soma mod 11;
    if Digito2 = 10 then
      Digito2 := 0;
    { compara o resultado com o 2o. digito informado }
    if Digito2 = CSI(Cpf[11]) then
    begin
      { se correto ... }
      { retorna Cpf v�lido }
      Result := true;
    end;
  end;
end;

function CnpjValido(ParCnpj : string) : boolean;
var
  Digito1,Digito2 : integer;
  Soma : LongInt;
  cnpj : string;
begin
  Result := False;
  cnpj    := ParCnpj;
  if (StrToExt(cnpj) > 99999999999999) or (StrToExt(cnpj)=0) then exit;
  cnpj := FormatFloat('00000000000000',StrToExt(cnpj));
  { calcula o 1o. d�gito }
  Soma := (CSI(cnpj[01]) * 5) +
          (CSI(cnpj[02]) * 4) +
          (CSI(cnpj[03]) * 3) +
          (CSI(cnpj[04]) * 2) +
          (CSI(cnpj[05]) * 9) +
          (CSI(cnpj[06]) * 8) +
          (CSI(cnpj[07]) * 7) +
          (CSI(cnpj[08]) * 6) +
          (CSI(cnpj[09]) * 5) +
          (CSI(cnpj[10]) * 4) +
          (CSI(cnpj[11]) * 3) +
          (CSI(cnpj[12]) * 2);
  Soma := Soma * 10;
  Digito1 := Soma mod 11;
  if Digito1 = 10 then
    Digito1 := 0;
  { compara o resultado com o 1o. digito informado }
  if Digito1 = CSI(cnpj[13]) then
  begin
    { se correto ... }
    { calcula o 2o. d�gito }
    Soma := (CSI(cnpj[01]) * 6) +
            (CSI(cnpj[02]) * 5) +
            (CSI(cnpj[03]) * 4) +
            (CSI(cnpj[04]) * 3) +
            (CSI(cnpj[05]) * 2) +
            (CSI(cnpj[06]) * 9) +
            (CSI(cnpj[07]) * 8) +
            (CSI(cnpj[08]) * 7) +
            (CSI(cnpj[09]) * 6) +
            (CSI(cnpj[10]) * 5) +
            (CSI(cnpj[11]) * 4) +
            (CSI(cnpj[12]) * 3) +
            (CSI(cnpj[13]) * 2);
    Soma := Soma * 10;
    Digito2 := Soma mod 11;
    if Digito2 = 10 then
      Digito2 := 0;
    { compara o resultado com o 2o. digito informado }
    if Digito2 = CSI(cnpj[14]) then
    begin
      { se correto ... }
      { retorna cnpj v�lido }
      cnpjValido := true;
    end;
  end;
end;

function FormataCpfCnpj(aTexto: string): string;
var aTextoFormatado : string;
begin
  Result := '';
  aTextoFormatado := '';
  if Trim(aTexto) <> EmptyStr then
  begin
    if length(trim(aTexto)) = 14 then
    begin
      aTextoFormatado := copy(aTexto,1,3)+'.'+copy(aTexto,4,3)+'.'+copy(aTexto,7,3)+'/'+copy(aTexto,10,3)+'-'+copy(aTexto,13,2);
    end
    else if length(trim(aTexto)) <= 11 then
    begin
      if length(trim(aTexto)) < 11 then
      begin
        aTextoFormatado := FormatFloat('00000000000', StrToInt64(aTextoFormatado));
      end;
      aTextoFormatado := copy(aTexto,1,3)+'.'+copy(aTexto,4,3)+'.'+copy(aTexto,7,3)+'-'+copy(aTexto,10,2);
    end;
    Result := aTextoFormatado;
  end;
end;

function Codificar(pArmazena: String; pChave: Integer): String;
var
  wl_Resultado: String;
  wl_Temporario: Char;
  wl_I, wl_CodIndex: Integer;
begin
  wl_Resultado := '';
  wl_Temporario:= ' '; //Tem q ter espaco porq [e do tipo char
  for wl_I := 1 to Length(pArmazena) do
    begin
      for wl_CodIndex := 1 to pChave do
        begin
          wl_Temporario := Succ(pArmazena[wl_I]);
          pArmazena[wl_I] := wl_Temporario;
        end;
        wl_Resultado := wl_Resultado + wl_Temporario;
    end;
    Result := wl_Resultado;
end;

function Decodificar(pArmazena: String; pChave: Integer): String;
var
  wl_Resultado: String;
  wl_Temporario: Char;
  wl_I, wl_CodIndex: Integer;
begin
  wl_Resultado := '';
  wl_Temporario:= ' '; //Tem q ter espaco porq [e do tipo char
  for wl_I := 1 to Length(pArmazena) do
    begin
      for wl_CodIndex := 1 to pChave do
        begin
          wl_Temporario := Pred(pArmazena[wl_I]);
          pArmazena[wl_I] := wl_Temporario;
        end;
        wl_Resultado := wl_Resultado + wl_Temporario;
    end;
    Result := wl_Resultado;
end;

function CapturarVersaoExe: string;
var VerInfoSize: DWORD;
    VerInfo: Pointer;
    VerValueSize: DWORD;
    VerValue: PVSFixedFileInfo;
    Dummy: DWORD;
    aVersao : string;
begin
  VerInfoSize := GetFileVersionInfoSize(PChar(ParamStr(0)), Dummy);
  GetMem(VerInfo, VerInfoSize);
  GetFileVersionInfo(PChar(ParamStr(0)), 0,VerInfoSize, VerInfo);
  VerQueryValue(VerInfo, '\', Pointer(VerValue),VerValueSize);

  with VerValue^ do
  begin
    aVersao := IntToStr(dwFileVersionMS shr 16);
    aVersao := aVersao + '.' + IntToStr(dwFileVersionMS and $FFFF);
    aVersao := aVersao + '.' + IntToStr(dwFileVersionLS shr 16);
//    aVersao := aVersao + '.' + IntToStr(dwFileVersionLS and $FFFF);
  end;
  Result   := aVersao;
  FreeMem(VerInfo, VerInfoSize);
end;

function Encrypt(pSenha:String ): String;
const
  wl_Chave : String = 'PAPERS';
var
  wl_x, wl_y: Integer;
  wl_newpass : String;
begin
  for wl_x := 1 to Length(wl_Chave) do
  begin
    wl_newpass := '';
    for wl_y := 1 to Length(pSenha) do
      wl_newpass := wl_newpass + chr((Ord(wl_Chave[wl_x]) xor Ord(pSenha[wl_y])));
    pSenha := wl_newpass;
  end;
  Result := pSenha;
end;

procedure CarregarComboCidades(aEstado: String; aCombo: TComboBox);
begin
//  if dm.OpenDataSet('select distinct cid_nome from cidade where CEP_UF = '+QuotedStr(AEstado)+' order by CEP_CIDADE', dm.DadosSQL.FDConsulta) then
//  begin
//    ACombo.Clear;
//    DadosSQL.FDConsulta.First;
//    while not DadosSQL.FDConsulta.Eof do
//    begin
//      ACombo.Items.Add(DadosSQL.FDConsulta.FieldByName('CEP_CIDADE').AsString);
//      DadosSQL.FDConsulta.Next;
//    end;
//  end;
end;

function Mensagem(p_Text : String = '') : TfSC_FormMensagem;
begin
  Result:= TfSC_FormMensagem.Create(Screen.ActiveForm);
  TfSC_FormMensagem(Result).setText(p_Text);
  Result.Show;
  Result.Update;
  Application.ProcessMessages;
end;


end.
