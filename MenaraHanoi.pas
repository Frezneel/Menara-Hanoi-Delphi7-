unit MenaraHanoi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    ed_piringan: TEdit;
    ed_waktu: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    bt_solve: TButton;
    bt_clear: TButton;
    bt_exit: TButton;
    Panel1: TPanel;
    Label4: TLabel;
    Panel2: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Label8: TLabel;
    procedure bt_clearClick(Sender: TObject);
    procedure bt_exitClick(Sender: TObject);
    procedure bt_solveClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    T1,T2,T3:TStringlist; // Mendeklarsikan Tower/Menara      (1,1,1)
    Piringan:Array of Tshape; // Mendeklarasikan piringan
    procedure Hanoi(N:Integer;A,T,S:TStringList);
    procedure HanoiMove(A,T:TstringList);
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.bt_solveClick(Sender: TObject);
Var i:Integer;
begin
  T1.Clear;
  T2.Clear;
  T3.Clear;
  label8.Caption:='0';
  Panel4.Visible:=true;
  Panel5.Visible:=true;
  Panel6.Visible:=true;

    for i:= 0 to Length(Piringan)-1 do //membebaskan memory yang masih ada
    Piringan[i].Free;
    SetLength(Piringan,StrToInt(ed_piringan.Text));
      for i:=0 to Length(Piringan)-1 do begin // membuat piringan sejumlah n
      Piringan[i]:= TShape.Create(Self);
      Piringan[i].Shape:=StRoundRect;
      Piringan[i].Width:=20*(i+1);
      Piringan[i].Height:=20;
      Piringan[i].Left:=(Length(Piringan)*10-(i+1)*10);
      Piringan[i].Top:=Panel1.Height+(i-Length(Piringan))*20;
      Piringan[i].Parent:= Panel1;
      Piringan[i].Brush.Color:=RGB(Random(256),Random(256),Random(256));

      panel4.Width:= 20*(Length(piringan)+1);
      panel4.Left:= (Length(Piringan)*10-(Length(Piringan)+1)*10);
      panel5.Width:= 20*(Length(piringan)+1);
      panel5.Left:= Panel4.Width - 10;
      panel6.width:= 20*(Length(piringan)+1);
      panel6.Left:= (panel4.Width-10)+(panel5.Left+10)
      end;
    T1.Add('1');T2.Add('2');T3.Add('3');
      for i:=StrToInt(ed_piringan.Text) downto 1 do // nomor di tiang
      T1.Add(IntToStr(i));
      Hanoi(T1.Count-1,T1,T3,T2);

      end;

    procedure
    TForm1.HanoiMove(A,T:TStringList);
    var
    x1,y1,x2,y2,dx,tunda,maks:integer;
    Begin
      tunda:=StrToInt(ed_waktu.Text);
      maks:=StrToInt(ed_piringan.Text);
      T.Add(A[A.count-1]);
      A.Delete(A.Count-1);
      x1:= Piringan[StrToInt(T[T.count-1])-1].Left; //x asal
      y1:= Piringan[StrToInt(T[T.count-1])-1].Top; //y asal
      x2:= (StrToInt(T[0])-1)*(maks+1)*20+length(Piringan)*10-StrToInt(T[T.count-1])*10;
      //x tujuan
      y2:=Panel1.Height-(T.Count-1)*20; // y tujuan
      dx:= (x2-x1) div abs(x2-x1);
      dx:= 5*dx; //delta gerak mendatar
      while(y1>0) do begin //gerak naik
        dec(y1,5);
        Piringan[StrToInt(T[T.count-1])-1].Top:=y1;
        sleep(tunda);
        Application.ProcessMessages;
        end;
      while(x2*dx)>(x1*dx)do begin //gerak mendatar
        x1:=x1+dx;
        Piringan[StrToInt(T[T.count-1])-1].Left:=x1;
        Sleep(tunda);
        Application.ProcessMessages;
        end;
      while (y2>y1) do begin // gerak menurun
        inc(y1,5);
        Piringan[StrToInt(T[T.count-1])-1].Top:=y1;
        Sleep(tunda);
        Application.ProcessMessages;
        end;
    end;

    Procedure TForm1.Hanoi(N:Integer;A,T,S:TStringList); //inti Procedure Hanoi
    var c,c1:integer ;
    begin
      if N=1 then
      Begin
        HanoiMove(A,T);
        c := StrToInt(label8.caption) + 1;
        label8.Caption:= IntToStr(c);
        end
      else
      Begin
        Hanoi(N-1,A,S,T);
        HanoiMove(A,T);
        c := StrToInt(label8.caption) + 1;
        label8.Caption:= IntToStr(c);
        Hanoi(N-1,S,T,A);

    end;
end;


procedure TForm1.bt_clearClick(Sender: TObject);
begin
ed_piringan.Clear;
ed_waktu.Clear;
end;

procedure TForm1.bt_exitClick(Sender: TObject);
begin
close;
end;


procedure TForm1.FormCreate(Sender: TObject);
begin
 T1:= TStringList.Create;
 T2:= TStringList.Create;
 T3:= TStringList.Create;
 Panel1.Caption:=''; //kosongkan Panel
end;

end.

