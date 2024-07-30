page 50812 "Main Card"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "Header Table";




    layout
    {
        area(Content)
        {
            group(GroupName)
            {

                field("Registration No."; Rec."Registration No.")
                {
                    ToolTip = 'Specifies the value of the Vehicle Registration No. field.', Comment = '%';
                    trigger OnValidate()
                    var
                        VehicleMainTable: Record "Vehicle Main Table";

                    begin
                        if VehicleMainTable.Get(Rec."Registration No.") then begin
                            Rec."Chasis No." := VehicleMainTable."Chasis No.";
                            Rec."Registration Name" := VehicleMainTable."Registration Name";
                            Rec."Model" := VehicleMainTable.Model;
                            Rec."Registration Date" := VehicleMainTable."Registration Date";
                            Rec."FC- Expire Date" := VehicleMainTable."FC- Expire Date";
                            Rec."Insurance Expire Date" := VehicleMainTable."Insurance Expire Date";
                            Rec."Pollution Expire Date" := VehicleMainTable."Pollution Expire Date";
                            Rec."Permit Expire Date" := VehicleMainTable."Permit Expire Date";
                        end;
                    end;
                }
                field("Chasis No."; Rec."Chasis No.")
                {
                    ToolTip = 'Specifies the value of the Vin No. field.', Comment = '%';
                }
                field("Registration Name"; Rec."Registration Name")
                {
                    ToolTip = 'Specifies the value of the Vihicle Registration Name field.', Comment = '%';
                }
                field(Model; Rec.Model)
                {
                    ToolTip = 'Specifies the value of the Vehicle Model field.', Comment = '%';
                }
                field("Registration Date"; Rec."Registration Date")
                {
                    ToolTip = 'Specifies the value of the Vehicle Registration Date field.', Comment = '%';
                }
                field("FC- Expire Date"; Rec."FC- Expire Date")
                {
                    ToolTip = 'Specifies the value of the Vehicle FC- Expire Date field.', Comment = '%';
                }
                field("Insurance Expire Date"; Rec."Insurance Expire Date")
                {
                    ToolTip = 'Specifies the value of the Vehicle Insurance Expire Date field.', Comment = '%';
                }
                field("Pollution Expire Date"; Rec."Pollution Expire Date")
                {
                    ToolTip = 'Specifies the value of the Vehicle Pollution Expire Date field.', Comment = '%';
                }
                field("Permit Expire Date"; Rec."Permit Expire Date")
                {
                    ToolTip = 'Specifies the value of the Vehicle Permit Expire Date field.', Comment = '%';
                }
                // field(Period; Rec.Period)
                // {
                //     ToolTip = 'Specifies the value of the Period field.', Comment = '%';
                //     //visible = false;
                // }
                // field("Overall expenses"; Rec."Overall expenses")
                // {
                //     ToolTip = 'Specifies the value of the Overall expenses field.', Comment = '%';
                //     //visible = false;
                // }



            }
            Part(subpage; subpage)
            {
                SubPageLink = "Vehicle Number" = field("Registration No.");
                UpdatePropagation=both;
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        myInt: Integer;


}