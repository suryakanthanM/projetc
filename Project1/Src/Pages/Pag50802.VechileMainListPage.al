page 50802 "Vechile Main ListPage"
{
    ApplicationArea = All;
    Caption = 'Vechile Lists';
    PageType = List;
    SourceTable = "Vehicle Main Table";
    UsageCategory = Lists;
    CardPageId = "Vechile Main CardPage";
    // DeleteAllowed = false;
    Editable = false;

    layout
    {
        area(Content)
        {
            repeater(VehicleList)
            {
                field("Registration No."; Rec."Registration No.")
                {
                    ToolTip = 'Specifies the value of the Vehicle Registration No. field.', Comment = '%';
                }
                field("Vin No."; Rec."Chasis No.")
                {
                    ToolTip = 'Specifies the value of the Vin No. field.', Comment = '%';
                }
                field("Model"; Rec."Model")
                {
                    ToolTip = 'Specifies the value of the Vehicle Model field.', Comment = '%';
                }
                field("Insurance Expire Date"; Rec."Insurance Expire Date")
                {
                    ToolTip = 'Specifies the value of the Vehicle Insurance Expire Date field.', Comment = '%';
                }
            }
        }
    }
}
