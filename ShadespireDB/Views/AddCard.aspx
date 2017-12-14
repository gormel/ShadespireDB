<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddCard.aspx.cs" Inherits="ShadespireDB.Views.AddCard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Add a card</title>
</head>
<body>
<form runat="server">
    <asp:LinqDataSource runat="server" ContextTypeName="ShadespireDB.Model.ShadespireDBDataContext" ID="typesDataSource" TableName="card_types"/>
    <asp:LinqDataSource runat="server" ContextTypeName="ShadespireDB.Model.ShadespireDBDataContext" ID="setsDataSource" TableName="card_sets"/>
    <asp:LinqDataSource runat="server" ContextTypeName="ShadespireDB.Model.ShadespireDBDataContext" ID="racesDataSource" TableName="card_races"/>
    <asp:LinqDataSource runat="server" ContextTypeName="ShadespireDB.Model.ShadespireDBDataContext" ID="attackTypeDataSource" TableName="attack_types"/>
    <asp:LinqDataSource runat="server" ContextTypeName="ShadespireDB.Model.ShadespireDBDataContext" ID="weaponAbilityDataSource" TableName="weapon_abilities"/>
    <asp:LinqDataSource runat="server" ContextTypeName="ShadespireDB.Model.ShadespireDBDataContext" ID="cardsDataSource" TableName="cards"/>
    <asp:LinqDataSource runat="server" ContextTypeName="ShadespireDB.Model.ShadespireDBDataContext" ID="defenceTypesDataSource" TableName="defence_types"/>
    
    name: <asp:TextBox runat="server" ID="nameText"/><br/>

    <asp:DropDownList runat="server" ID="cardTypeList" DataSourceID="typesDataSource" DataTextField="name" />
    <asp:DropDownList runat="server" ID="cardSetList" DataSourceID="setsDataSource" DataTextField="name" />
    <asp:DropDownList runat="server" ID="cardRaceList" DataSourceID="racesDataSource" DataTextField="name" /><br/>

    <details runat="server">
        <summary>Card text</summary>
        <asp:CheckBox runat="server" ID="isText" Text="enable"/><br/>
        <asp:TextBox runat="server" ID="text" TextMode="MultiLine" ></asp:TextBox>
    </details>
    <details runat="server">
        <summary>Card flower text</summary>
        <asp:CheckBox runat="server" ID="isFlowerText" Text="enable"/><br/>
        <asp:TextBox runat="server" ID="flowerText" TextMode="MultiLine"></asp:TextBox>
    </details>
    <details runat="server">
        <summary>Card weapon</summary>
        <asp:CheckBox runat="server" ID="isWeapon" Text="enable weapon"/><br/>
        attack type: <asp:DropDownList runat="server" ID="weaponAttackType" DataSourceID="attackTypeDataSource" DataTextField="name"/><br/>
        <asp:CheckBox runat="server" ID="isWeaponAbility" Text="enable ability"/><br/>
        ability: <asp:DropDownList runat="server" ID="weaponAbility" DataSourceID="weaponAbilityDataSource" DataTextField="name"/><br/>
        range: <asp:TextBox runat="server" TextMode="Number" ID="weaponRange"/><br/>
        attak dies: <asp:TextBox runat="server" TextMode="Number" ID="weaponDieCount"/><br/>
        damage: <asp:TextBox runat="server" TextMode="Number" ID="weaponDamage"/><br/>
    </details>
    <details runat="server">
        <summary>Card number</summary>
        <asp:CheckBox runat="server" ID="isCardNumber" Text="enable"/><br/>
        <asp:TextBox runat="server" TextMode="Number" ID="cardNumber"></asp:TextBox>
    </details>
    <details runat="server">
        <summary>Enchantment info</summary>
        <asp:CheckBox runat="server" ID="isEnchantmentInfo" Text="enable"/><br/>
        glory points: <asp:TextBox runat="server" TextMode="Number" ID="gloryPoints"></asp:TextBox><br/>
        <asp:CheckBox runat="server" ID="isEnchantmentTarget" Text="enable targer"/><br/>
        target: <asp:DropDownList runat="server" ID="enchantmentTargetCard" DataSourceID="cardsDataSource" DataTextField="name"/><br/>
    </details>
    <details runat="server">
        <summary>Trooper info</summary>
        <asp:CheckBox runat="server" ID="isTrooperInfo" Text="enable"/><br/>
        move: <asp:TextBox runat="server" TextMode="Number" ID="trooperMove"></asp:TextBox><br/>
        defence type: <asp:DropDownList runat="server" DataSourceID="defenceTypesDataSource" ID="trooperDefenceType" DataTextField="name"/><br/>
        defence dice count: <asp:TextBox runat="server" TextMode="Number" ID="trooperDefenceCount"></asp:TextBox><br/>
        other side: <asp:DropDownList runat="server" ID="trooperOtherSide" DataSourceID="cardsDataSource" DataTextField="name"/><br/>
        flip trigger: <asp:TextBox runat="server" ID="trooperFlipTrigger" TextMode="MultiLine"></asp:TextBox><br/>
    </details>

    <asp:Button runat="server" OnClick="OnClick" Text="Add a card"/>
</form>
</body>
</html>
