namespace my.bookshop;

using my.bookshop.CatalogService.Books from './cat-service';

annotate Books with @(
	UI : {
		SelectionFields: [
			ID,
            title,
            author,
			stock,
		],

		LineItem: [
			{ $Type: 'UI.DataField', Value: ID },
            { $Type: 'UI.DataField', Value: title },
			{ $Type: 'UI.DataField', Value: author },
			{ $Type: 'UI.DataField', Value: stock }
		],
	},
	HeaderInfo: {
			TypeName: 'Book',
			TypeNamePlural: 'Books',
			Title: { Value: title },
			Description: { Value: ID }
		},

		Facets: [
			{ $Type: 'UI.ReferenceFacet', Label: 'Book Details', Target: '@UI.FieldGroup#BookDetails' }	
		],

		FieldGroup#BookDetails: {
			Data: [
				{ $Type: 'UI.DataField', Value: ID },
            	{ $Type: 'UI.DataField', Value: title },
				{ $Type: 'UI.DataField', Value: author },
				{ $Type: 'UI.DataField', Value: stock }
			]
		},
)
{
	ID
	@title: 'ID'
	@Core.Computed: true;
	title
	@title: 'Title';
	autor 
	@title: 'Author';
	stock
	@title: 'Stock'
	@Core.Computed: true;
}