object frameCadastroBase: TframeCadastroBase
  Left = 0
  Top = 0
  Width = 1101
  Height = 619
  TabOrder = 0
  OnResize = FrameResize
  object pnTitulo: TPanel
    Left = 0
    Top = 0
    Width = 1101
    Height = 27
    Align = alTop
    Alignment = taLeftJustify
    BevelOuter = bvNone
    Color = clWhite
    FullRepaint = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'System'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
    DesignSize = (
      1101
      27)
    object btnRest: TSpeedButton
      Left = 1034
      Top = 4
      Width = 25
      Height = 25
      Anchors = [akTop, akRight]
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = 16481536
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Glyph.Data = {
        DE030000424DDE03000000000000360000002800000011000000120000000100
        180000000000A803000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF00000000000000000000000000000000
        0000000000000000000000000000000000000000000000FFFFFFFFFFFF00FFFF
        FFFFFFFF00000000000000000000000000000000000000000000000000000000
        0000000000000000000000FFFFFFFFFFFF00FFFFFFFFFFFF0000000000000000
        00000000000000000000000000000000000000000000000000000000000000FF
        FFFFFFFFFF00FFFFFFFFFFFF000000000000000000FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF000000000000000000FFFFFFFFFFFF00FFFFFFFFFFFF
        000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
        00000000000000FFFFFFFFFFFF00FFFFFFFFFFFF000000000000000000FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000FFFFFFFFFF
        FF00FFFFFFFFFFFF000000000000000000000000000000000000000000000000
        000000000000000000000000000000FFFFFFFFFFFF00FFFFFFFFFFFF00000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000FFFFFFFFFFFF00FFFFFFFFFFFF00000000000000000000000000000000
        0000000000000000000000000000000000000000000000FFFFFFFFFFFF00FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF00}
      ParentFont = False
      Visible = False
      ExplicitLeft = 919
    end
    object lbTitulo: TLabel
      Left = 116
      Top = 5
      Width = 187
      Height = 21
      Caption = 'Formul'#225'rio Cadatro Base'
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = 11564800
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      StyleName = 'Windows'
    end
    object btnClose: TSpeedButton
      Left = 1065
      Top = 4
      Width = 25
      Height = 25
      Anchors = [akTop, akRight]
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = 16481536
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Glyph.Data = {
        DE030000424DDE03000000000000360000002800000011000000120000000100
        180000000000A803000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFF3A90DB000000660000FFFFB6FF
        FFFFFFFFFFFFFFFF0066B60000003A0000FFDB90FFFFFFFFFFFFFFFFFF00FFFF
        FFFFFFFFFFFFFFDBFFFF003A90000000B66600FFFFFFFFFFFF66B6FF00000000
        0000DB903AFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFB6FF
        FF000066000000DB903A90DBFF00003A000000B66600FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF90DBFF00003A0000000000
        00000000660000FFFFB6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF3A90DB000000000000000000FFB666FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        66B6FF000000000000903A00FFFFDBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB6FFFF000066000000000000000000
        B66600FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFF0066B60000003A000066B69000003A000000FFB666FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFF3A90DB000000000000FF
        B666FFFFFF66B6FF0000003A0000FFDB90FFFFFFFFFFFFFFFFFFFFFFFF00FFFF
        FFFFFFFFFFFFFF90DBFF00003A000000DB903AFFFFFFFFFFFFFFFFFF3A90DB00
        0000660000FFFFB6FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF00}
      ParentFont = False
      OnClick = btnCloseClick
      ExplicitLeft = 950
    end
    object lbSubTituloForm: TLabel
      Left = 10
      Top = 5
      Width = 94
      Height = 21
      Caption = 'LESSON ONE'
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = 11564800
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      StyleName = 'Windows'
    end
  end
  object pnCentral: TPanel
    Left = 0
    Top = 27
    Width = 1101
    Height = 592
    Align = alClient
    BevelOuter = bvNone
    Color = 16709097
    Padding.Left = 15
    Padding.Top = 15
    Padding.Right = 15
    Padding.Bottom = 15
    ParentBackground = False
    TabOrder = 1
    object pnCadastro: TPanel
      Left = 15
      Top = 15
      Width = 1071
      Height = 562
      Align = alClient
      Color = clWhite
      ParentBackground = False
      TabOrder = 0
      StyleName = 'Windows'
      object pnBotoesForm: TPanel
        Left = 1
        Top = 1
        Width = 1069
        Height = 41
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        DesignSize = (
          1069
          41)
        object pn_Confirma: TPanel
          Left = 835
          Top = 4
          Width = 105
          Height = 32
          Color = 6010624
          DoubleBuffered = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentBackground = False
          ParentDoubleBuffered = False
          ParentFont = False
          ParentShowHint = False
          ShowHint = False
          TabOrder = 0
          object btConfirma: TSpeedButton
            Left = 1
            Top = 1
            Width = 103
            Height = 30
            Align = alClient
            Caption = 'Confirmar'
            Flat = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -13
            Font.Name = 'Segoe UI Semibold'
            Font.Style = []
            ParentFont = False
            OnClick = btConfirmaClick
            ExplicitLeft = 9
          end
        end
        object pn_Cancela: TPanel
          Left = 724
          Top = 4
          Width = 105
          Height = 32
          Anchors = [akLeft]
          Color = clSilver
          DoubleBuffered = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentBackground = False
          ParentDoubleBuffered = False
          ParentFont = False
          ParentShowHint = False
          ShowHint = False
          TabOrder = 1
          object btCancela: TSpeedButton
            Left = 1
            Top = 1
            Width = 103
            Height = 30
            Align = alClient
            Caption = 'Cancelar'
            Flat = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -13
            Font.Name = 'Segoe UI Semibold'
            Font.Style = []
            ParentFont = False
            OnClick = btCancelaClick
            ExplicitLeft = 2
          end
        end
        object pn_Exclui: TPanel
          Left = 613
          Top = 4
          Width = 105
          Height = 32
          Color = clRed
          DoubleBuffered = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentBackground = False
          ParentDoubleBuffered = False
          ParentFont = False
          ParentShowHint = False
          ShowHint = False
          TabOrder = 2
          object btExclui: TSpeedButton
            Left = 1
            Top = 1
            Width = 103
            Height = 30
            Align = alClient
            Caption = 'Excluir'
            Flat = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -13
            Font.Name = 'Segoe UI Semibold'
            Font.Style = []
            ParentFont = False
            ExplicitLeft = 2
            ExplicitTop = 2
          end
        end
      end
    end
    object pnConsulta: TPanel
      Left = 15
      Top = 15
      Width = 1071
      Height = 562
      Align = alClient
      Color = clWhite
      ParentBackground = False
      TabOrder = 1
      StyleName = 'Windows'
      object gridPesquisa: TDBGrid
        Left = 1
        Top = 136
        Width = 1069
        Height = 425
        Align = alBottom
        Anchors = [akLeft, akTop, akRight, akBottom]
        DrawingStyle = gdsClassic
        FixedColor = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        Options = [dgTitles, dgColLines, dgRowSelect, dgTitleClick, dgTitleHotTrack]
        ParentFont = False
        TabOrder = 1
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clBlack
        TitleFont.Height = -13
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDrawColumnCell = gridPesquisaDrawColumnCell
      end
      object pn_IncluirNovo: TPanel
        Left = 16
        Top = 68
        Width = 100
        Height = 32
        Color = 12615680
        DoubleBuffered = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentBackground = False
        ParentDoubleBuffered = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = False
        TabOrder = 0
        object btIncluir: TSpeedButton
          Left = 1
          Top = 1
          Width = 98
          Height = 30
          Align = alClient
          Caption = 'Incluir Novo'
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = []
          ParentFont = False
          OnClick = btIncluirClick
          ExplicitTop = 9
        end
      end
      object pnResultado: TPanel
        Left = 1
        Top = 113
        Width = 1069
        Height = 23
        Align = alBottom
        BevelOuter = bvNone
        Caption = 'Resultado'
        Color = 12615680
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -15
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        TabOrder = 2
      end
      inline fraPesquisa: TfraPesquisa
        Left = 17
        Top = 23
        Width = 707
        Height = 31
        VertScrollBar.Style = ssFlat
        VertScrollBar.Tracking = True
        VertScrollBar.Visible = False
        AutoScroll = True
        Color = clWhite
        ParentBackground = False
        ParentColor = False
        TabOrder = 3
        StyleName = 'Windows'
        ExplicitLeft = 17
        ExplicitTop = 23
        ExplicitWidth = 707
        ExplicitHeight = 31
        inherited Shape1: TShape
          Width = 707
          ExplicitWidth = 707
        end
        inherited btConf: TSpeedButton
          Left = 631
          ExplicitLeft = 631
        end
        inherited btPesq: TSpeedButton
          Left = 670
          OnClick = fraPesquisabtPesqClick
          ExplicitLeft = 670
        end
        inherited edtValor: TEdit
          Width = 557
          ExplicitWidth = 557
        end
        inherited pnFiltros: TPanel
          Width = 707
          Height = 0
          ExplicitWidth = 707
          ExplicitHeight = 0
          inherited pn_PesqFiltro: TPanel
            Left = 575
            Top = -45
            ExplicitLeft = 575
            ExplicitTop = -45
          end
          inherited edtValor1: TLabeledEdit
            EditLabel.ExplicitLeft = 21
            EditLabel.ExplicitTop = 0
          end
          inherited edtValor2: TLabeledEdit
            EditLabel.ExplicitLeft = 21
            EditLabel.ExplicitTop = 48
          end
          inherited edtValor3: TLabeledEdit
            EditLabel.ExplicitLeft = 21
            EditLabel.ExplicitTop = 93
          end
        end
      end
      object pn_Importar: TPanel
        Left = 128
        Top = 68
        Width = 100
        Height = 32
        Color = 6406400
        DoubleBuffered = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentBackground = False
        ParentDoubleBuffered = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = False
        TabOrder = 4
        Visible = False
        object btImportar: TSpeedButton
          Left = 1
          Top = 1
          Width = 98
          Height = 30
          Align = alClient
          Caption = 'Importar'
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = []
          Glyph.Data = {
            12090000424D120900000000000036000000280000001C0000001B0000000100
            180000000000DC080000C40E0000C40E00000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9F4D9D7EBBBD7EBBBD7EB
            BBD7EBBBD7EBBBD7EBBBD7EBBBD7EBBBD7EBBBD7EBBBD7EBBBD7EBBBD7EBBBD7
            EBBBD7EBBBD7EBBBDFEFC9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFE9F4D96BB60369B50069B50069B50069B50069B50069B50069B5
            0069B50069B50069B50069B50069B50069B50069B50069B50069B50069B500C6
            E39EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD9ECBF69B500
            69B50069B50069B50069B50069B50069B50069B50069B50069B50069B50069B5
            0069B50069B50069B50069B50069B50069B500B4DA7FFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFD9ECBF69B50069B50069B50069B50069B500
            69B50069B50069B50069B50069B50069B50069B50069B50069B50069B50069B5
            0069B50069B500B4DA7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFD9ECBF69B50069B50069B50069B50069B50069B50069B50069B50069B500
            69B50069B50069B50069B50069B50069B50069B50069B50069B500B4DA7FFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD9ECBF69B50069B50069
            B50069B50069B50069B50069B50069B50069B50069B50069B50069B50069B500
            69B50069B50069B50069B50069B500B4DA7FFFFFFFFFFFFFFFFFFFF2F9D7E6F4
            B1E6F4B1E6F4B1E6F4B1C8E28880C11E80C11E80C11E80C11E83C11F9FD046A4
            D24CA4D24CA4D24CA7D251A4D24CA4D24CA4D24CA4D24CA4D24CA4D24CA4D24C
            A4D24CCDE799FFFFFFFFFFFFFFFFFFDCEF90D6EC7DD6EC7DD6EC7DD6EC7DBEDF
            6D69B50069B50069B50069B50069B50098CC27B4DA3DB4DA3DB4DA3DBCDC52B4
            DA3DB4DA3DB4DA3DB4DA3DB4DA3DB4DA3DB4DA3DB4DA3DD9EC9EFFFFFFFFFFFF
            FFFFFFDAEE8CD6EC7DD6EC7EDBEF8ED9ED85BEDF6D69B5007CBE2073BA1169B5
            0069B50098CC26B4DA3DB4DA3DB4DA3DBCDC52B4DA3DB4DA3DB4DA3DB4DA3DB4
            DA3DB4DA3DB4DA3DB4DA3DD9EC9EFFFFFFFFFFFFFFFFFFDAEE8CD6EC7DD6EC7D
            F1F8D2F6FBE3BEDF6E8EC73FFDFEFB85C32F69B50069B50098CC26B4DA3DB4DA
            3DB4DA3DBCDC52B4DA3DB4DA3DB4DA3DB4DA3DB4DA3DB4DA3DB4DA3DB4DA3DD9
            EC9EFFFFFFFFFFFFFFFFFFDAEE8CD6EC7DD6EC7DD9ED87FCFDF4D3E99BDEEFC7
            B7DC8569B50069B50069B50098CC26B4DA3DB4DA3DB4DA3DBCDC52B4DA3DB4DA
            3DB4DA3DB4DA3DB4DA3DB4DA3DB4DA3DB4DA3DD9EC9EFFFFFFFFFFFFFFFFFFDA
            EE8CD6EC7DD6EC7DD6EC7DE5F3AEFAFCF5EAF5DC6EB80969B50069B50069B500
            98CC26B4DA3DB4DA3DB4DA3DBBDD51B4DA3DB4DA3DB4DA3DB4DA3DB4DA3DB4DA
            3DB4DA3DB4DA3DDAED9EFFFFFFFFFFFFFFFFFFDAEE8CD6EC7DD6EC7DD6EC7DE4
            F2A9FDFDFAF4FAE4B6DB43B4DA3DB4DA3DB4DA3DC9E565D6EC7DD6EC7DD6EC7D
            D9ED8BD6EC7DD6EC7DD6EC7DD6EC7DD6EC7DD6EC7DD6EC7DD6EC7DEAF5BEFFFF
            FFFFFFFFFFFFFFDAEE8CD6EC7DD6EC7DD7ED82FAFDEFE7F4B9EEF6D2DAED9EB4
            DA3DB4DA3DB4DA3DC9E565D6EC7DD6EC7DD6EC7DD9ED8BD6EC7DD6EC7DD6EC7D
            D6EC7DD6EC7DD6EC7DD6EC7DD6EC7DEAF5BEFFFFFFFFFFFFFFFFFFDAEE8CD6EC
            7DD6EC7DEBF6BFFBFDF3D5EB84C4E268FDFEFAC0E05BB4DA3DB4DA3DC9E565D6
            EC7DD6EC7DD6EC7DD9ED8BD6EC7DD6EC7DD6EC7DD6EC7DD6EC7DD6EC7DD6EC7D
            D6EC7DEAF5BEFFFFFFFFFFFFFFFFFFDAEE8CD6EC7DD6EC7DDAEE8BDAEE88D2EA
            7EB4DA3DBDDE55B9DC49B4DA3DB4DA3DC9E565D6EC7DD6EC7DD6EC7DD9ED8BD6
            EC7DD6EC7DD6EC7DD6EC7DD6EC7DD6EC7DD6EC7DD6EC7DEAF5BEFFFFFFFFFFFF
            FFFFFFDCEF90D6EC7DD6EC7DD6EC7DD6EC7DD2EA7EB4DA3DB4DA3DB4DA3DB4DA
            3DB4DA3DCAE667D6EC7DD6EC7DD6EC7DD9ED8BD6EC7DD6EC7DD6EC7DD6EC7DD6
            EC7DD6EC7DD6EC7DD6EC7DEAF5BEFFFFFFFFFFFFFFFFFFF2F9D7E6F4B1E6F4B1
            E6F4B1E6F4B1E1EFA4C7E466C7E466C7E466C7E466C8E56CDEF09DE1F2A3E1F2
            A3E1F2A3E3F2A9E1F2A3E1F2A3E1F2A3E1F2A3E1F2A3E1F2A3E1F2A3E1F2A3EF
            F8CEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFCEFEAF5C1
            EAF5C1EAF5C1EAF5C1EAF5C1EAF5C1EAF5C1EAF5C1EAF5C1ECF5C8EAF5C1EAF5
            C1EAF5C1EAF5C1EAF5C1EAF5C1EAF5C1EAF5C1F4FAE0FFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFCEFEAF5C1EAF5C1EAF5C1EAF5C1EAF5C1
            EAF5C1EAF5C1EAF5C1EAF5C1ECF5C8EAF5C1EAF5C1EAF5C1EAF5C1EAF5C1EAF5
            C1EAF5C1EAF5C1F4FAE0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFAFCEFEAF5C1EAF5C1EAF5C1EAF5C1EAF5C1EAF5C1EAF5C1EAF5C1EAF5C1
            ECF5C8EAF5C1EAF5C1EAF5C1EAF5C1EAF5C1EAF5C1EAF5C1EAF5C1F4FAE0FFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFCEFEAF5C1EAF5C1EA
            F5C1EAF5C1EAF5C1EAF5C1EAF5C1EAF5C1EAF5C1ECF5C8EAF5C1EAF5C1EAF5C1
            EAF5C1EAF5C1EAF5C1EAF5C1EAF5C1F4FAE0FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFCFEF6E9F4C2EAF5C1EAF5C1EAF5C1EAF5C1EAF5C1EA
            F5C1EAF5C1EAF5C1ECF5C8EAF5C1EAF5C1EAF5C1EAF5C1EAF5C1EAF5C1EAF5C1
            EAF5C1F7FBE7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFCFDF6F9FCEEF9FCEEF9FCEEF9FCEEF9FCEEF9FCEEF9FCEEF9FCEEF9FDEEF9
            FCEEF9FCEEF9FCEEF9FCEEF9FCEEF9FCEEF9FCEEFAFDF2FFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
          ParentFont = False
          ExplicitTop = -8
        end
      end
      object pn_imprimirRel: TPanel
        Left = 239
        Top = 68
        Width = 100
        Height = 32
        Color = 8477896
        DoubleBuffered = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentBackground = False
        ParentDoubleBuffered = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = False
        TabOrder = 5
        Visible = False
        object btRel: TSpeedButton
          Left = 1
          Top = 1
          Width = 98
          Height = 30
          Align = alClient
          Caption = 'Relat'#243'rio'
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = []
          Glyph.Data = {
            16060000424D1606000000000000360400002800000012000000180000000100
            080000000000E0010000120B0000120B000000010000A3000000863AB2008D89
            DF007F70D500BC8FD3008359C6009571CE00A5A2E600C7C3C7008971D200B087
            D1008449BC00CBB7E6008161CC00CAC4EE00A495DF007D7EDE008C5AC400D5C2
            E900BBADE500B07BCB00ABA9E800BCA7E100837EDC00AAA3E5008550C0008168
            D0009568C9009382D9008A41B5009386DB00C1A3DD00AA8DD800B8B5EB009479
            D4009F61C100A070CA00D3CEF100BCB7EA008076D800CBB5E400A9B0ED00965D
            C100BC9FDD008567CD00BAAFE7008444B9008479D900938ADE00BB98D9007C83
            E200CBBDEA00815CC800A997DE007F6BD200834DBF008257C500D4C7EC009A99
            E400AC75C9008A68CC00D4C9EE00CCCCCC008187E300BCA2DF008B63C9009F6F
            C900D8D4F2007E74D8008352C200C0BEED00C9C3ED008A6CD000AB86D400B6BC
            EF00CECAF0008562CB00894BBC00887EDB00D0B9E6008875D500B5AFE900AA94
            DC00A89EE3009E9BE4009866C700925AC1008758C4008D57C100A67BCE009770
            CF00884FBE00C9C1EC00853FB6008946B900C8A4DC00BCAAE4008066CF007E79
            DB00966CCB009F66C4009763C500937DD6008580DD00865DC700D9C7EB009FA2
            E8008470D4008283DF00846BD100AA90DA00BAB2E800887AD800A89BE0008475
            D600AD8AD500CBBBE800DBD9F500806AD200A075CC00CBC1ED00854EC1009475
            D0008C5EC600D3CDF0008B4EBD008454C300825EC9008263CD008172D5009787
            DA00CDC9EF00C7C6C700BFA1DD00BCA5E000D0BCE700B07CCC00854BBD007F7A
            DB008748BB00D7C9ED00A373CB008753C100AB8AD600D5C3EB00AE87D300BBB7
            EA00BD91D400CABFEB00D4CBEF008540B6008544BB00D5C7ED00CBB9E7009768
            C900816DD300ADA9E900C3A3DD00CBB7E500B7BDF1008958C500D5C5EB00FFFF
            FF00000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000493E6B162E71
            6A6C2B4B67568D5A4C5D1C034A5628310F61430235600C333744360A2D5C0013
            4A5628310F61430235600C333744360A2D5C00134A5628310F012F1D1B652179
            05621A54555C00134A5628310F4542247B943C38388F11689C5C00134A562831
            0F664D6F4F08473B407A10577C5C00134A5628310F61430235600C333744360A
            2D5C00134A5628310F5317527034516D1F8E48908C9500134A5628310F204A0D
            5B933273980B274E305C00134A5628310F8926809A197F7E047D1888965C0013
            4A5628310F61430235600C333744360A2D5C00134A5628310F14256E2C125F15
            853F2A84095C00134A5628310F14916E2C125F15853F2A84095C00134A562831
            0F61430235600C333744360A2D5C00134A5628310F8926809A197F7E047D1888
            2D5C00134A5628310F2082465B933273989D861E4C5C00134A5628310F531752
            7034516D1F8E72588A5C00134A5628310F61430235600C333744360A2D5C0087
            4A5628310F664D6F4F08473B407A180A2D5C003A4A5628310F4542247B943C38
            8B8F1A0A296322924A5628310F012F1D1B65217905628D64500E765E4A562831
            0F61430235600C333744368C69751A074A5628310F61430235600C3337443623
            3981833D4A56493E6B162E716A6C2B4B6756364106743D3D4A56}
          ParentFont = False
          ExplicitTop = 9
        end
      end
    end
  end
  object dsConsulta: TDataSource
    Left = 379
    Top = 331
  end
  object FDConsulta: TFDQuery
    Left = 463
    Top = 319
  end
  object opdProduto: TOpenDialog
    Filter = '*.xls|*.xls|*.xlsx|*.xlsx'
    Left = 608
    Top = 336
  end
end
