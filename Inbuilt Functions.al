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
                    
                end;
            }
        }
    }
    
    var
        myInt: Integer;
}