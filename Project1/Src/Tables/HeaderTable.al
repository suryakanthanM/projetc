table 50807 "Header Table"
{
    DataClassification = ToBeClassified;
    Caption = 'Assets Details';

    fields
    {
        field(1; "Registration No."; Code[10])
        {
            DataClassification = ToBeClassified;
            TableRelation = "Vehicle Main Table";

        }
        field(2; "Chasis No."; Code[50])
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
        field(28; Period; Date)
        {
            DataClassification = ToBeClassified;
        }
        field(29; "Overall expenses"; Decimal)
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


}