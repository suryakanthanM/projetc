page 50811 AssetList
{
    ApplicationArea = All;
    Caption = 'Vehicle Asset List';
    PageType = List;
    SourceTable = "Header Table";
    UsageCategory = Lists;
    CardPageId = "Main Card";
    Editable = false;

    layout
    {
        area(Content)
        {
            repeater(General)
            {

                field("Registration No."; Rec."Registration No.")
                {
                    ToolTip = 'Specifies the value of the Vehicle Registration No. field.', Comment = '%';
                    Caption = 'No.';
                }
                field(Model; Rec.Model)
                {
                    ToolTip = 'Specifies the value of the Vehicle Model field.', Comment = '%';
                }
                field(Period; Rec.Period)
                {
                    ToolTip = 'Specifies the value of the Period field.', Comment = '%';

                }
                field("Overall expenses"; Rec."Overall expenses")
                {
                    ToolTip = 'Specifies the value of the Overall expenses field.', Comment = '%';
                }

            }
        }
    }
//     trigger OnAfterGetRecord()
//     begin
//         Rec."Overall Expenses" := GetTotalCost(Rec."Registration No.");
//         Rec.Period := GetLastModifiedDate(Rec."Registration No.");
//     end;

//     local procedure GetTotalCost(RegistrationNo: Code[20]): Decimal
//     var
//         SubpageRec: Record FixedAssetSubTable;
//         TotalCost: Decimal;
//     begin
//         SubpageRec.SetFilter("Vehicle Number", RegistrationNo);
//         if SubpageRec.FindSet() then
//             repeat
//                 TotalCost += SubpageRec."Total Cost";
//             until SubpageRec.Next() = 0;
//         exit(TotalCost);
//     end;

//     local procedure GetLastModifiedDate(RegistrationNo: Code[20]): Date
//     var
//         SubpageRec: Record FixedAssetSubTable;
//         LastModifiedDate: Date;
//     begin
//         SubpageRec.SetFilter("Vehicle Number", RegistrationNo);
//         if SubpageRec.FindLast() then
//             LastModifiedDate := SubpageRec.Period;
//         exit(LastModifiedDate);
//     end;

}
