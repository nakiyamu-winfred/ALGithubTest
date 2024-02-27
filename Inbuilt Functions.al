page 50107 InbuiltFunctions
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Documents;
    //SourceTable = TableName;
    Caption ='Inbuilt Functions';
    
    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                /*field(Name; NameSource)
                {
                    ApplicationArea = All;
                    
                }*/
            }
        }
    }
    
    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;
                
                trigger OnAction()
                begin
                    ConfirmMethod();
                    ErrorMethod();
                    StringMethod()
                end;
            }
        }
    }
    procedure ConfirmMethod()
    
    begin
       if Confirm('Do you want to continue') then
       Message('Yes')
       else
        Error('no')
    end;
 procedure ErrorMethod()
    
    begin
      
       Error('Wrong Input')
      
    end;
    
procedure StringMethod()
    var
        Hobbies:Text[50];
        Selection: Integer;
    begin
     Hobbies:='Swimming,Reading,Traveling';
     Selection:= StrMenu(Hobbies,1,'Choose one Hobby?');
      Message('You selected %1',Selection);
      
    end;
    var
      
        Int: Integer;
}