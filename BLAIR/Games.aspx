<%@ Page Title="Games" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Games.aspx.cs" Inherits="BLAIR.Games" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="col-sm-12 ub-game-detail-container">
    <asp:Repeater ID="GameRepeater" runat="server">
            <ItemTemplate>
                <div class="col-sm-4">
                    <div class="ub-game-outer-border">
                        <div class="ub-game-content">
                            <div class="ub-game-image">
                                <a href="GameDetail.aspx?isbn=<%# Eval("PrimaryKey.Key") %>">
                                    <asp:Image ID="GameImage"
                                        AlternateText='<%# Eval("Title") %>'
                                        ImageUrl='<%# Eval("ImageUrl01") %>'
                                        CssClass="ub-game-image-small"
                                        runat="server"
                                        ToolTip="Click on the image to see the game details." />
                                </a>
                            </div>
                            <div class="ub-game-name">
                                <a href="GameDetail.aspx?isbn=<%# Eval("PrimaryKey.Key") %>">
                                    <asp:Label ID="GameLabel" Text='<%# Eval("Title") %>' runat="server" /></span>
                                </a>
                            </div>
                            <% if (null != Session["LoggedUser"]) { %>
                                <div class="ub-game-button-holder">
                                    <asp:Button 
                                        ID="BuyButton"
                                        Text="Buy"
                                        CommandArgument='<%# Eval("PrimaryKey.Key") %>'
                                        CssClass="ub-game-button"
                                        OnClick="BuyButton_Click"
                                        runat="server" />
                                </div>
                            <% } %>
                        </div>
                    </div>
                </div>
            </ItemTemplate>
        </asp:Repeater>
        </div>
</asp:Content>
