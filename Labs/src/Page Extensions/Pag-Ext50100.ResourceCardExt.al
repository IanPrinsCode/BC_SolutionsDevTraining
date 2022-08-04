pageextension 50100 "ResourceCardExt" extends "Resource Card"
{
    layout
    {
        addlast(General)
        {
            field("Internal/External"; rec."Internal/External")
            {
                ApplicationArea = All;
                ToolTip = 'Internal or external resource';
            }
            field(QuantityPerDay; rec."Quantity Per Day")
            {
                ApplicationArea = All;
                ToolTip = 'Quantity allowed per day';
            }
        }
        addlast(content)
        {
            group(Room)
            {
                field("Maximum Participants"; rec."Maximum Participants")
                {
                    ApplicationArea = All;
                    ToolTip = 'Max Number of Participants in a room';
                }
            }
        }
    }
}
