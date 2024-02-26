page 50106 MarksPage
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Documents;
   Caption = 'Marks Page ours';
    
    layout
    {
        area(Content)
        {
            group(Input)
            { Caption = 'Marks';
              field(Value; Value)
                {
                    ApplicationArea = All;
                    Caption = 'Enter Marks:';
                }
            }
            group(Output)
            {
                Caption = 'Output';
                field(Result; Result)
                {
                    ApplicationArea = All;
                    ToolTip = 'The result of the operation.';
                    Caption = 'Result';
                    Editable = false;
                }

            }
        }
    }
    
    actions
    {
        area(Processing)
        {
            action(MarksAction)
            {
                ApplicationArea = All;
                
                trigger OnAction()
                begin
                  
                    Marks();
                end;
            }
        }
    }

   procedure Marks()
    begin

        CASE Value OF
            90..100:
                Result := 'Excellent! .';
            80..89:
                Result := 'Good job! .';
            70..79:
                Result := 'Not bad. ';
            60..69:
                Result := 'You can do better. ';
            ELSE
                Result := 'Needs improvement. Your score is below 60.';
        END;
    end; 



    
    var
        Value: Integer;
        Result: Text[50];
}