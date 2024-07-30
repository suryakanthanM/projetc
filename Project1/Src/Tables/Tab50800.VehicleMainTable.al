table 50800 "Vehicle Main Table"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Registration No."; Code[10])
        {
            DataClassification = ToBeClassified;

        }
        field(2; "Chasis No."; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(21; "Registration Name"; Text[100])
        {
            DataClassification = ToBeClassified;
        }
        field(22; "Registration Date"; Date)
        {
            DataClassification = ToBeClassified;
        }
        field(23; "Model"; Text[100])
        {
            DataClassification = ToBeClassified;
        }
        field(24; "FC- Expire Date"; Date)
        {
            DataClassification = ToBeClassified;
        }
        field(25; "Insurance Expire Date"; Date)
        {
            DataClassification = ToBeClassified;
        }
        field(26; "Pollution Expire Date"; Date)
        {
            DataClassification = ToBeClassified;
        }
        field(27; "Permit Expire Date"; Date)
        {
            DataClassification = ToBeClassified;
        }
        field(28; "EMI No."; Code[50])
        {
            DataClassification = ToBeClassified;
        }
        field(29; "EMI Discription"; Text[150])
        {
            DataClassification = ToBeClassified;
        }
        field(30; "EMI Start Date"; Date)
        {
            DataClassification = ToBeClassified;
        }
        field(31; "EMI Expire Date"; Date)
        {
            DataClassification = ToBeClassified;
        }
        field(32; "EMI Date"; Date)
        {
            DataClassification = ToBeClassified;
        }
        field(33; "EMI Amount"; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(34; "Bank Name"; Text[20])
        {
            DataClassification = ToBeClassified;
        }
        field(35; "Acc.No."; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(36; "IFSC Code"; Code[10])
        {
            DataClassification = ToBeClassified;
        }
        field(37; "No of EMI"; Integer)
        {
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(Key1; "Registration No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        // Add changes to field groups here
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