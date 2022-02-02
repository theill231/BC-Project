/// <summary>
/// Page Test (ID 50100).
/// </summary>
page 50100 "Test"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Customer;
    Editable = false;



    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field("Customer No"; Rec."Bill-to Customer No.")
                {
                    ApplicationArea = All;

                }
                field("Customer Name"; Rec."Bill-to Customer No.")
                {
                    ApplicationArea = All;

                }
            }
        }
    }



    var
        myInt: Integer;
}