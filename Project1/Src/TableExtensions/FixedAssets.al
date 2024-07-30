tableextension 50804 "Modify Fixed Assets" extends "Fixed Asset"
{
    fields
    {
        field(50; "Vehicle No."; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = "Vehicle Main Table";
            trigger OnValidate()
            var
                VehicleMain: Record "Vehicle Main Table";
            begin
                if VehicleMain.Get("Vehicle No.") then begin
                    Rec.Model := VehicleMain.Model;
                end;
            end;
        }
        field(51; Model; Text[50])
        {
            DataClassification = ToBeClassified;
        }
        field(52; "Total Cost"; Decimal)
        {
            //DataClassification = ToBeClassified;
            FieldClass=FlowField;
            // CalcFormula=sum()
        }
    }



}