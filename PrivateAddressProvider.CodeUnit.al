codeunit 50113 PrivateAddressProvider implements IAddressProvider
{
    procedure GetAddress(): Text
    begin
        exit('My Home Address \ Denmark 2800');
    end;
}