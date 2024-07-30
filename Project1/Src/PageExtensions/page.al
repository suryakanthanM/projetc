pageextension 50805 "Fixed Assets Pageext" extends "Fixed Asset Card"
{

    layout
    {
        addafter(General)
        {
            group("Asset Finance")
            {
                ShowCaption = false;

                part(Subpage; Subpage)
                {
                    Caption = 'Expenses Details';

                    SubPageLink = "Fixed Asset No." = field("No.");

                    ApplicationArea = All;
                    UpdatePropagation = Both;
                }
            }
        }
        addafter("FA Subclass Code")
        {
            field("Vehicle No."; Rec."Vehicle No.")
            {
                ApplicationArea = All;
                
            }
            field(Model; Rec.Model)
            {
                ApplicationArea = All;
            }
        }
        addafter("Last Date Modified")
        {
            field("Total cost"; Rec."Total Cost")
            {
                ApplicationArea = All;
            }
        }
    }

    actions
    {
        // Add changes to page actions here
    }

    var
        myInt: Integer;
}

// pageextension 50812 AssetSubpage extends "Fixed Asset Card"
// {
//     layout
//     {
//         addafter(Maintenance)
//         {
//             modify("FA Class Code"){
//                 Visible=fales
//             }
//             group(Assets)
//             {

//             }
//         }
//     }

//     actions
//     {
//         // Add changes to page actions here
//     }

//     var
//         myInt: Integer;
// }