# Linx

This Radiant CMS extension keeps track of links between different content models.
Right now, all it does is list all the pages using a certain layout on the edit page for that layout.

It could easily be extended to do the same for assets that have page_attachments in the 'clipped' extension.

Ultimately, it could also keep track of e.g. assets referenced in a page, be it by radius tag or plain '<img />' tags.
For this it will need to keep a table like 'content_links' that keeps track of all references. It would need to parse all pages initially, and then keep things up to date on every update of a page, snippet or layout.

Created by Benny Degezelle for nzffa.org.nz 