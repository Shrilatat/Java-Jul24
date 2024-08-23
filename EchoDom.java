package com.trg.jaxp;

import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.DocumentBuilder;

import org.w3c.dom.Document;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.w3c.dom.NamedNodeMap;

public class EchoDom {

	public static void main(String[] args) {

		// check for correct usage
		if (args.length != 1) {
			System.out.println("Usage: java EzDomEcho1 <xml file>");
			System.exit(1);
		}

		// reference to the XML resource
		String theXmlRef = args[0];

		try {
			// Create the factory and builder
			System.out.println("Creating the parser");
			DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
			DocumentBuilder builder = factory.newDocumentBuilder();

			// Parse the document
			System.out.println("Building DOM object for file: "  + theXmlRef);
			Document doc = builder.parse(theXmlRef);
			System.out.println("...finished\n");

			// Retrieve the root node
			Node root = doc.getDocumentElement();  // gives pointer to my Root Element 
			root.normalize(); 
			
			System.out.println("Displaying document");
			EchoDom echo = new EchoDom();
			echo.traverseTree(root);
		}
		catch (Exception exc) {
			exc.printStackTrace();
		}
	}

	public void traverseTree(Node theNode) {

		int nodeType = theNode.getNodeType();
		switch (nodeType) {
			case Node.ELEMENT_NODE:
				displayNodeAndAttributes(theNode);
				break;

			case Node.CDATA_SECTION_NODE:
			case Node.TEXT_NODE:
					System.out.println(theNode.getNodeValue());
				break;
		}
	}

	public void displayNodeAndAttributes(Node theNode) {
			// display the node name and attributes
			String nodeName = theNode.getNodeName();
			System.out.print("<" + nodeName);

			// do attribute work
			NamedNodeMap attributes = theNode.getAttributes();
			Node tempAttrib;
			for (int i=0; i < attributes.getLength(); i++) {
				tempAttrib = attributes.item(i);
				System.out.print(" " + tempAttrib.getNodeName() + "=" + "\"" + tempAttrib.getNodeValue()  + "\"" );
			}
			System.out.println(">");

			// now perform the recursion for each child node
			if (theNode.hasChildNodes())	{
				NodeList children = theNode.getChildNodes();
				int childCount = children.getLength();
				for (int i=0; i < childCount; i++) {
					traverseTree(children.item(i));
				}
			}
			// print out the end tag
			System.out.println("</" +nodeName + ">");
	}
}