# Data Dictionary — WSDA Music

## Employee
Stores employee records. Key columns: EmployeeId, FirstName, LastName,
Title, ReportsTo, HireDate.

## Customer
Customer accounts linked to a support rep. Key columns: CustomerId,
FirstName, LastName, SupportRepId, Country.

## Invoice
Each sales transaction. Key columns: InvoiceId, CustomerId,
InvoiceDate, Total.

## InvoiceLine
Line items per invoice. Key columns: InvoiceLineId, InvoiceId,
TrackId, UnitPrice, Quantity.

## Track / Album / Artist / Genre
Music catalog hierarchy. Used to slice revenue by genre and format.
