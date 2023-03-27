inherited frameCadUsuario: TframeCadUsuario
  inherited pnTitulo: TPanel
    inherited lbTitulo: TLabel
      Width = 153
      Caption = 'Cadastro de Usu'#225'rio'
      ExplicitWidth = 153
    end
    inherited btnClose: TSpeedButton
      Left = 1060
      Top = 5
      ExplicitLeft = 1060
      ExplicitTop = 5
    end
  end
  inherited pnCentral: TPanel
    inherited pnCadastro: TPanel
      object edtCodigo: TMaskEdit
        Left = 40
        Top = 58
        Width = 121
        Height = 21
        TabOrder = 1
        Text = 'edtCodigo'
      end
      object edtNome: TSearchBox
        Left = 40
        Top = 116
        Width = 425
        Height = 21
        TabOrder = 2
        Text = 'edtNome'
      end
    end
    inherited pnConsulta: TPanel
      inherited gridPesquisa: TDBGrid
        DataSource = dsConsulta
        Columns = <
          item
            Expanded = False
            FieldName = 'fun_codigo'
            Title.Caption = 'C'#243'digo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'fun_nome'
            Title.Caption = 'Nome'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'fun_dtnascimento'
            Title.Caption = 'Dt. Nascimento'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'fun_nacionalidade'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'fun_naturalidade'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'fun_sexo'
            Title.Caption = 'Sexo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'fun_estcivil'
            Title.Caption = 'Estado Civil'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'emp_rzsocial'
            Title.Caption = 'Empresa'
            Visible = True
          end>
      end
      inherited pn_Importar: TPanel
        Left = 280
        ExplicitLeft = 280
      end
      inherited pn_imprimirRel: TPanel
        Left = 126
        Visible = True
        ExplicitLeft = 126
      end
    end
  end
  inherited dsConsulta: TDataSource
    DataSet = FDConsulta
  end
  inherited FDConsulta: TFDQuery
    Connection = Connection.FDConnection
    SQL.Strings = (
      
        ' SELECT f.fun_codigo, f.fun_nome, f.fun_dtnascimento, f.fun_naci' +
        'onalidade, f.fun_naturalidade, f.fun_sexo, f.fun_estcivil, f.gra' +
        '_codigo, f.fun_linkcurrlates, f.fun_login, '
      
        ' f.fun_senha, f.dep_codigo, f.tit_codigo, f.fun_professor, f.fun' +
        '_especialidade, f.fun_telefone, f.grpa_codigo, e.emp_codigo, e.e' +
        'mp_rzsocial'
      ' FROM Funcionario f '
      ' inner join empresa e on (e.emp_codigo = f.emp_codigo)')
    object FDConsultafun_codigo: TFDAutoIncField
      FieldName = 'fun_codigo'
      Origin = 'fun_codigo'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDConsultafun_nome: TStringField
      FieldName = 'fun_nome'
      Origin = 'fun_nome'
      Size = 60
    end
    object FDConsultafun_dtnascimento: TSQLTimeStampField
      FieldName = 'fun_dtnascimento'
      Origin = 'fun_dtnascimento'
    end
    object FDConsultafun_nacionalidade: TStringField
      FieldName = 'fun_nacionalidade'
      Origin = 'fun_nacionalidade'
      Size = 40
    end
    object FDConsultafun_naturalidade: TStringField
      FieldName = 'fun_naturalidade'
      Origin = 'fun_naturalidade'
      Size = 40
    end
    object FDConsultafun_sexo: TStringField
      FieldName = 'fun_sexo'
      Origin = 'fun_sexo'
      FixedChar = True
      Size = 1
    end
    object FDConsultafun_estcivil: TStringField
      FieldName = 'fun_estcivil'
      Origin = 'fun_estcivil'
      FixedChar = True
      Size = 1
    end
    object FDConsultagra_codigo: TIntegerField
      FieldName = 'gra_codigo'
      Origin = 'gra_codigo'
    end
    object FDConsultafun_linkcurrlates: TStringField
      FieldName = 'fun_linkcurrlates'
      Origin = 'fun_linkcurrlates'
      Size = 100
    end
    object FDConsultafun_login: TStringField
      FieldName = 'fun_login'
      Origin = 'fun_login'
      Size = 40
    end
    object FDConsultafun_senha: TStringField
      FieldName = 'fun_senha'
      Origin = 'fun_senha'
      Size = 50
    end
    object FDConsultadep_codigo: TIntegerField
      FieldName = 'dep_codigo'
      Origin = 'dep_codigo'
    end
    object FDConsultatit_codigo: TIntegerField
      FieldName = 'tit_codigo'
      Origin = 'tit_codigo'
    end
    object FDConsultafun_professor: TStringField
      FieldName = 'fun_professor'
      Origin = 'fun_professor'
      FixedChar = True
      Size = 1
    end
    object FDConsultafun_especialidade: TStringField
      FieldName = 'fun_especialidade'
      Origin = 'fun_especialidade'
      Size = 50
    end
    object FDConsultafun_telefone: TStringField
      FieldName = 'fun_telefone'
      Origin = 'fun_telefone'
      Size = 12
    end
    object FDConsultagrpa_codigo: TLargeintField
      FieldName = 'grpa_codigo'
      Origin = 'grpa_codigo'
    end
    object FDConsultaemp_codigo: TFDAutoIncField
      FieldName = 'emp_codigo'
      Origin = 'emp_codigo'
      ReadOnly = True
    end
    object FDConsultaemp_rzsocial: TStringField
      FieldName = 'emp_rzsocial'
      Origin = 'emp_rzsocial'
      Size = 100
    end
  end
end
