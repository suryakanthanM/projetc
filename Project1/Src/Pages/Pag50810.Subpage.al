page 50810 Subpage
{
    ApplicationArea = All;
    Caption = 'Finance Details';
    PageType = ListPart;
    SourceTable = FixedAssetSubTable;
    //AutoSplitKey = true;
    //MultipleNewLines = true;
    DeleteAllowed = true;
    // DelayedInsert = true;
    InsertAllowed = true;
    LinksAllowed = true;


    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("Line No."; Rec."Line No.")
                {
                    ToolTip = 'Specifies the value of the Line No. field.', Comment = '%';
                    Visible = false;

                }
                // field("Vehicle Number"; Rec."Vehicle Number")
                // {
                //     ToolTip = 'Specifies the value of the Vehicle Number field.', Comment = '%';
                //     visible = false;
                // }
                field(Period; Rec.Period)
                {
                    ToolTip = 'Specifies the value of the Period field.', Comment = '%';
                }
                field(Model; Rec.Model)
                {
                    ToolTip = 'Specifies the value of the Model field.', Comment = '%';
                }
                field("Project Type"; Rec."Project Type")
                {
                    ToolTip = 'Specifies the value of the Project Type field.', Comment = '%';
                }
                field("Client No."; Rec."Client No.")
                {
                    ToolTip = 'Specifies the value of the Client field.', Comment = '%';
                }
                field("Client Name"; Rec."Client Name")
                {
                    ApplicationArea = All;
                }
                field(Category; Rec.Category)
                {
                    ToolTip = 'Specifies the value of the Category field.', Comment = '%';
                }
                field(Remarks; Rec.Remarks)
                {
                    ToolTip = 'Specifies the value of the Remarks field.', Comment = '%';
                }
                field(Cost; Rec.Cost)
                {
                    ToolTip = 'Specifies the value of the Cost field.', Comment = '%';
                }
                field("Total Cost"; Rec."Total Cost")
                {
                    ToolTip = 'Specifies the value of the Total Cost field.', Comment = '%';
                }
                field(Name; Rec.Name)
                {
                    ToolTip = 'Specifies the value of the Name field.', Comment = '%';
                }
                field("Payment Type"; Rec."Payment Type")
                {
                    ToolTip = 'Specifies the value of the Payment Type field.', Comment = '%';
                }
                field("Account Holder Name"; Rec."Account Holder Name")
                {
                    ToolTip = 'Specifies the value of the Account Holder Name field.', Comment = '%';
                }
                field("Acc.No/Mob.No"; Rec."Account No/Mobile No")
                {
                    ToolTip = 'Specifies the value of the Account No/Mobile No field.', Comment = '%';
                }
                field("IFSC Code"; Rec."IFSC Code")
                {
                    ToolTip = 'Specifies the value of the IFSC Code field.', Comment = '%';
                }
            }
        }
    }
}
