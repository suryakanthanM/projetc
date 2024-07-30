table 50806 FixedAssetSubTable
{
    DataClassification = ToBeClassified;
    Caption = 'Fixed Asset SubTable';

    fields
    {
        field(1; "Line No."; Integer)
        {
            DataClassification = ToBeClassified;
            //  AutoIncrement=true;
        }
        field(2; "Vehicle Number"; Code[10])
        {
            DataClassification = ToBeClassified;
        }
        field(3; "Fixed Asset No."; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(22; Period; Date)
        {
            DataClassification = ToBeClassified;
        }
        field(23; Model; Text[20])
        {
            DataClassification = ToBeClassified;
        }
        field(24; "Project Type"; Text[50])
        {
            DataClassification = ToBeClassified;
            TableRelation= Department;
        }
        field(25; "Client No."; Text[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = Customer;
            trigger OnValidate()
            var
                CustL: Record Customer;
            begin
                if CustL.Get("Client No.") then begin
                    Rec."Client Name" := CustL.Name;
                end;

            end;
        }
        field(35; "Client Name"; Text[50])
        {
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(26; Remarks; Text[20])
        {
            DataClassification = ToBeClassified;
        }
        field(27; Cost; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(28; "Total Cost"; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(29; "Payment Type"; option)
        {
            OptionMembers = " ","Cash","NEFT",UPI,RTGS;
        }
        field(30; "Account Holder Name"; Text[20])
        {
            DataClassification = ToBeClassified;
        }
        field(31; "Account No/Mobile No"; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(32; "IFSC Code"; Code[10])
        {
            DataClassification = ToBeClassified;
        }
        field(33; Category; option)
        {
            OptionMembers = " ",EMI,service,ROW,Renwel,"Local WorkShop",Diesel,Others;
        }
        field(34; Name; Text[20])
        {
            DataClassification = ToBeClassified;
        }



    }

    keys
    {
        key(Key1; "Line No.", "Vehicle Number", "Fixed Asset No.")
        {
            Clustered = true;
        }
    }

    trigger OnInsert()
    var
        s: Codeunit 20;
    begin
        if Rec."Line No." = 0 then
            Rec."Line No." := GetNextLineNo();
    end;

    local procedure GetNextLineNo(): Integer
    var
        PlanningLine: Record FixedAssetSubTable;
        LineNo: Integer;
    begin
        PlanningLine.SetRange("Vehicle Number", Rec."Vehicle Number");
        if PlanningLine.FindLast() then
            LineNo := PlanningLine."Line No." + 10000
        else
            LineNo := 10000;
        exit(LineNo);
    end;

}