tableextension 50101 "KMC ResourceExt" extends Resource
{


    fields
    {
        modify("Profit %")
        {
            trigger onaftervalidate()

            begin
                rec.TestField("Unit Cost");
            end;
        }
        field(50101; "KMC Resource Type"; Option)
        {
            Caption = 'Resource Type';
            OptionMembers = "Internal","External";
            OptionCaption = 'Internal,External';
        }
        field(50102; "KMC Maximum Participants"; Integer)
        {
            Caption = 'Max Participants';

        }
        field(50103; "KMC Quantity Per Day"; Decimal)
        {
            Caption = 'Quantity Per Day';

        }

    }

    var
        myInt: Integer;
}