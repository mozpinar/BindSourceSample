unit uEntities;

interface

type
  TKisi = class
  private
    fIsim : string;
    fSoyisim : string;
    fYas : Integer;
  public
    property Isim: string read fIsim write fIsim;
    property Soyisim: string read fSoyisim write fSoyisim;
    property Yas: Integer read fYas write fYas;

    constructor Create(const aIsim, aSoyisim : String; aYas : Integer);
  end;
implementation

{ TKisi }

constructor TKisi.Create(const aIsim, aSoyisim: String; aYas: Integer);
begin
  Inherited Create;
  fIsim := aIsim;
  fSoyisim := aSoyisim;
  fYas := aYas;
end;

end.
