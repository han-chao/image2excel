<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<?mso-application progid="Excel.Sheet"?>
<Workbook xmlns="urn:schemas-microsoft-com:office:spreadsheet"
	xmlns:o="urn:schemas-microsoft-com:office:office"
	xmlns:x="urn:schemas-microsoft-com:office:excel"
	xmlns:ss="urn:schemas-microsoft-com:office:spreadsheet"
	xmlns:html="http://www.w3.org/TR/REC-html40"
	xmlns:dt="uuid:C2F41010-65B3-11d1-A29F-00AA00C14882">
	<DocumentProperties
		xmlns="urn:schemas-microsoft-com:office:office">
		<LastAuthor>任我逍遥</LastAuthor>
		<Created>2019-04-16T07:59:26Z</Created>
		<LastSaved>2019-05-06T09:48:26Z</LastSaved>
	</DocumentProperties>
	<CustomDocumentProperties
		xmlns="urn:schemas-microsoft-com:office:office">
		<KSOProductBuildVer dt:dt="string">2052-11.1.0.8612
		</KSOProductBuildVer>
	</CustomDocumentProperties>
	<ExcelWorkbook
		xmlns="urn:schemas-microsoft-com:office:excel">
		<WindowWidth>16035</WindowWidth>
		<WindowHeight>7785</WindowHeight>
		<ProtectStructure>False</ProtectStructure>
		<ProtectWindows>False</ProtectWindows>
	</ExcelWorkbook>
	<Styles>
		<#list colors?keys as color>
		<Style ss:ID="${colors[color]}">
			<Interior ss:Color="${color}" ss:Pattern="Solid" />
		</Style>
		</#list>
	</Styles>
	<Worksheet ss:Name="Sheet1">
		<Table ss:DefaultColumnWidth="${width}" ss:DefaultRowHeight="${height}">
			<#list rows as row>
			<Row>
				<#list row as col>
				<Cell ss:StyleID="${col}" />
				</#list>
			</Row>
			</#list>
		</Table>
		<WorksheetOptions
			xmlns="urn:schemas-microsoft-com:office:excel">
			<PageSetup>
				<Header x:Margin="0.3" />
				<Footer x:Margin="0.3" />
				<PageMargins x:Left="0.7" x:Right="0.7" x:Top="0.75"
					x:Bottom="0.75" />
			</PageSetup>
			<Selected />
			<TopRowVisible>0</TopRowVisible>
			<LeftColumnVisible>0</LeftColumnVisible>
			<PageBreakZoom>100</PageBreakZoom>
			<Panes>
				<Pane>
					<Number>3</Number>
					<ActiveRow>3</ActiveRow>
					<ActiveCol>5</ActiveCol>
					<RangeSelection>R4C6</RangeSelection>
				</Pane>
			</Panes>
			<ProtectObjects>False</ProtectObjects>
			<ProtectScenarios>False</ProtectScenarios>
		</WorksheetOptions>
	</Worksheet>
</Workbook>