pageextension 50101 "ResourceListExt" extends "Resource List"
{
    layout
    {
        addlast(Control1)
        {
            field(InternalExternal; rec."Internal/External")
            {
                ApplicationArea = All;
                ToolTip = 'Internal or external resource';
                Visible = ShowType;
            }
            field(MaxParticipants; Rec."Maximum Participants")
            {
                ApplicationArea = All;
                ToolTip = 'Max Number of Participants in a room';
                Visible = ShowMaxParticipants;
            }
        }
    }
    var
        [InDataSet]
        ShowType, ShowMaxParticipants : boolean;

    trigger OnOpenPage()
    begin
        Rec.FILTERGROUP(3);
        ShowType := Rec.GETFILTER(Type) = '';
        ShowMaxParticipants := Rec.GETFILTER(Type) = FORMAT(Rec.Type::Machine);
        Rec.FILTERGROUP(0);
    end;
}
