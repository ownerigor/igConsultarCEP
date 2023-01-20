object frmConsultarCEP: TfrmConsultarCEP
  Left = 0
  Top = 0
  ClientHeight = 405
  ClientWidth = 771
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object pnlPage: TPanel
    Left = 0
    Top = 0
    Width = 771
    Height = 405
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object pnlHeader: TPanel
      Left = 0
      Top = 0
      Width = 771
      Height = 41
      Align = alTop
      BevelOuter = bvNone
      Caption = 'Consultar CEP'
      Color = clHighlight
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -24
      Font.Name = 'Arial Narrow'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 0
    end
    object Panel2: TPanel
      Left = 0
      Top = 41
      Width = 771
      Height = 364
      Align = alClient
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 1
      object Label1: TLabel
        Left = 280
        Top = 40
        Width = 205
        Height = 22
        Caption = 'Digite o CEP desejado'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Image1: TImage
        Left = 331
        Top = 103
        Width = 104
        Height = 34
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000680000
          002208020000003CBD0BFC000000017352474200AECE1CE90000000467414D41
          0000B18F0BFC6105000000097048597300000EC300000EC301C76FA864000002
          324944415478DAED97BD4A034110C7275DC046D122360A9A4AB4B18976863429
          14921730E803888220F800424048F00194F80209A8904662A736368AD5A649A3
          85C16095D2DBBDDBCBDC5DEE928CE64BE75FB9EEC7EDFEF63FB393D0663105AC
          DE156270343138A2181C510C8E2806471483238AC111C5E0886270443138A2C6
          1B5C2276B13F5B2F960ECF07FEE95F00B7BB514C4FA276F3215FCEDE0E64F708
          5CFC38B9B7DE2C6DDD1506F2E59F82CBE452A92854F19D1B1C573ED2072F83D8
          FDB882535EAB0E25524C8D27B8B9A3CBD535783BDB7EAC040C9832FF46F12B71
          871FF2AF90B17A1BF74F3B2735739C3A7F58AFD09020ACF176F8AB65EB429A5A
          83BB89E0590042A4AF278C2E94411A9AA99EFE3C2333CC67C0FEFB056EF9F42A
          BA28844F54A2E381D39B564ED4285197A20636A34C2E19B92E67E73B836BE338
          A32B039716147CC7FA3A7D77DE6F706AD380CC82E50D1C990DA7D5D6DD0E9217
          30ADD69163C0739E2E1CD73954E522A07A9D373A6AE05A98BC28FD41A8A7A6E1
          3E3C1D1CCE15A03D3E7470C8295D83536118107AAECA46D8FFEC1D9CB9949DC2
          5A8B0C1F5CD0E340739CD98C276A158899A95DE63E2080F3D019257041E5482F
          39CEEF24DAD1EF0B7F0E5C5001FC15F8AAB605614C598282AB6A319A382738DF
          44FC93CB798B8E74E978C747039C0D05B59D15936F1DD7C641CE220E4D49C474
          51D6B40A408FE300D780425837677E5D9855DB2839EEFF8AC111C5E088627044
          3138A2181C510C8E2806471483238AC111F50D6811A137541BD7DA0000000049
          454E44AE426082}
        OnClick = Image1Click
      end
      object edtCEP: TEdit
        Left = 315
        Top = 68
        Width = 134
        Height = 29
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object mmoResult: TMemo
        Left = 144
        Top = 162
        Width = 497
        Height = 183
        TabOrder = 1
      end
      object Button1: TButton
        Left = 24
        Top = 24
        Width = 75
        Height = 25
        Caption = 'Op'#231#227'o 1'
        TabOrder = 2
        OnClick = Button1Click
      end
      object Button2: TButton
        Left = 24
        Top = 56
        Width = 75
        Height = 25
        Caption = 'Op'#231#227'o 2'
        TabOrder = 3
        OnClick = Button2Click
      end
      object Button3: TButton
        Left = 24
        Top = 88
        Width = 75
        Height = 25
        Caption = 'Op'#231#227'o 3'
        TabOrder = 4
        OnClick = Button3Click
      end
    end
  end
  object RESTClient1: TRESTClient
    Params = <>
    Left = 720
    Top = 49
  end
  object RESTRequest1: TRESTRequest
    Client = RESTClient1
    Params = <>
    Response = RESTResponse1
    SynchronizedEvents = False
    Left = 720
    Top = 97
  end
  object RESTResponse1: TRESTResponse
    Left = 720
    Top = 144
  end
  object qryEndereco: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 720
    Top = 192
    object qryEnderecorua: TStringField
      FieldName = 'rua'
      Size = 200
    end
    object qryEnderecobairro: TStringField
      FieldName = 'bairro'
      Size = 200
    end
    object qryEnderecocep: TStringField
      FieldName = 'cep'
      Size = 40
    end
    object qryEnderecocidade: TStringField
      FieldName = 'cidade'
      Size = 100
    end
    object qryEnderecoestado: TStringField
      FieldName = 'estado'
      Size = 100
    end
  end
end
