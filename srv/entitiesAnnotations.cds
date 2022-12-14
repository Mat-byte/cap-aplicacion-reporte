using {com.matbyte as srv} from './catalog-products';

annotate srv.Customer with @(UI : {
    Identification  : [{Value : name}],
    SelectionFields : [name],
    LineItem        : [
        {Value : name},
        {Value : lastname},
        {Value : phone},
        {Value : email}
    ],
    HeaderInfo      : {
        $Type          : 'UI.HeaderInfoType',
        TypeName       : '{i18n>Customer}',
        TypeNamePlural : '{i18n>Customers}',
    },
});

annotate srv.Payment with @(UI : {LineItem : [{
    Value : amountPaid,
    Label : '{i18n>Amount}'
}]});

annotate srv.Customer with {
    ID       @title : '{i18n>ID}'  @UI.HiddenFilter;
    name     @title : '{i18n>Name}';
    lastname @title : '{i18n>Lastname}';
    phone    @title : '{i18n>Phone}';
    email    @title : '{i18n>Email}';
    payment  @title : '{i18n>Payment}';    
};
