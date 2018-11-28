<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="GameDetails.aspx.cs" Inherits="BLAIR.GameDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="col-sm-12 ub-game-detail-container">
<%--        <div class="col-sm-5 ub-game-image-container">
            <div class="ub-game-image-large-container">
                <asp:Image ID="GameImage" CssClass="ub-game-image-large" runat="server" />
            </div>
            <div class="ub-game-image-all-thumbnails">
                <% if (!string.IsNullOrEmpty(game.ImageUrl01)) { %>
                <div class="ub-game-image-thumbnail-container">
                    <asp:ImageButton ID="GameUrl01ImageButton" CssClass="ub-game-image-thumbnail" runat="server" OnClick="GameUrl02ImageButton_Click" CommandArgument="1" />
                </div>
                <% } %>

                <% if (!string.IsNullOrEmpty(game.ImageUrl02)) { %>
                <div class="ub-game-image-thumbnail-container">
                    <asp:ImageButton ID="GameUrl02ImageButton" CssClass="ub-game-image-thumbnail" runat="server" OnClick="GameUrl02ImageButton_Click" CommandArgument="2" />
                </div>
                <% } %>
            </div>
            <% if ((null != Session["LoggedUser"]) && game.IsAvailable) { %>
                <div class="ub-game-button-holder">
                    <asp:Button
                        ID="BuyGameButton"
                        Text="Buy"
                        CssClass="ub-game-button"
                        OnClick="BuyButton_Click"
                        runat="server" />
                </div>
            <% } %>
        </div>
        <div class="col-sm-7 ub-game-details-text">
            <div class="ub-game-details-text-title">
                <span><%= game.Title %></span>
            </div>
            <div class="ub-game-details-text-description">
                <span><%= game.Description %></span>
            </div>
            <div class="ub-game-detail-text-details">
                Game Details
            </div>
            <div class="ub-game-details-text-description">
                <div class="col-sm-3">
                    <span class="ub-game-details-text-description-bold">Game Tile: </span>
                </div>
                <div class="col-sm-9">
                    <span><%= game.GameTile %></span>
                </div>
            </div>
            <div class="ub-game-details-text-description">
                <div class="col-sm-3">
                    <span class="ub-game-details-text-description-bold">ID: </span>
                </div>
                <div class="col-sm-9">
                    <span><%= game.PrimaryKey.Key %></span>
                </div>
            </div>
            <div class="ub-game-details-text-description">
                <div class="col-sm-3">
                    <span class="ub-game-details-text-description-bold">Price: </span>
                </div>
                <div class="col-sm-9">
                    <span><%= game.Price %></span>
                </div>
            </div>
            <div class="ub-game-details-text-description">
                <div class="col-sm-3">
                    <span class="ub-game-details-text-description-bold">Description: </span>
                </div>
                <div class="col-sm-9">
                    <span><%= game.Description %></span>
                </div>
            </div>
                        <div class="ub-game-details-text-description">
                <div class="col-sm-3">
                    <span class="ub-game-details-text-description-bold">Requirements: </span>
                </div>
                <div class="col-sm-9">
                    <span><%= game.Requirements %></span>
                </div>
            </div>
        </div>--%>
    </div>
</asp:Content>
