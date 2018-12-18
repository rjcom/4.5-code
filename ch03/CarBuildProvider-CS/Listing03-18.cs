using System.IO;
using System.Web.Compilation;
using System.Xml;
using System.CodeDom;
namespace CarBuildProvider
{
    class Car : BuildProvider
    {
        public override void GenerateCode(AssemblyBuilder myAb)
        {
            XmlDocument carXmlDoc = new XmlDocument();
            using (Stream passedFile = OpenStream())
            {
                carXmlDoc.Load(passedFile);
            }
            XmlNode mainNode = carXmlDoc.SelectSingleNode("/car");
            string selectionMainNode = mainNode.Attributes["name"].Value;
            XmlNode colorNode = carXmlDoc.SelectSingleNode("/car/color");
            string selectionColorNode = colorNode.InnerText;
            XmlNode doorNode = carXmlDoc.SelectSingleNode("/car/door");
            string selectionDoorNode = doorNode.InnerText;
            XmlNode seatsNode = carXmlDoc.SelectSingleNode("/car/seats");
            string selectionseatsNode = seatsNode.InnerText;
            CodeCompileUnit ccu = new CodeCompileUnit();
            CodeNamespace cn = new CodeNamespace();
            CodeMemberProperty cmp1 = new CodeMemberProperty();
            CodeMemberProperty cmp2 = new CodeMemberProperty();
            CodeMemberMethod cmm1 = new CodeMemberMethod();
            cn.Imports.Add(new CodeNamespaceImport("System"));
            cmp1.Name = "Color";
            cmp1.Type = new CodeTypeReference(typeof(string));
            cmp1.Attributes = MemberAttributes.Public;
            cmp1.GetStatements.Add(new CodeSnippetExpression("return \"" +
              selectionColorNode + "\""));
            cmp2.Name = "Doors";
            cmp2.Type = new CodeTypeReference(typeof(int));
            cmp2.Attributes = MemberAttributes.Public;
            cmp2.GetStatements.Add(new CodeSnippetExpression("return " +
              selectionDoorNode));
            cmm1.Name = "Go";
            cmm1.ReturnType = new CodeTypeReference(typeof(int));
            cmm1.Attributes = MemberAttributes.Public;
            cmm1.Statements.Add(new CodeSnippetExpression("return " +
              selectionseatsNode));
            CodeTypeDeclaration ctd = new CodeTypeDeclaration(selectionMainNode);
            ctd.Members.Add(cmp1);
            ctd.Members.Add(cmp2);
            ctd.Members.Add(cmm1);
            cn.Types.Add(ctd);
            ccu.Namespaces.Add(cn);
            myAb.AddCodeCompileUnit(this, ccu);
        }
    }
}
