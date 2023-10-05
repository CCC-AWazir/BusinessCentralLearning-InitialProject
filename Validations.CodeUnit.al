//This comment is only here to solve an issue
codeunit 50111 Validations
{
    trigger OnRun()
    begin

    end;

    local procedure CheckForPlusSign(TextToVerify: Text)
    begin
        if TextToVerify.Contains('+') then Message('It has a + sign');
    end;

    //[EventSubscriber(ObjectType::Table, Database::Customer, 'OnAfterValidateEvent', 'Address', false, false)]
    local procedure TableCustomerOnAfterValidateAdress(Rec: Record Customer)
    begin
        CheckForPlusSign(Rec.Address);
    end;
}