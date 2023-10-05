page 50111 "Expressions Card"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Documents;
    Caption = 'Expressions Card';


    layout
    {
        area(Content)
        {
            group(Input)
            {
                Caption = 'Input';
                field(Value1; Value1)
                {
                    ApplicationArea = All;
                    Caption = 'Value1';
                    ToolTip = 'Insert Value 1:';
                }
                field(Value2; Value2)
                {
                    ApplicationArea = All;
                    Caption = 'Value2';
                    ToolTip = 'Insert Value 2:';
                }
            }
            group(Output)
            {
                Caption = 'Output';
                field(Result; Result)
                {
                    ApplicationArea = All;
                    Caption = 'Result';
                    ToolTip = 'Result';
                    Editable = false;
                }
            }

        }
    }

    actions
    {
        area(Processing)
        {
            action(Execute)
            {
                ApplicationArea = All;
                Caption = 'Execute';
                ToolTip = 'Calculate Result';
                Image = ExecuteBatch;

                trigger OnAction()
                begin
                    Result := Value1 > Value2
                end;
            }
        }
    }


    var
        Value1: Integer;
        Value2: Integer;
        Result: Boolean;
}