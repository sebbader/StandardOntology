#!/bin/bash

echo "This script executes a set of http requests in order to test the linked data compliance of our hosted IDS ontology files."
echo ""

# basic check 1
echo "1. Redirects to https://localhost/i40/sto/?"
curl -k https://localhost/i40/sto#
echo ""

# basic check 2
echo "2. Redirects to http://i40.semantic-interoperability.org/sto/?"
curl -k https://localhost/i40/sto/
echo ""

# check for content type HTML
echo "3. Redirects to http://i40.semantic-interoperability.org/sto/?"
curl -k -H "Accept: text/html" https://localhost/i40/sto/
echo ""

# check for content type Turtle
echo "4. Redirects to https://i40-tools.github.io/I40KG/docs/serializations/ontology.ttl?"
curl -k -H "Accept: text/turtle" https://localhost/i40/sto/ 
echo ""

# check for content type RDF/XML
echo "5. Redirects to https://localhost/i40/sto/?"
curl -k -H "Accept: application/rdf+xml" https://localhost/i40/sto# 
echo ""

# check for content type RDF/XML
echo "6. Redirects to https://i40-tools.github.io/I40KG/docs/serializations/ontology.owl?"
curl -k -H "Accept: application/rdf+xml" https://localhost/i40/sto/ 
echo ""


# check for content type n-triples
echo "7. Redirects to https://localhost/i40/sto/?"
curl -k -H "Accept: application/n-triples" https://localhost/i40/sto# 
echo ""


# check for content type n-triples
echo "8. Redirects to https://i40-tools.github.io/I40KG/docs/serializations/ontology.nt?"
curl -k -H "Accept: application/n-triples" https://localhost/i40/sto/ 
echo ""



# check for requesting ids:Resource (HTML)
echo "9. Redirects to https://localhost/i40/sto/?"
curl -k -H "Accept: text/html" https://localhost/i40/sto#Standard
echo ""


# check for requesting ids:Resource (HTML)
echo "10. Redirects to https://i40-tools.github.io/I40KG/docs/index.html#/Standard?"
curl -k -H "Accept: text/html" https://localhost/i40/sto/Standard
echo ""


# check for requesting ids:Resource (RDF/XML)
echo "11. Redirects to https://i40-tools.github.io/I40KG/docs/serializations/ontology.owl"
curl -k -H "Accept: application/rdf+xml" https://localhost/i40/sto/Standard 
echo ""


# check for requesting ids:Resource (n-triples)
echo "12. Redirects to https://i40-tools.github.io/I40KG/docs/serializations/ontology.nt?"
curl -k -H "Accept: application/n-triples" https://localhost/i40/sto/Standard 
echo ""
