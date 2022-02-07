pageextension 50101 "KMC ResourceListExt" extends "Resource List"
{

    layout
    {
        modify(type)
        {
            Visible = ShowType;
        }
        addafter(Type)
        {
            field("KMC Resource Type"; rec."KMC Resource Type")
            {
                ApplicationArea = all;

            }

            field("KMC Maximum Participants"; rec."KMC Maximum Participants")
            {
                Visible = ShowMaxField;
                ApplicationArea = all;

            }
        }

    }

    trigger OnOpenPage()
    begin
        ShowType := (rec.GetFilter(type) = '');
        ShowMaxField := (rec.GetFilter(Type) = format(rec.Type::Machine))
    end;

    var
        [InDataSet]
        ShowType: Boolean;
        [InDataSet]
        ShowMaxField: Boolean;
}