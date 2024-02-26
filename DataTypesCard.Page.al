page 50110 DataTypePage
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Documents;
    //SourceTable = TableName;
    Caption = 'Data Type Page';
    
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
                    
                expressions();
                    
                end;
            }
        }
    }
    
    var
        Name: Text;
        Age:Integer; 
        ///<summary>These are our comments</summary>
        //This is a comment
    /* This is a commentThis is a commentThis is a commentThis is a commentThis is a commentThis is a commentThis is a commentThis is a comment
        This is a comment
 */

    procedure expressions()

    var 
    a: Integer;
    b: Integer;
    c: Integer;
begin
    a := 10;
    b := 5;

    if a > b then
        c := a / b;
        Message('%1',c);
end;

}