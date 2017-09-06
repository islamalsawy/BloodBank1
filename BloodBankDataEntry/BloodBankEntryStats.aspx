<%@ Page Language="C#"   MasterPageFile="~/BloodBankDataEntry/BBEntry.master" AutoEventWireup="true" CodeFile="BloodBankEntryStats.aspx.cs" Inherits="BloodBankDataEntry_BloodBankEntryStats" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

                <div  align="center">
                    <asp:Label ID="lblBBankName" runat="server" Font-Size="Larger" Font-Bold="True"></asp:Label>
                          <br />    
                       <br />  
                       <br />  
                      <asp:ImageButton ID="ImageButton1" runat="server" Height="447px" ImageAlign="Middle" ImageUrl="~/img/BloodBank.png" OnClick="ImageButton1_Click" PostBackUrl="~/BloodBankDataEntry/BloodBankDataEntry.aspx" Width="754px" />
                     
           
         
      </asp:Content>