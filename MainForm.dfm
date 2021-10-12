object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'v'
  ClientHeight = 557
  ClientWidth = 928
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object btnAdd: TSpeedButton
    Left = 499
    Top = 503
    Width = 23
    Height = 22
    Glyph.Data = {
      F6000000424DF600000000000000760000002800000010000000100000000100
      0400000000008000000000000000000000001000000000000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00444444444444
      488844BBFBFBFBFBF4884B4FBFBFBFBFBF484FB4444BFBFBFBF44BFFBFB44444
      44484FBBFBFBFBF488884BFFBFBF000008884FBBFBFB0AEA08884BFFBFBF0EAE
      08884FBB40000AEA0000844480AEAEAEAEA0888880AEAEAEAEA0888880000AEA
      0000888888880EAE0888888888880AEA08888888888800000888}
    OnClick = btnAddClick
  end
  object btnEdit: TSpeedButton
    Left = 528
    Top = 503
    Width = 23
    Height = 22
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000000
      000033333377777777773333330FFFFFFFF03FF3FF7FF33F3FF700300000FF0F
      00F077F777773F737737E00BFBFB0FFFFFF07773333F7F3333F7E0BFBF000FFF
      F0F077F3337773F3F737E0FBFBFBF0F00FF077F3333FF7F77F37E0BFBF00000B
      0FF077F3337777737337E0FBFBFBFBF0FFF077F33FFFFFF73337E0BF0000000F
      FFF077FF777777733FF7000BFB00B0FF00F07773FF77373377373330000B0FFF
      FFF03337777373333FF7333330B0FFFF00003333373733FF777733330B0FF00F
      0FF03333737F37737F373330B00FFFFF0F033337F77F33337F733309030FFFFF
      00333377737FFFFF773333303300000003333337337777777333}
    NumGlyphs = 2
    OnClick = btnEditClick
  end
  object btnDelete: TSpeedButton
    Left = 557
    Top = 503
    Width = 23
    Height = 22
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000130B0000130B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      333333333333333333FF33333333333330003333333333333777333333333333
      300033FFFFFF3333377739999993333333333777777F3333333F399999933333
      3300377777733333337733333333333333003333333333333377333333333333
      3333333333333333333F333333333333330033333F33333333773333C3333333
      330033337F3333333377333CC3333333333333F77FFFFFFF3FF33CCCCCCCCCC3
      993337777777777F77F33CCCCCCCCCC399333777777777737733333CC3333333
      333333377F33333333FF3333C333333330003333733333333777333333333333
      3000333333333333377733333333333333333333333333333333}
    NumGlyphs = 2
    OnClick = btnDeleteClick
  end
  object StringGrid1: TStringGrid
    Tag = 3
    Left = 488
    Top = 64
    Width = 388
    Height = 433
    ColCount = 3
    FixedCols = 0
    RowCount = 201
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing, goEditing, goRowSelect, goFixedRowDefAlign]
    TabOrder = 0
    ColWidths = (
      64
      64
      64)
    ColAligments = (
      0
      0
      1)
  end
  object Panel1: TPanel
    Left = 32
    Top = 56
    Width = 361
    Height = 217
    BevelInner = bvLowered
    TabOrder = 1
    object lblFirstName: TLabel
      Left = 72
      Top = 24
      Width = 15
      Height = 13
      Caption = 'Ad'#305
    end
    object lblLastName: TLabel
      Left = 72
      Top = 56
      Width = 32
      Height = 13
      Caption = 'Soyad'#305
    end
    object lblAge: TLabel
      Left = 72
      Top = 88
      Width = 19
      Height = 13
      Caption = 'Ya'#351#305
    end
    object edFirstName: TEdit
      Left = 120
      Top = 21
      Width = 121
      Height = 21
      TabOrder = 0
      Text = 'Mark Anderson'
    end
    object edLastName: TEdit
      Left = 120
      Top = 53
      Width = 121
      Height = 21
      TabOrder = 1
      Text = 'Mark Anderson'
    end
    object edAge: TEdit
      Left = 120
      Top = 85
      Width = 121
      Height = 21
      TabOrder = 2
      Text = '67'
    end
    object btnOk: TButton
      Left = 80
      Top = 128
      Width = 75
      Height = 25
      Caption = 'btnOk'
      TabOrder = 3
      OnClick = btnOkClick
    end
    object btnCancel: TButton
      Left = 190
      Top = 128
      Width = 75
      Height = 25
      Caption = 'btnCancel'
      TabOrder = 4
      OnClick = btnCancelClick
    end
  end
  object cbxDBActive: TCheckBox
    Left = 72
    Top = 16
    Width = 97
    Height = 17
    Caption = 'Active'
    TabOrder = 2
  end
  object PrototypeBindSource1: TPrototypeBindSource
    AutoActivate = True
    AutoPost = False
    FieldDefs = <
      item
        Name = 'Isim'
        Generator = 'ContactNames'
        ReadOnly = False
      end
      item
        Name = 'Soyisim'
        Generator = 'ContactNames'
        ReadOnly = False
      end
      item
        Name = 'Yas'
        FieldType = ftInteger
        Generator = 'UIntegers'
        ReadOnly = False
      end>
    ScopeMappings = <>
    OnCreateAdapter = PrototypeBindSource1CreateAdapter
    Left = 624
    Top = 32
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 20
    Top = 5
    object LinkGridToDataSourcePrototypeBindSource1: TLinkGridToDataSource
      Category = 'Quick Bindings'
      DataSource = PrototypeBindSource1
      GridControl = StringGrid1
      Columns = <>
    end
    object LinkControlToField1: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = PrototypeBindSource1
      FieldName = 'Soyisim'
      Control = edLastName
      Track = True
    end
    object LinkControlToField2: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = PrototypeBindSource1
      FieldName = 'Isim'
      Control = edFirstName
      Track = True
    end
    object LinkControlToField3: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = PrototypeBindSource1
      FieldName = 'Yas'
      Control = edAge
      Track = True
    end
  end
end
