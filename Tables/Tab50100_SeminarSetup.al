table 50100 "KMC Seminar Setup"
{
    DataClassification = AccountData;
    Caption = 'Seminar Setup';
    fields
    {
        field(10; "Primary Key"; Code[10])
        {
            DataClassification = AccountData;
            Caption = 'Primary Key';

        }
        field(20; "Seminar Nos."; code[20])
        {
            DataClassification = AccountData;
            Caption = 'Seminar Nos.';
            TableRelation = "No. Series";

        }
        field(30; "Seminar Registration Nos."; code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Seminar Registration Nos.';
            TableRelation = "No. Series";

        }
        field(40; "Posted Seminar Reg. Nos."; code[20])
        {
            DataClassification = AccountData;
            Caption = 'Posted Seminar Reg. Nos.';
            TableRelation = "No. Series";
        }
    }

    keys
    {
        key(PK; "Primary Key")
        {
            Clustered = true;
        }
    }

    var
        myInt: Integer;

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}