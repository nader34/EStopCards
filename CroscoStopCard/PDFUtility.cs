using iTextSharp.text;
using iTextSharp.text.html;
using iTextSharp.text.html.simpleparser;
using iTextSharp.text.pdf;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;

namespace CroscoStopCard
{
    public class PDFUtility
    {
        public static byte[] RenderPDF(string htmlText, string fontPath/*, string pageTitle*/)
        {
            byte[] renderedBuffer;

            using (var outputMemoryStream = new MemoryStream())
            {
                using (var pdfDocument = new Document(PageSize.A4, 10f, 10f, 10f, 10f))
                {
                    string Roboto = fontPath;
                    FontFactory.Register(Roboto);

                    PdfWriter pdfWriter = PdfWriter.GetInstance(pdfDocument, outputMemoryStream);

                    pdfWriter.CloseStream = false;
                    //pdfWriter.PageEvent = new PrintHeaderFooter { Title = pageTitle };
                    pdfDocument.Open();

                    using (var htmlViewReader = new StringReader(htmlText))
                    {
                        using (var htmlWorker = new HTMLWorker(pdfDocument))
                        {
                            var styleSheet = new StyleSheet();
                            styleSheet.LoadTagStyle(HtmlTags.BODY, HtmlTags.FACE, "Roboto-Regular");
                            styleSheet.LoadTagStyle(HtmlTags.BODY, HtmlTags.ENCODING, BaseFont.IDENTITY_H);
                            htmlWorker.SetStyleSheet(styleSheet);

                            htmlWorker.Parse(htmlViewReader);
                        }
                    }
                }

                renderedBuffer = new byte[outputMemoryStream.Position];
                outputMemoryStream.Position = 0;
                outputMemoryStream.Read(renderedBuffer, 0, renderedBuffer.Length);
            }

            return renderedBuffer;
        }

        public static byte[] RenderPDFFromFile(string htmlPath, string fontPath, Dictionary<string, string> placeHolders/*, string pageTitle*/)
        {
            byte[] renderedBuffer;

            using (var outputMemoryStream = new MemoryStream())
            {
                using (var pdfDocument = new Document(PageSize.A4, 10f, 10f, 10f, 10f))
                {
                    string htmlText = File.ReadAllText(htmlPath);

                    foreach (var item in placeHolders) if (htmlText.Contains(item.Key)) htmlText = htmlText.Replace(item.Key, item.Value);

                    FontFactory.Register(fontPath);

                    PdfWriter pdfWriter = PdfWriter.GetInstance(pdfDocument, outputMemoryStream);

                    pdfWriter.CloseStream = false;
                    //pdfWriter.PageEvent = new PrintHeaderFooter { Title = pageTitle };
                    pdfDocument.Open();

                    using (var htmlViewReader = new StringReader(htmlText))
                    {
                        using (var htmlWorker = new HTMLWorker(pdfDocument))
                        {
                            var styleSheet = new StyleSheet();
                            styleSheet.LoadTagStyle(HtmlTags.BODY, HtmlTags.FACE, "Roboto-Regular");
                            styleSheet.LoadTagStyle(HtmlTags.BODY, HtmlTags.ENCODING, BaseFont.IDENTITY_H);
                            htmlWorker.SetStyleSheet(styleSheet);

                            htmlWorker.Parse(htmlViewReader);
                        }
                    }
                }

                renderedBuffer = new byte[outputMemoryStream.Position];
                outputMemoryStream.Position = 0;
                outputMemoryStream.Read(renderedBuffer, 0, renderedBuffer.Length);
            }

            return renderedBuffer;
        }

        #region CreatePDF

        public static void CreatePDF(byte[] bytes, string outputPath)
        {
            FileStream fs = new FileStream(outputPath, FileMode.Create);
            fs.Write(bytes, 0, bytes.Length);
            fs.Close();
        }

        //Dictionary<string, string> keyValuePairs = new Dictionary<string, string>();
        //keyValuePairs.Add("{imagePath}", Server.MapPath("~/Resources/Instruction_hr1.png"));
        //keyValuePairs.Add("{CloseDate}", clnClose.SelectedDate.ToShortDateString());

        //PDFUtility.CreatePDF(PDFUtility.RenderPDFFromFile(Server.MapPath("~/HTMLTemplates/PDFTemplateSig.html"), Server.MapPath("~/fonts/Roboto-Regular.ttf"), keyValuePairs),
        //    Server.MapPath("~/TempFiles/test.pdf"));

        #endregion CreatePDF
    }
}