object FrmVenda: TFrmVenda
  Left = 0
  Top = 0
  Caption = 'Venda'
  ClientHeight = 600
  ClientWidth = 826
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnDestroy = FormDestroy
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnTop: TPanel
    Left = 0
    Top = 0
    Width = 826
    Height = 41
    Align = alTop
    Alignment = taLeftJustify
    BevelOuter = bvNone
    Color = 11628805
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      AlignWithMargins = True
      Left = 93
      Top = 3
      Width = 282
      Height = 35
      Align = alLeft
      Caption = '[Duplo clique ou enter para lan'#231'ar o produto]'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Trebuchet MS'
      Font.Style = [fsBold]
      ParentFont = False
      Layout = tlBottom
      ExplicitHeight = 18
    end
    object Label8: TLabel
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 84
      Height = 35
      Align = alLeft
      Caption = 'Vendas'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -27
      Font.Name = 'Trebuchet MS'
      Font.Style = []
      ParentFont = False
      Layout = tlCenter
      ExplicitTop = 0
    end
  end
  object pnListaProdutos: TPanel
    Left = 0
    Top = 41
    Width = 826
    Height = 200
    Align = alTop
    BevelOuter = bvNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Trebuchet MS'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 0
      Top = 0
      Width = 826
      Height = 200
      Align = alClient
      BorderStyle = bsNone
      Color = clWhite
      DataSource = DataSource1
      DrawingStyle = gdsGradient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Trebuchet MS'
      Font.Style = [fsBold]
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      ParentFont = False
      ParentShowHint = False
      ShowHint = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clBlack
      TitleFont.Height = -13
      TitleFont.Name = 'Trebuchet MS'
      TitleFont.Style = [fsBold]
      OnDrawColumnCell = DBGrid1DrawColumnCell
      OnDblClick = DBGrid1DblClick
      OnKeyDown = DBGrid1KeyDown
      Columns = <
        item
          Expanded = False
          FieldName = 'Nome'
          Title.Caption = 'Produto'
          Title.Color = clBlack
          Width = 300
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Descricao'
          Width = 350
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Venda'
          Width = 80
          Visible = True
        end>
    end
  end
  object pnBottom: TPanel
    Left = 0
    Top = 531
    Width = 826
    Height = 69
    Align = alBottom
    BevelKind = bkFlat
    BevelOuter = bvNone
    TabOrder = 2
    object btSair: TSpeedButton
      Left = 0
      Top = 0
      Width = 80
      Height = 65
      Align = alLeft
      Caption = 'Sair'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Trebuchet MS'
      Font.Style = [fsBold]
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C0060000C30E0000C30E00000000000000000000FFFFFFFFFFFF
        FFFFFFDEDBD3C5BEB0C5BEB0C5BEB0C5BEB0C5BEB0C5BEB0C5BEB0C5BEB0C5BE
        B0C5BEB0C5BEB0C5BEB0C5BEB0C5BEB0C5BEB0C5BEB0C5BEB0C5BEB0C5BEB0DF
        DBD4FFFFFFFFFFFFFFFFFFC4BFB0D2CDC3E1DED7E2DED7E1DED7E1DED7E2DED7
        E1DED7E2DED7E1DED7E1DED7E1DED7E1DED7E1DDD8E0DDD8E0DDD9E0DDD9E1DD
        D8E1DED7D2CDC3C5BEB0FFFFFFFFFFFFFFFFFFC5BEB0E1DED7FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFE1DDD8C4BDAFFFFFFFFFFFFFFFFFFFC5BEB0E1DE
        D7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFCCCCF79A9AEF9A9AEF9A9AEF9A9AEFFFFFFFE0DCD9C5BEB0FFFFFFFFFFFF
        FFFFFFC5BDAFE4E1DDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFCCCCF69999EECCCCF7B2B2F29999EEFFFFFFDFDCDAC4
        BDAFFFFFFFFFFFFFFFFFFFE5E4EBFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCCCCF69999EEFFFFFFCCCCF69999
        EEFFFFFFDFDCDAC4BDAFFFFFFFFFFFFFFFFFFFF8F9FE9197F5404DF3414DF38C
        93F8F8F9FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCCCCF79A9AEF
        FFFFFFCCCCF79A9AEFFFFFFFDFDCDBC5BEB0FFFFFFFFFFFFF8F9FE7078F63844
        F38189F78189F73845F38C93F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFCCCCF69999EEFFFFFFCCCCF69999EEFFFFFFDFDCDAC4BDAFFFFFFFF8F9FE
        717AF63744F3AFB4FAFFFFFFFFFFFF8189F7414DF3FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFCCCCF69999EEFFFFFFCCCCF69999EEFFFFFFDFDCDAC4
        BDAFF7F8FE6F78F63744F3B0B5FAFFFFFFFFFFFFFFFFFF8189F73643F43542F3
        3542F33542F3424EF48C94F8F8F9FEFFFFFFCBCBF79A9AEFFFFFFFCCCCF79A9A
        EFFFFFFFDFDCDBC5BEB08B92F83844F3AFB4FAFFFFFFFFFFFFFFFFFFEFF0FE9D
        A3F99AA0F99AA0F99AA0F99AA0F98189F73844F38C94F8FFFFFFC9C9F79999EE
        FFFFFFCCCCF69999EEFFFFFFDFDCDAC4BDAF404DF38189F7FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8189F7414DF3FF
        FFFFC7C8F79A9AEFFFFFFFCCCCF79A9AEFFFFFFFDFDCDBC5BEB0404DF38189F7
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF8189F7414DF3FFFFFFC7C8F79999EEFFFFFFCCCCF69999EEFFFFFFDFDCDAC4
        BDAF8A92F83844F3B0B5FAFFFFFFFFFFFFFFFFFFEFF0FE9CA3F99AA0F99AA1F9
        9AA0F99AA0F98189F73844F38C93F8FFFFFFC9C9F79999EEFFFFFFCCCCF69999
        EEFFFFFFDFDCDAC4BDAFF7F8FE6F79F73744F3B2B7FAFFFFFFFFFFFFFFFFFF81
        89F83542F33643F43542F33643F4404DF38B92F8F8F9FEFFFFFFCBCBF69999EE
        FFFFFFCCCCF69999EEFFFFFFDFDCDAC4BDAFFFFFFFF8F9FE707AF73745F4B0B5
        FAFFFFFFFFFFFF8189F8424DF3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFCCCCF79A9AEFFFFFFFCCCCF79A9AEFFFFFFFDFDCDBC5BEB0FFFFFFFFFFFF
        F8F9FE6F79F73844F38189F78189F73844F38C93F8FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFCCCCF69999EEFFFFFFCCCCF69999EEFFFFFFDFDCDAC4
        BDAFFFFFFFFFFFFFFFFFFFF8F8FE8E95F6404DF3404DF38B92F8F7F8FEFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCCCCF69999EEFFFFFFCCCCF69999
        EEFFFFFFDFDCDAC4BDAFFFFFFFFFFFFFFFFFFFE2E2ECFEFEFEFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCCCCF79A9AEF
        FFFFFFCCCCF79A9AEFFFFFFFDFDCDBC5BEB0FFFFFFFFFFFFFFFFFFC4BEB0E2DF
        DDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFCCCCF69999EECCCCF7B2B2F29999EEFFFFFFDFDCDAC4BDAFFFFFFFFFFFFF
        FFFFFFC5BEB0E1DED7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFCCCCF69999EE9A9AEF9999EE9999EEFFFFFFDFDCDAC4
        BDAFFFFFFFFFFFFFFFFFFFC5BEB0E1DED7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFE0DDD8C5BEB0FFFFFFFFFFFFFFFFFFC5BEB0D2CDC3E1DED7E2DED7E1
        DED7E1DED7E2DED7E1DED7E2DED7E1DED7E1DED7E1DED7E1DED8E0DDD9DFDCDA
        DFDCDBDFDCDADFDCDAE0DDD8D2CDC3C5BEB0FFFFFFFFFFFFFFFFFFDFDBD3C5BE
        B0C4BDAFC5BEB0C4BDAFC4BDAFC5BEB0C4BDAFC5BEB0C4BDAFC4BDAFC4BDAFC5
        BEB0C4BDAFC4BDAFC5BEB0C4BDAFC4BDAFC5BEB0C5BEB0DEDBD2}
      Layout = blGlyphTop
      ParentFont = False
      OnClick = btSairClick
      ExplicitLeft = 1
      ExplicitTop = 1
      ExplicitHeight = 67
    end
    object pnTotais: TPanel
      Left = 80
      Top = 0
      Width = 742
      Height = 65
      Align = alClient
      TabOrder = 0
      object lbTotalPedido: TLabel
        AlignWithMargins = True
        Left = 597
        Top = 4
        Width = 8
        Height = 57
        Margins.Right = 30
        Align = alRight
        Alignment = taRightJustify
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -27
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
        Layout = tlCenter
        ExplicitHeight = 35
      end
      object lbTotalItens: TLabel
        AlignWithMargins = True
        Left = 4
        Top = 4
        Width = 8
        Height = 57
        Margins.Right = 30
        Align = alLeft
        Alignment = taRightJustify
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -27
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
        Layout = tlCenter
        ExplicitHeight = 35
      end
      object btnFinalizarVenda: TSpeedButton
        AlignWithMargins = True
        Left = 638
        Top = 4
        Width = 100
        Height = 57
        Align = alRight
        Caption = 'Finalizar venda'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        Glyph.Data = {
          F6060000424DF606000000000000360000002800000018000000180000000100
          180000000000C0060000C30E0000C30E00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDCDCDC8787874545451A1A1A0505050505
          051A1A1A454545878787DCDCDCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDEDEDE575757050505010101000000
          010101000000010101010101010101000000050505575757DEDEDEFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA3A3A30E0E0E00000001
          0101010101000000010101000000010101010101010101000000010101010101
          0F0F0FA4A4A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8989890202
          02000000000000000000000000000000000000000000FFFFFF80808000000000
          0000000000000000000000020202898989FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          A3A3A30202020101010101010000000101010404045050507E7E7E808080FFFF
          FFBDBDBD4F4F4F040404010101010101000000010101020202A4A4A4FFFFFFFF
          FFFFFFFFFFDDDDDD0E0E0E000000010101010101000000040404ADADADFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFADADAD0404040101010000000101010101
          010F0F0FDEDEDEFFFFFFFFFFFF56565600000000000000000000000000000050
          5050FFFFFF747474050505000000000000050505757575FFFFFF4F4F4F000000
          000000000000000000000000575757FFFFFFDCDCDC0505050101010000000101
          010101010000003E3E3E808080040404010101000000010101010101050505FF
          FFFF7E7E7E010101000000010101010101000000050505DCDCDC868686010101
          0101010000000101010101010000000101010101010000000101010000000101
          01010101010101FFFFFF80808001010100000001010101010100000001010187
          8787444444000000000000000000000000000000000000000000000000000000
          000000000000000000000000202020FFFFFF7070700000000000000000000000
          000000000000004545451A1A1A01010101010100000001010101010100000001
          01010404045050507E7E7E808080808080848484D8D8D8F2F2F2202020010101
          0000000101010101010000000101011A1A1A0404040000000000000000000000
          00000000000000040404ADADADFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDCFCFCF3F
          3F3F000000000000000000000000000000000000000000050505040404010101
          010101000000010101010101000000505050FFFFFF7474740505050000000101
          0101010101010100000001010101010100000001010101010100000001010105
          05051919190101010101010000000101010101010000007E7E7EFFFFFF040404
          0101010000000101010101010101010000000101010101010000000101010101
          010000000101011A1A1A44444401010101010100000001010101010100000080
          8080FFFFFF000000010101000000010101010101010101000000010101010101
          0000000101010101010000000101014545458686860000000000000000000000
          00000000000000717171FFFFFF202020000000000000000000000000202020FF
          FFFF707070000000000000000000000000000000000000878787DCDCDC050505
          010101000000010101010101000000212121F2F2F2D8D8D88484848080808080
          80848484D8D8D8F2F2F2202020010101000000010101010101000000050505DC
          DCDCFFFFFF5656560101010000000101010101010000000101013F3F3FD0D0D0
          FDFDFDFFFFFFFFFFFFFDFDFDCFCFCF3F3F3F0101010101010000000101010101
          01000000575757FFFFFFFFFFFFDDDDDD0E0E0E00000000000000000000000000
          0000000000000000000000000000FFFFFF808080000000000000000000000000
          0000000000000000000E0E0EDEDEDEFFFFFFFFFFFFFFFFFFA2A2A20202020101
          0101010100000001010101010100000001010101010180808040404001010100
          0000010101010101000000010101020202A3A3A3FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF8888880202020101010000000101010101010000000101010000000101
          01010101010101000000010101010101000000020202898989FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFA2A2A20E0E0E000000000000000000000000
          0000000000000000000000000000000000000000000000000E0E0EA3A3A3FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDDDDD56565605
          0505010101000000010101000000010101010101010101000000050505565656
          DDDDDDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFDCDCDC8686864444441A1A1A0404040505051A1A1A44444486
          8686DCDCDCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        Layout = blGlyphTop
        ParentFont = False
        OnClick = btnFinalizarVendaClick
        ExplicitLeft = 648
      end
    end
  end
  object pnLancados: TPanel
    Left = 298
    Top = 241
    Width = 528
    Height = 290
    Align = alClient
    TabOrder = 3
    object SpeedButton1: TSpeedButton
      Left = 72
      Top = 184
      Width = 23
      Height = 22
    end
    object DBCtrlGrid1: TDBCtrlGrid
      Left = 1
      Top = 21
      Width = 526
      Height = 268
      Align = alClient
      Color = 16708578
      DataSource = DataSource2
      PanelHeight = 53
      PanelWidth = 509
      ParentColor = False
      TabOrder = 0
      RowCount = 5
      SelectedColor = 16705989
      object DBText4: TDBText
        Left = 0
        Top = 23
        Width = 260
        Height = 30
        Align = alLeft
        DataField = 'Descricao'
        DataSource = DataSource2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = cl3DDkShadow
        Font.Height = -16
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitLeft = 5
        ExplicitTop = 29
        ExplicitHeight = 36
      end
      object Panel5: TPanel
        AlignWithMargins = True
        Left = 476
        Top = 28
        Width = 30
        Height = 20
        Margins.Top = 5
        Margins.Bottom = 5
        Align = alRight
        Caption = 'X'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -16
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 0
        OnClick = Panel5Click
      end
      object Panel6: TPanel
        Left = 0
        Top = 0
        Width = 509
        Height = 23
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
        object DBText1: TDBText
          Left = 0
          Top = 0
          Width = 224
          Height = 23
          Align = alClient
          DataField = 'Nome'
          DataSource = DataSource2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMenuHighlight
          Font.Height = -16
          Font.Name = 'Trebuchet MS'
          Font.Style = [fsBold]
          ParentFont = False
          ExplicitLeft = 1
          ExplicitTop = 1
          ExplicitWidth = 160
          ExplicitHeight = 21
        end
        object Label7: TLabel
          Left = 387
          Top = 0
          Width = 9
          Height = 23
          Align = alRight
          Caption = '='
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Trebuchet MS'
          Font.Style = [fsBold]
          ParentFont = False
          ExplicitHeight = 22
        end
        object DBText2: TDBText
          AlignWithMargins = True
          Left = 399
          Top = 0
          Width = 100
          Height = 23
          Margins.Top = 0
          Margins.Right = 10
          Margins.Bottom = 0
          Align = alRight
          Alignment = taRightJustify
          DataField = 'Total'
          DataSource = DataSource2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -16
          Font.Name = 'Trebuchet MS'
          Font.Style = [fsBold]
          ParentFont = False
          ExplicitLeft = 419
        end
        object DBText5: TDBText
          Left = 297
          Top = 0
          Width = 90
          Height = 23
          Align = alRight
          DataField = 'ValorUnitario'
          DataSource = DataSource2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Trebuchet MS'
          Font.Style = [fsBold]
          ParentFont = False
          ExplicitLeft = 307
        end
        object Label3: TLabel
          AlignWithMargins = True
          Left = 277
          Top = 0
          Width = 10
          Height = 23
          Margins.Top = 0
          Margins.Right = 10
          Margins.Bottom = 0
          Align = alRight
          Caption = 'X'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Trebuchet MS'
          Font.Style = [fsBold]
          ParentFont = False
          ExplicitHeight = 22
        end
        object DBText3: TDBText
          Left = 224
          Top = 0
          Width = 50
          Height = 23
          Align = alRight
          Alignment = taRightJustify
          DataField = 'Quantidade'
          DataSource = DataSource2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Trebuchet MS'
          Font.Style = [fsBold]
          ParentFont = False
          ExplicitLeft = 194
        end
      end
      object Panel7: TPanel
        AlignWithMargins = True
        Left = 416
        Top = 28
        Width = 54
        Height = 20
        Margins.Top = 5
        Margins.Bottom = 5
        Align = alRight
        Caption = 'Editar'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -16
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 2
        OnClick = Panel7Click
      end
    end
    object pnTitleLancados: TPanel
      Left = 1
      Top = 1
      Width = 526
      Height = 20
      Align = alTop
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Color = 11628805
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 1
      object Label2: TLabel
        AlignWithMargins = True
        Left = 3
        Top = 0
        Width = 106
        Height = 20
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 0
        Align = alLeft
        Caption = 'Itens lan'#231'ados'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
        Layout = tlCenter
        ExplicitHeight = 22
      end
    end
  end
  object pnBackGroundLancamento: TPanel
    Left = 0
    Top = 241
    Width = 298
    Height = 290
    Align = alLeft
    BevelOuter = bvLowered
    TabOrder = 4
    object pnLancamento: TPanel
      Left = 1
      Top = 1
      Width = 297
      Height = 288
      Align = alLeft
      TabOrder = 0
      Visible = False
      object edNomeProduto: TEdit
        AlignWithMargins = True
        Left = 4
        Top = 24
        Width = 289
        Height = 34
        Align = alTop
        BevelInner = bvNone
        BevelOuter = bvNone
        BorderStyle = bsNone
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Trebuchet MS'
        Font.Style = []
        MaxLength = 50
        ParentFont = False
        TabOrder = 0
      end
      object pnQtde: TPanel
        AlignWithMargins = True
        Left = 4
        Top = 64
        Width = 289
        Height = 100
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
        object pnBotoes: TPanel
          AlignWithMargins = True
          Left = 93
          Top = 20
          Width = 70
          Height = 73
          Margins.Left = 0
          Margins.Top = 20
          Margins.Right = 0
          Margins.Bottom = 7
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 0
          object btAdiciona: TSpeedButton
            AlignWithMargins = True
            Left = 10
            Top = 0
            Width = 50
            Height = 37
            Margins.Left = 10
            Margins.Top = 0
            Margins.Right = 10
            Margins.Bottom = 0
            Align = alTop
            Caption = '+'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGreen
            Font.Height = -33
            Font.Name = 'Trebuchet MS'
            Font.Style = []
            ParentFont = False
            OnClick = btAdicionaClick
            ExplicitWidth = 80
          end
          object btRemove: TSpeedButton
            AlignWithMargins = True
            Left = 10
            Top = 33
            Width = 50
            Height = 37
            Margins.Left = 10
            Margins.Top = 2
            Margins.Right = 10
            Align = alBottom
            Caption = '-'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -33
            Font.Name = 'Trebuchet MS'
            Font.Style = [fsBold]
            ParentFont = False
            OnClick = btRemoveClick
            ExplicitLeft = 20
          end
        end
        object Panel3: TPanel
          Left = 163
          Top = 0
          Width = 126
          Height = 100
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 1
          object lbValorUnitario: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 20
            Width = 123
            Height = 80
            Margins.Top = 0
            Margins.Right = 0
            Margins.Bottom = 0
            Align = alClient
            Alignment = taCenter
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -20
            Font.Name = 'Trebuchet MS'
            Font.Style = [fsBold]
            ParentFont = False
            Layout = tlCenter
            ExplicitWidth = 6
            ExplicitHeight = 26
          end
          object Label6: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 0
            Width = 123
            Height = 20
            Margins.Top = 0
            Margins.Right = 0
            Margins.Bottom = 0
            Align = alTop
            Caption = 'Valor unit'#225'rio'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Trebuchet MS'
            Font.Style = []
            ParentFont = False
            ExplicitWidth = 90
          end
        end
        object Panel4: TPanel
          Left = 0
          Top = 0
          Width = 93
          Height = 100
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 2
          object Label4: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 0
            Width = 90
            Height = 20
            Margins.Top = 0
            Margins.Right = 0
            Margins.Bottom = 0
            Align = alTop
            Caption = 'Quantidade'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Trebuchet MS'
            Font.Style = []
            ParentFont = False
            ExplicitWidth = 76
          end
          object edQtde: TEdit
            AlignWithMargins = True
            Left = 3
            Top = 23
            Width = 85
            Height = 67
            Margins.Right = 5
            Margins.Bottom = 10
            Align = alClient
            Alignment = taCenter
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -47
            Font.Name = 'Trebuchet MS'
            Font.Style = []
            MaxLength = 50
            NumbersOnly = True
            ParentFont = False
            TabOrder = 0
            OnChange = edQtdeChange
            OnExit = edQtdeExit
          end
        end
      end
      object pnTotalProduto: TPanel
        Left = 1
        Top = 226
        Width = 295
        Height = 61
        Align = alBottom
        TabOrder = 2
        object lbTotalProduto: TLabel
          AlignWithMargins = True
          Left = 4
          Top = 4
          Width = 260
          Height = 53
          Margins.Right = 30
          Align = alClient
          Alignment = taRightJustify
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -27
          Font.Name = 'Trebuchet MS'
          Font.Style = [fsBold]
          ParentFont = False
          Layout = tlCenter
          ExplicitLeft = 256
          ExplicitWidth = 8
          ExplicitHeight = 35
        end
      end
      object Panel2: TPanel
        Left = 1
        Top = 176
        Width = 295
        Height = 50
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 3
        object btnIncluir: TSpeedButton
          Left = 165
          Top = 0
          Width = 130
          Height = 50
          Align = alRight
          Caption = 'Incluir'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4210688
          Font.Height = -20
          Font.Name = 'Trebuchet MS'
          Font.Style = []
          Glyph.Data = {
            360C0000424D360C000000000000360000002800000020000000200000000100
            180000000000000C0000C30E0000C30E00000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8FAF3D8E2B6BCCD
            81A6BE5A98B44191AF3391AF3398B441A6BE5ABCCD81D8E2B6F8FAF3FFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEEF3E0BACD7F94B13891AF3191AF
            3191AF3191AF3191AF3191AF3191AF3191AF3191AF3191AF3194B238BACD7FEE
            F3E0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFBFCF7C2D28D92AF3491AF3191AF3191AF3191AF
            3191AF3191AF3191AF3191AF3191AF3191AF3191AF3191AF3191AF3191AF3193
            AF35C2D28DFBFCF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFEFF3E1A3BB5391AF3191AF3191AF3191AF3191AF3191AF
            3191AF3191AF3191AF3191AF3191AF3191AF3191AF3191AF3191AF3191AF3191
            AF3191AF31A3BB53EFF3E1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFE9EFD799B44191AF3191AF3191AF3191AF3191AF3191AF3191AF
            3191AF3191AF3191AF3191AF3191AF3191AF3191AF3191AF3191AF3191AF3191
            AF3191AF3191AF3199B441EAEFD8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFEFF3E199B44191AF3191AF3191AF3191AF3191AF3191AF3191AF3191AF
            3191AF3191AF3191AF3191AF3191AF3191AF3191AF3191AF3191AF3191AF3191
            AF3191AF3191AF3191AF3199B441EFF3E1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FBFCF7A3BB5391AF3191AF3191AF3191AF3191AF3191AF3191AF3191AF3191AF
            3191AF3191AF3191AF3191AF3191AF3191AF3191AF3191AF3191AF3191AF3191
            AF3191AF3191AF3191AF3191AF31A3BB53FBFCF7FFFFFFFFFFFFFFFFFFFFFFFF
            C2D28D91AF3191AF3191AF3191AF3191AF3191AF3191AF3191AF3191AF3191AF
            31A5BE5793B13691AF3191AF3191AF3191AF3191AF3191AF3191AF3191AF3191
            AF3191AF3191AF3191AF3191AF3191AF31C2D28DFFFFFFFFFFFFFFFFFFEEF3E0
            92AF3491AF3191AF3191AF3191AF3191AF3191AF3191AF3191AF3191AF31ADC4
            67FAFCF7DDE6C093B13691AF3191AF3191AF3191AF3191AF3191AF3191AF3191
            AF3191AF3191AF3191AF3191AF3191AF3193AF35EEF3E0FFFFFFFFFFFFBACD7F
            91AF3191AF3191AF3191AF3191AF3191AF3191AF3191AF3191AF31ADC467FAFC
            F7FFFFFFFFFFFFDDE6C093B13691AF3191AF3191AF3191AF3191AF3191AF3191
            AF3191AF3191AF3191AF3191AF3191AF3191AF31BACD7FFFFFFFF8FAF293B037
            91AF3191AF3191AF3191AF3191AF3191AF3191AF3191AF31ADC467FAFCF7FFFF
            FFFFFFFFFFFFFFFFFFFFDDE6C093B13691AF3191AF3191AF3191AF3191AF3191
            AF3191AF3191AF3191AF3191AF3191AF3191AF3194B238F8FAF3D7E2B591AF31
            91AF3191AF3191AF3191AF3191AF3191AF3191AF31ADC467FAFCF7FFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFDDE6C093B13691AF3191AF3191AF3191AF3191
            AF3191AF3191AF3191AF3191AF3191AF3191AF3191AF31D8E2B6BBCD8191AF31
            91AF3191AF3191AF3191AF3191AF3191AF31ADC467FAFCF7FFFFFFFFFFFFFFFF
            FFE5ECCEFAFCF7FFFFFFFFFFFFFFFFFFDDE6C093B13691AF3191AF3191AF3191
            AF3191AF3191AF3191AF3191AF3191AF3191AF3191AF31BCCD81A6BE5991AF31
            91AF3191AF3191AF3191AF3191AF31ADC467FAFCF7FFFFFFFFFFFFFFFFFFDEE7
            C193B136AEC467FAFCF7FFFFFFFFFFFFFFFFFFDDE6C093B13691AF3191AF3191
            AF3191AF3191AF3191AF3191AF3191AF3191AF3191AF31A6BE5A98B54091AF31
            91AF3191AF3191AF3191AF31ADC467FAFCF7FFFFFFFFFFFFFFFFFFDEE7C193B1
            3691AF3191AF31AEC467FAFCF7FFFFFFFFFFFFFFFFFFDDE6C093B13691AF3191
            AF3191AF3191AF3191AF3191AF3191AF3191AF3191AF3199B44191AF3391AF31
            91AF3191AF3191AF3191AF31D8E3B7FFFFFFFFFFFFFFFFFFDEE7C193B13691AF
            3191AF3191AF3191AF31AEC467FAFCF7FFFFFFFFFFFFFFFFFFDDE6C093B13691
            AF3191AF3191AF3191AF3191AF3191AF3191AF3191AF3191AF3391AF3391AF31
            91AF3191AF3191AF3191AF3193B136DEE7C1FFFFFFDDE7C193B13691AF3191AF
            3191AF3191AF3191AF3191AF31AEC467FAFCF7FFFFFFFFFFFFFFFFFFDDE6C093
            B13691AF3191AF3191AF3191AF3191AF3191AF3191AF3191AF3398B43F91AF31
            91AF3191AF3191AF3191AF3191AF3193B136C4D49093B13691AF3191AF3191AF
            3191AF3191AF3191AF3191AF3191AF31AEC467FAFCF7FFFFFFFFFFFFFFFFFFDD
            E6C093B13691AF3191AF3191AF3191AF3191AF3191AF3198B441A6BE5991AF31
            91AF3191AF3191AF3191AF3191AF3191AF3191AF3191AF3191AF3191AF3191AF
            3191AF3191AF3191AF3191AF3191AF3191AF31AEC467FAFCF7FFFFFFFFFFFFFF
            FFFFDDE6C093B13691AF3191AF3191AF3191AF3191AF31A6BE5ABCCD8191AF31
            91AF3191AF3191AF3191AF3191AF3191AF3191AF3191AF3191AF3191AF3191AF
            3191AF3191AF3191AF3191AF3191AF3191AF3191AF31AEC467FAFCF7FFFFFFFF
            FFFFFFFFFFD6E1B491AF3191AF3191AF3191AF3191AF31BCCD81D7E2B691AF31
            91AF3191AF3191AF3191AF3191AF3191AF3191AF3191AF3191AF3191AF3191AF
            3191AF3191AF3191AF3191AF3191AF3191AF3191AF3191AF31AEC467FAFCF7FF
            FFFFF9FAF4AAC15F91AF3191AF3191AF3191AF3191AF31D8E2B6F8FAF293B037
            91AF3191AF3191AF3191AF3191AF3191AF3191AF3191AF3191AF3191AF3191AF
            3191AF3191AF3191AF3191AF3191AF3191AF3191AF3191AF3191AF31AEC467F5
            F7ECAAC15F91AF3191AF3191AF3191AF3191AF3194B138F8FAF3FFFFFFBACC7E
            91AF3191AF3191AF3191AF3191AF3191AF3191AF3191AF3191AF3191AF3191AF
            3191AF3191AF3191AF3191AF3191AF3191AF3191AF3191AF3191AF3191AF3194
            B13691AF3191AF3191AF3191AF3191AF3191AF31BACD7FFFFFFFFFFFFFEEF2E0
            92AF3491AF3191AF3191AF3191AF3191AF3191AF3191AF3191AF3191AF3191AF
            3191AF3191AF3191AF3191AF3191AF3191AF3191AF3191AF3191AF3191AF3191
            AF3191AF3191AF3191AF3191AF3191AF3192AF34EEF3E0FFFFFFFFFFFFFFFFFF
            C1D28C91AF3191AF3191AF3191AF3191AF3191AF3191AF3191AF3191AF3191AF
            3191AF3191AF3191AF3191AF3191AF3191AF3191AF3191AF3191AF3191AF3191
            AF3191AF3191AF3191AF3191AF3191AF31C2D28DFFFFFFFFFFFFFFFFFFFFFFFF
            FBFCF7A2BB5291AF3191AF3191AF3191AF3191AF3191AF3191AF3191AF3191AF
            3191AF3191AF3191AF3191AF3191AF3191AF3191AF3191AF3191AF3191AF3191
            AF3191AF3191AF3191AF3191AF31A3BB53FBFCF7FFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFEFF3E198B44091AF3191AF3191AF3191AF3191AF3191AF3191AF3191AF
            3191AF3191AF3191AF3191AF3191AF3191AF3191AF3191AF3191AF3191AF3191
            AF3191AF3191AF3191AF3199B441EFF3E1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFE9EFD798B44091AF3191AF3191AF3191AF3191AF3191AF3191AF
            3191AF3191AF3191AF3191AF3191AF3191AF3191AF3191AF3191AF3191AF3191
            AF3191AF3191AF3199B441E9EFD7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFEFF3E1A2BB5291AF3191AF3191AF3191AF3191AF3191AF
            3191AF3191AF3191AF3191AF3191AF3191AF3191AF3191AF3191AF3191AF3191
            AF3191AF31A3BC53EFF3E1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFBFCF7C1D28C92AF3491AF3191AF3191AF3191AF
            3191AF3191AF3191AF3191AF3191AF3191AF3191AF3191AF3191AF3191AF3193
            AF34C2D28DFBFCF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEEF2E0BACC7E93B13791AF3191AF
            3191AF3191AF3191AF3191AF3191AF3191AF3191AF3191AF3193B037BACD7FEE
            F3E0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8FAF2D7E2B5BCCD
            81A6BE5998B43F91AF3391AF3398B540A6BE59BBCD81D7E2B5F8FAF3FFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
          ParentFont = False
          OnClick = btnIncluirClick
          ExplicitLeft = 161
          ExplicitTop = -2
        end
        object btnCancelar: TSpeedButton
          Left = 0
          Top = 0
          Width = 130
          Height = 50
          Align = alLeft
          Caption = 'Cancelar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4210688
          Font.Height = -20
          Font.Name = 'Trebuchet MS'
          Font.Style = []
          Glyph.Data = {
            F6060000424DF606000000000000360000002800000018000000180000000100
            180000000000C0060000C30E0000C30E00000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFD9D9F24D4BC3E6E5F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFE6E5F74E4CC3DADAF3FFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFD9D9F3332EC52720D03D39C5E5E4F7FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE5E4F63D39C52720D03430C4DADA
            F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDBDBF3322DC52720D22720D22720D23D
            38C7E6E5F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE6E5F73D38C72720D2
            2720D22720D2332EC6DCDCF4FFFFFFFFFFFFFFFFFFD9D9F3332EC72720D52720
            D52720D52720D52720D53B37C7E6E5F7FFFFFFFFFFFFFFFFFFFFFFFFE6E5F73B
            37C72720D52720D52720D52720D52720D5332EC7DADAF3FFFFFFD9D9F3342EC9
            261FD7271FD7261FD7261FD7271FD7261FD7261FD73D38CAE5E4F7FFFFFFFFFF
            FFE5E4F73D38CA271FD7261FD7261FD7271FD7261FD7261FD7261FD7332EC9DA
            DAF44C4AC7261EDA261EDA261FDA261EDA261EDA261FDA261EDA261EDA251EDA
            3C38CAE6E5F7E6E5F73C38CA251ED9261FDA261EDA261EDA261FDA261EDA261E
            DA261FDA261EDA4D4BC8E6E5F73B37CC251EDC261EDC261EDC261EDC261EDC26
            1EDC261EDC261EDC261EDC3A36CD3A36CD261EDC261EDC261EDC261EDC261EDC
            261EDC261EDC261EDC251EDC3C38CCE6E5F8FFFFFFE5E4F73B37CD251EDF251D
            DF251DDF251EDF251DDF251DDF251EDF251DDF251EDF251DDF251DDF251DDF25
            1EDF251DDF251DDF251EDF251DDF251DDF3C38CDE5E4F7FFFFFFFFFFFFFFFFFF
            E6E5F83935CE241DE1241DE1251DE1241DE1241DE1251DE1241DE1251DE1241D
            E1241DE1241DE1251DE1241DE1241DE1251DE1241DE13A36CEE6E5F8FFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFE6E5F83B37CF241CE4241DE4241DE4241DE4241DE4
            241DE4241DE4241DE4241DE4241DE4241DE4241DE4241DE4241CE43C38D0E6E5
            F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE5E4F83A36D1241CE623
            1CE6231CE6241CE6231CE6241CE6231CE6231CE6231CE6241CE6231CE6231CE6
            3B37D1E5E4F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFE6E5F83935D2241CE9241CE9241CE9241CE9241CE9241CE9241CE9241CE924
            1CE9241CE93935D2E6E5F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFE6E6F83D39D3261FEA261FEA261FEB261FEA261FEB261F
            EA261FEA261FEA261FEB261FEA3B37D3E6E6F8FFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFE6E6F84A48D53E3BED3532EC2C29EB2B28EB
            2A27EB2B28EB2A27EB2A27EB2A27EB2B28EB2A27EB2A27EB3F3DD4E5E5F8FFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7E8F84C4DD54344ED4344EE43
            44ED4243ED3B3CED3435EC2F30EC2F30EB2F30EB2F30EB2F30EC2F30EB2F30EB
            2F30EB4243D4E6E7F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE8E8F84D4FD5494C
            EE494CEE494CEE494CEE494CEE494CEE494CEE474AEE4144ED3C40ED373BEC35
            39EC3539EC3539EC3539EC3539EC4245D4E8E8F9FFFFFFFFFFFFFFFFFFE7E8F8
            5155D64C54EF4C54EF4C54EF4C54EF4C54EF4C54EF4C54EF4C54EF4C54EF4C54
            EF4C54EF4C54EF4B53EE4950EE474EEE464DEE454DEE464DEE4F53D5E8E9F9FF
            FFFFE8E9F85359D6515BEF515BF0515BEF515BEF515BF0515BEF515BEF515BF0
            515BEF5257D75156D7515BEF515BEF515BF0515BEF515BEF515BF0515BEF515B
            EF515BEF5359D6E9EAF95D61CE5663F05663F05663F05663F05663F05663F056
            63F05663F05663F0555CD6E8E9F9E8E9F9545BD65663F05663F05663F05663F0
            5663F05663F05663F05663F05663F05E61CFDDDEF5525BD85A6AF05A6AF15A6A
            F05A6AF05A6AF15A6AF05A6AF05760D7E8E9F9FFFFFFFFFFFFE8E9F9575FD75A
            6AF15A6AF05A6AF05A6AF15A6AF05A6AF05A6AF1525BD8DDDFF5FFFFFFDEDFF5
            535ED85F72F15F72F05F72F05F72F15F72F05863D7E9EAF9FFFFFFFFFFFFFFFF
            FFFFFFFFE9EAF95862D75F72F05F72F05F72F15F72F05F72F0545FD8DEDFF6FF
            FFFFFFFFFFFFFFFFE0E1F65664D8647AF1647AF1637AF05D68D7E9EAF9FFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9EAF95C68D7637AF0647AF1647AF15764
            D8E0E2F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFE0F55A69D96881F15F6CD8E9
            EAF9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9EAF95E6CD8
            6881F25A69D9DFE1F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFE1
            F5646DD0EAEBF9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFEAEBF9646CD0DFE1F6FFFFFFFFFFFFFFFFFFFFFFFF}
          ParentFont = False
          OnClick = btnCancelarClick
          ExplicitLeft = 1
          ExplicitTop = 1
          ExplicitHeight = 48
        end
      end
      object Panel1: TPanel
        Left = 1
        Top = 1
        Width = 295
        Height = 20
        Align = alTop
        Alignment = taLeftJustify
        BevelOuter = bvNone
        Color = 11628805
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        TabOrder = 4
        object Label5: TLabel
          AlignWithMargins = True
          Left = 3
          Top = 0
          Width = 93
          Height = 20
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 0
          Align = alLeft
          Caption = 'Lan'#231'amento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -16
          Font.Name = 'Trebuchet MS'
          Font.Style = [fsBold]
          ParentFont = False
          Layout = tlCenter
          ExplicitHeight = 22
        end
      end
    end
  end
  object cdsProdutos: TClientDataSet
    PersistDataPacket.Data = {
      A70000009619E0BD010000001800000005000000000003000000A70009496450
      726F6475746F0400010000000000044E6F6D6501004900000001000557494454
      480200020032000944657363726963616F010049000000010005574944544802
      000200C80005437573746F080004000000010007535542545950450200490006
      004D6F6E6579000556656E646108000400000001000753554254595045020049
      0006004D6F6E6579000000}
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'IdProduto'
        DataType = ftInteger
      end
      item
        Name = 'Nome'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'Descricao'
        DataType = ftString
        Size = 200
      end
      item
        Name = 'Custo'
        DataType = ftCurrency
      end
      item
        Name = 'Venda'
        DataType = ftCurrency
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 416
    Top = 153
    object cdsProdutosIdProduto: TIntegerField
      FieldName = 'IdProduto'
    end
    object cdsProdutosNome: TStringField
      FieldName = 'Nome'
      Size = 50
    end
    object cdsProdutosDescricao: TStringField
      FieldName = 'Descricao'
      Size = 200
    end
    object cdsProdutosCusto: TCurrencyField
      FieldName = 'Custo'
    end
    object cdsProdutosVenda: TCurrencyField
      FieldName = 'Venda'
    end
  end
  object DataSource1: TDataSource
    DataSet = cdsProdutos
    Left = 296
    Top = 169
  end
  object DataSource2: TDataSource
    DataSet = cdsLancados
    Left = 441
    Top = 365
  end
  object cdsLancados: TClientDataSet
    PersistDataPacket.Data = {
      D60000009619E0BD010000001800000007000000000003000000D60009496450
      726F6475746F0400010000000000044E6F6D6501004900000001000557494454
      480200020014000944657363726963616F010049000000010005574944544802
      00020014000A5175616E74696461646504000100000000000D56616C6F72556E
      69746172696F080004000000010007535542545950450200490006004D6F6E65
      790005546F74616C080004000000010007535542545950450200490006004D6F
      6E6579000B496453657175656E63696104000100000000000000}
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'IdProduto'
        DataType = ftInteger
      end
      item
        Name = 'Nome'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Descricao'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Quantidade'
        DataType = ftInteger
      end
      item
        Name = 'ValorUnitario'
        DataType = ftCurrency
      end
      item
        Name = 'Total'
        DataType = ftCurrency
      end
      item
        Name = 'IdSequencia'
        DataType = ftInteger
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 569
    Top = 389
    object cdsLancadosNome: TStringField
      FieldName = 'Nome'
    end
    object cdsLancadosDescricao: TStringField
      FieldName = 'Descricao'
    end
    object cdsLancadosQuantidade: TIntegerField
      FieldName = 'Quantidade'
    end
    object cdsLancadosValorUnitario: TCurrencyField
      FieldName = 'ValorUnitario'
    end
    object cdsLancadosTotal: TCurrencyField
      FieldName = 'Total'
    end
    object cdsLancadosIdProduto: TIntegerField
      FieldName = 'IdProduto'
    end
    object cdsLancadosIdSequencia: TIntegerField
      FieldName = 'IdSequencia'
    end
  end
end
