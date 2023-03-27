inherited frameCadEmpresa: TframeCadEmpresa
  inherited pnTitulo: TPanel
    inherited lbTitulo: TLabel
      Width = 159
      Caption = 'Cadastro de Empresa'
      ExplicitWidth = 159
    end
    inherited btnClose: TSpeedButton
      Top = 1
      ExplicitLeft = 1065
      ExplicitTop = 1
    end
  end
  inherited pnCentral: TPanel
    inherited pnCadastro: TPanel
      object edtCodigo: TLabeledEdit
        Left = 17
        Top = 78
        Width = 120
        Height = 23
        EditLabel.Width = 39
        EditLabel.Height = 15
        EditLabel.Caption = 'C'#243'digo'
        TabOrder = 1
        Text = ''
      end
      object edtDescricao: TLabeledEdit
        Left = 140
        Top = 78
        Width = 544
        Height = 23
        EditLabel.Width = 51
        EditLabel.Height = 15
        EditLabel.Caption = 'Descri'#231#227'o'
        TabOrder = 2
        Text = ''
      end
      object edtCNPJ: TLabeledEdit
        Left = 687
        Top = 77
        Width = 123
        Height = 23
        EditLabel.Width = 27
        EditLabel.Height = 15
        EditLabel.Caption = 'CNPJ'
        EditMask = '99.999.999/9999-99;0'
        MaxLength = 18
        TabOrder = 3
        Text = ''
      end
    end
    inherited pnConsulta: TPanel
      inherited gridPesquisa: TDBGrid
        DataSource = dsConsulta
        OnDblClick = gridPesquisaDblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'emp_codigo'
            Title.Caption = 'C'#243'digo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'emp_cnpj'
            Title.Caption = 'CNPJ'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'emp_rzsocial'
            Title.Caption = 'Raz'#227'o Social'
            Visible = True
          end>
      end
      inherited fraPesquisa: TfraPesquisa
        inherited btPesq: TSpeedButton
          Left = 671
          ExplicitLeft = 671
        end
        inherited pnFiltros: TPanel
          inherited pn_PesqFiltro: TPanel
            Top = -94
            ExplicitTop = -94
          end
        end
      end
    end
  end
  inherited dsConsulta: TDataSource
    DataSet = FDConsulta
    Top = 339
  end
  inherited FDConsulta: TFDQuery
    Connection = Connection.FDConnection
    SQL.Strings = (
      
        'select emp_codigo, emp_rzsocial, emp_cnpj from empresa  where 1=' +
        '1')
    object FDConsultaemp_codigo: TFDAutoIncField
      FieldName = 'emp_codigo'
      Origin = 'C'#243'digo'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDConsultaemp_cnpj: TStringField
      FieldName = 'emp_cnpj'
      Origin = 'CNPJ'
      Size = 14
    end
    object FDConsultaemp_rzsocial: TStringField
      FieldName = 'emp_rzsocial'
      Origin = 'Raz'#227'o Social'
      Size = 100
    end
  end
end
