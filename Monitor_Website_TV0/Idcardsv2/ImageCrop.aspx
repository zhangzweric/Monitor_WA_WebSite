<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ImageCrop.aspx.cs" Inherits="Idcards.ImageCrop" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
   <!--Scriptgoeshere-->
        <script type="text/javascript">

            var editorID = '<%= imgCrop.ClientID %>';

            jQuery(function () {

                jQuery('#' + editorID).Jcrop({
                    onChange: showCoords,
                    onSelect: showCoords,
                    setSelect: [100, 100, 50, 50]
                });

            });


            function showCoords(c) {

                var xField = document.getElementById('<%= X.ClientID %>');
                var yField = document.getElementById('<%= Y.ClientID %>');
                var widthField = document.getElementById('<%= W.ClientID %>');
                var heightField = document.getElementById('<%= H.ClientID %>');

                xField.value = c.x;
                yField.value = c.y;
                widthField.value = c.w;
                heightField.value = c.h;
            }

    </script>
  <h1>Upload Image</h1>
    <br />
  <div>
    <asp:Panel ID="pnlUpload" runat="server">
      <asp:FileUpload ID="Upload" runat="server" />
      <br />
        <br />
      <asp:Button ID="btnUpload" runat="server" OnClick="btnUpload_Click" Text="Upload" />
        <br />
      <asp:Label ID="lblError" runat="server" Visible="false" />
        <br />
        <br />
        Note: Uploading an image make take some time to complete (a few seconds to a few 
        minutes to complete)</asp:Panel>
    <asp:Panel ID="pnlCrop" runat="server" Visible="false">
      <asp:Image ID="imgCrop" runat="server" Height="16px" Width="16px"/>
      <br />
      <asp:HiddenField ID="X" runat="server" Value="1" />
      <asp:HiddenField ID="Y" runat="server" Value="1" />
      <asp:HiddenField ID="W" runat="server" Value="1" />
      <asp:HiddenField ID="H" runat="server" Value="1" />
      <asp:Button ID="btnCrop" runat="server" Text="Save" OnClick="btnCrop_Click" 
            CssClass="ButtonSmall" />
    </asp:Panel>
    <asp:Panel ID="pnlCropped" runat="server" Visible="false">
      <asp:Image ID="imgCropped" runat="server" />
    </asp:Panel>
  </div>
<%--      <script type="text/javascript">
          $(document).ready(function () {
              var api = $('#<%= imgCrop.ClientID %>').Jcrop
            ({
                aspectRatio: 12 / 16,
                onSelect: storeCoords,
                onChange: storeCoords,
                onRelease: storeCoords,
                setSelect: [100, 100, 50, 50]
            });
          });

          function storeCoords(c) {
              jQuery('#<%= X.ClientID %>').val(c.x);
              jQuery('#<%= Y.ClientID %>').val(c.y);
              jQuery('#<%= W.ClientID %>').val(c.w);
              jQuery('#<%= H.ClientID %>').val(c.h);
          };
    </script>--%>



</asp:Content>
