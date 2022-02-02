pageextension 50100 "KMC ResourceCardExt" extends "Resource Card"
{

    layout
    {
        addlast(General)
        {
            field("KMC Resource Type"; rec."KMC Resource Type")
            {
                ApplicationArea = all;
            }
            field("KMC Quantity Per Day"; rec."KMC Quantity Per Day")
            {
                ApplicationArea = all;
            }

        }
        addafter("Personal Data")
        {
            group("KMC Room")

            {
                Caption = 'Room';
                Visible = ShowMaxField;


                field("KMC Maximum Participants"; rec."KMC Maximum Participants")
                {
                    ApplicationArea = all;
                    Visible = true;

                }



            }

        }


    }

    trigger OnAfterGetRecord()
    begin
        ShowMaxField := (rec.Type = rec.Type::Machine);
        CurrPage.Update(false);

    end;

    var
        [InDataSet]
        ShowMaxField: Boolean;

}