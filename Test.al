page 50105 MyPage
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    //SourceTable = TableName;

    layout
    {
        area(Content)
        {

        }
    }

    actions
    {
        area(Processing)
        {

        }
    }

    trigger OnOpenPage()
    begin
        //ForStatement();
        //ForStatement2();
        //ForEachStatement();
        //ForEachStatement2();
        WhileStatement();
        //pat();
        //pat1();

    end;

    procedure pat()
    begin
        a := 410;
        b := 121;

        if a > b then begin
            c := a - b;
            Message('%1', c);
        end
        else
            Message('b is greater than a');
    end;

    procedure pat1()
    begin
        a := 3;
        b := 7;
        c := 10;

        if a > b then
            Message('%1 is greater than %2', a, b)
        else 
         begin
            if a = b then 
              Message('Yes')
            else 
                Message('No');
         end;
    end;


    procedure ForStatement()
            var 
                MyNo:Integer;
            begin
                for MyNo:=1 to 5 do
                Message('My Numbers are'+System.Format(MyNo));
            end;
    
    procedure ForStatement2()
            var 
                MyNo:Integer;
            begin
                for MyNo:=5 downto 1 do
                Message('My Numbers are'+System.Format(MyNo));
            end;

 procedure ForEachStatement()
            var 
                Names:List of[Text[20]];
                OurNames: Text[20];

            begin
                Names.Add('Triza');
                Names.Add('Simeon');
                 Names.Add('Winy');
                foreach  OurNames in Names do 
                //Message('Our Names are:'+ OurNames);
                Message('Our Names are: %1',OurNames);
            end;

 procedure ForEachStatement2()
            var 
                Names:List of[Text[20]];
                OurNames: Text[20];

            begin
                Names.AddRange('Triza,Simeon,Winy');
                foreach  OurNames in Names do 
                //Message('Our Names are:'+ OurNames);
                Message('Our Names are: %1',OurNames);
            end;

procedure WhileStatement()
            var 
                X:Integer;

            begin
               X:=1;
               while X<=8 do 
                Message('My Numbers are'+System.Format(X));
            end;
   
   
   
   
   var
        a: Integer;
        b: Integer;
        c: Integer;
        
}