RecordPointerUsage

This sample program shows how to use BindSourceAdapter in LiveBindings and StringGrid.

Step-1 : Create an empty VCL project and save all to disk.

Step-2 : Drop a StringGrid on the form from component palette.

Step-3 : Drop TEdit 3 times. Drop TLabel 3 times and fill their captions. Change their names. 

Step-4 : Drop 2 TButton on the form and give names them as btnOk and btnCancel.

Step-5 : Drop 3 TSpeedButton under the StringGrid1 like following picture. And give name them btnAdd, btnEdit, btnDelete.

Step-6 : Place all components as following picture.

![Screen view](https://raw.githubusercontent.com/mozpinar/BindSourceSample/master/MainFormPic.png "Screen view")

Step-7 : Drop a TProtoTypeBindSource on the form. ♪◙

Step-8 : Press right click on PrototypeBindSource1 and select Fields Editor. Add appropriate fields with your data structure.
Step-9 : Our data structure is ;
  
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
  
Step-10 : Field names that added to PrototypeBindSource1 must be identical with this data structure.  
  

