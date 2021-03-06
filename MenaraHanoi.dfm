object Form1: TForm1
  Left = 416
  Top = 423
  Width = 801
  Height = 608
  Caption = 'Form1'
  Color = clActiveCaption
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = -8
    Top = 0
    Width = 793
    Height = 569
    Caption = 'Panel2'
    Color = clOlive
    TabOrder = 0
    object Label4: TLabel
      Left = 274
      Top = 41
      Width = 170
      Height = 28
      Caption = '"Tower of Hanoi"'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Cambria'
      Font.Style = [fsItalic]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 258
      Top = 457
      Width = 159
      Height = 22
      Caption = 'Waktu Pemindahan'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Cambria'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 106
      Top = 457
      Width = 130
      Height = 22
      Caption = 'Jumlah Piringan'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Cambria'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 250
      Top = 1
      Width = 214
      Height = 34
      Caption = 'MENARA HANOI'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -29
      Font.Name = 'Cambria'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 572
      Top = 313
      Width = 187
      Height = 19
      Caption = 'Galih Muhammad Ichsan'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Cambria'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 634
      Top = 337
      Width = 75
      Height = 19
      Caption = 'JTD 4B / 09'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 584
      Top = 384
      Width = 109
      Height = 33
      Caption = 'COUNTER'
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -27
      Font.Name = 'Calibri'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 704
      Top = 376
      Width = 33
      Height = 45
      Alignment = taCenter
      Caption = '0'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -37
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object bt_clear: TButton
      Left = 586
      Top = 161
      Width = 161
      Height = 57
      Caption = 'Clear'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Cambria'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = bt_clearClick
    end
    object Panel1: TPanel
      Left = 32
      Top = 89
      Width = 529
      Height = 320
      Color = clBtnHighlight
      TabOrder = 1
    end
    object ed_waktu: TEdit
      Left = 258
      Top = 489
      Width = 161
      Height = 22
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object ed_piringan: TEdit
      Left = 90
      Top = 489
      Width = 153
      Height = 22
      Cursor = crIBeam
      BevelInner = bvSpace
      BiDiMode = bdLeftToRight
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 3
    end
    object bt_solve: TButton
      Left = 586
      Top = 89
      Width = 161
      Height = 57
      Caption = 'Solve'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Cambria'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = bt_solveClick
    end
    object bt_exit: TButton
      Left = 586
      Top = 233
      Width = 161
      Height = 57
      Caption = 'Exit'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Cambria'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnClick = bt_exitClick
    end
    object Panel7: TPanel
      Left = 32
      Top = 407
      Width = 529
      Height = 33
      TabOrder = 6
      object Panel4: TPanel
        Left = 0
        Top = 8
        Width = 89
        Height = 25
        Caption = 'A'
        Color = 8421631
        TabOrder = 0
        Visible = False
      end
      object Panel6: TPanel
        Left = 176
        Top = 8
        Width = 89
        Height = 25
        Caption = 'C'
        Color = 16777088
        TabOrder = 1
        Visible = False
      end
      object Panel5: TPanel
        Left = 88
        Top = 8
        Width = 89
        Height = 25
        Caption = 'B'
        Color = 8454016
        TabOrder = 2
        Visible = False
      end
    end
  end
end
