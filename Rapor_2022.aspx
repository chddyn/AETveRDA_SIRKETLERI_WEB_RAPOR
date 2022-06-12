<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Rapor_2022.aspx.cs" Inherits="AET_RDA_WEBREPORT2.Rapor_2022" %>

<%@ Register Assembly="DevExpress.Web.Bootstrap.v21.2, Version=21.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.Bootstrap" TagPrefix="dx" %>

<%@ Register Assembly="DevExpress.Web.ASPxPivotGrid.v21.2, Version=21.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxPivotGrid" TagPrefix="dx" %>

<%@ Register TagPrefix="dx" Namespace="DevExpress.Web" Assembly="DevExpress.Web.v21.2, Version=21.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>

    <form runat="server">
        <br />  
        <dx:ASPxButton ID="ASPxButton1" runat="server" Text="2021 Raporları için Tıklayınız..." Height="100px" Width="200px" Font-Size="Medium" Font-Bold="true" OnClick="ASPxButton1_Click"></dx:ASPxButton>
        <table style="width: 100%;">


            <thead>
                <tr>
                    <th>
                        <br />
                        <h1 style="color:white; background-color:red" > AET 2022 SATIŞ RAPORU</h1>
                    </th>

                    <th>&nbsp;</th>

                    <th>&nbsp;</th>

                    <th>&nbsp;</th>

                    <th>
                    </th>

                </tr>
            </thead>
   
            <tr>
                <td>
                 
                    <dx:ASPxPivotGrid ID="ASPxPivotGrid1" runat="server" OptionsData-DataProcessingEngine="Optimized" ClientIDMode="AutoID" DataSourceID="SqlDataSource2" IsMaterialDesign="False">
                   
                           <Fields>
                            <dx:PivotGridField Name="fieldFIRMAADI" ID="fieldFIRMAADI" Area="RowArea" AreaIndex="0" Caption="FİRMA ADI">
                                <SortBySummaryInfo FieldName="FIRMA_ADI"></SortBySummaryInfo>
                                <DataBindingSerializable>
                                    <dx:DataSourceColumnBinding ColumnName="FİRMA ADI"></dx:DataSourceColumnBinding>
                                </DataBindingSerializable>
                            </dx:PivotGridField>

                            <dx:PivotGridField Name="fieldSATISTURU" ID="fieldSATISTURU" Area="RowArea" AreaIndex="0" Caption="SATIŞ T&#220;R&#220;">
                                <DataBindingSerializable>
                                    <dx:DataSourceColumnBinding ColumnName="SATIŞ T&#220;R&#220;"></dx:DataSourceColumnBinding>
                                </DataBindingSerializable>
                            </dx:PivotGridField>

                            <dx:PivotGridField   Name="fieldMIKTAR" ID="fieldMIKTAR" Area="DataArea" AreaIndex="0" CellFormat-FormatType="Numeric" CellFormat-FormatString="n4">
                                <DataBindingSerializable>
                                    <dx:DataSourceColumnBinding  ColumnName="MİKTAR"></dx:DataSourceColumnBinding>
                                </DataBindingSerializable>
                            </dx:PivotGridField>
                            <dx:PivotGridField Name="fieldBIRIMFIYAT" ID="fieldBIRIMFIYAT" Area="DataArea" AreaIndex="0" CellFormat-FormatType="Numeric" CellFormat-FormatString="n4" >
                                <DataBindingSerializable>
                                    <dx:DataSourceColumnBinding  ColumnName="BİRİM FİYAT"></dx:DataSourceColumnBinding>
                                </DataBindingSerializable>
                            </dx:PivotGridField>

                            <dx:PivotGridField Name="fieldDBIRIMFIYAT" ID="fieldDBIRIMFIYAT" Area="DataArea" AreaIndex="0" CellFormat-FormatType="Numeric" CellFormat-FormatString="n4">
                                <DataBindingSerializable>
                                    <dx:DataSourceColumnBinding ColumnName="DOVİZLİ BİRİM FİYAT"></dx:DataSourceColumnBinding>
                                </DataBindingSerializable>
                            </dx:PivotGridField>

                            <dx:PivotGridField Name="fieldDTOPLAMFIYAT" ID="fieldDTOPLAMFIYAT" Area="DataArea" AreaIndex="0" CellFormat-FormatType="Numeric" CellFormat-FormatString="n4">
                                <DataBindingSerializable>
                                    <dx:DataSourceColumnBinding ColumnName="D&#214;VİZLİ TOPLAM FİYAT"></dx:DataSourceColumnBinding>
                                </DataBindingSerializable>
                            </dx:PivotGridField>


                            <dx:PivotGridField Name="fieldTLSATISFIYAT" ID="fieldTLSATISFIYAT" Area="DataArea" AreaIndex="0">
                                <DataBindingSerializable>
                                    <dx:DataSourceColumnBinding ColumnName="TL SATIŞ FİYATI"></dx:DataSourceColumnBinding>
                                </DataBindingSerializable>
                            </dx:PivotGridField>
                            <dx:PivotGridField Name="fieldTTLSATISFIYAT" ID="fieldTTLSATISFIYAT" Area="DataArea" AreaIndex="0">
                                <DataBindingSerializable>
                                    <dx:DataSourceColumnBinding ColumnName="TOPLAM TL SATIŞ FİYATI"></dx:DataSourceColumnBinding>
                                </DataBindingSerializable>
                            </dx:PivotGridField>


                        </Fields>
                        <OptionsPager Visible="False">
                        </OptionsPager>
                        <OptionsView ShowColumnGrandTotals="FALSE" />
                        <OptionsChartDataSource FieldValuesProvideMode="DisplayText"
                            ProvideColumnGrandTotals="False" ProvideRowGrandTotals="False" />
                        <OptionsData AutoExpandGroups="False" />
                    
                    </dx:ASPxPivotGrid>



                    <asp:SqlDataSource runat="server" ID="SqlDataSource2" ConnectionString='<%$ ConnectionStrings:AET2022 %>' SelectCommand="SELECT * FROM [_VW_WEB_SATIS_RAPOR]"></asp:SqlDataSource>
                    <asp:SqlDataSource runat="server" ID="SqlDataSource1"></asp:SqlDataSource>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;
            

                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>