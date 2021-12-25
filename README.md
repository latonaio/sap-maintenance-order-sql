# sap-maintenance-order-sql

sap-maintenance-order-sql は、主にエッジアプリケーションにおいて、SAPと連携された保全指図データを保存するSQLテーブルを作成するためのレポジトリです。  
sap-maintenance-order-sql は、そのままクラウド環境におけるアプリケーションにも、適用可能です。  

## 前提条件  
sap-maintenance-order-sql は、SQL の SAP とのデータ連携にあたり、オンプレミス版である（＝クラウド版ではない）SAPS4HANA API の利用を前提としています。  
クラウド版APIを利用する場合は、ご注意ください。  
https://api.sap.com/api/OP_API_MAINTENANCEORDER_0001/overview  
本レポジトリ の sql設定ファイルの内容は、上記URL の API 仕様を前提としています。  

## sqlの設定ファイル

sap-maintenance-order-sql には、sqlの設定ファイルとして、以下のファイルが含まれています。  

* sap-maintenance-order-sql-header-data.sql（SAP 保全指図 - ヘッダデータ）  
* sap-maintenance-order-sql-object-list-item-data.sql（SAP 保全指図 - 対象一覧明細データ）  
* sap-maintenance-order-sql-operation.sql（SAP 保全指図 - 作業データ）  
* sap-maintenance-order-sql-operation-component.sql（SAP 保全指図 - 作業構成品目データ）  

## MySQLのセットアップ / Kubernetesの設定 / SQLテーブルの作成方法  

MySQLのセットアップ / Kubernetesの設定 / 具体的なSQLテーブルの作成方法、については、[mysql-kube](https://github.com/latonaio/mysql-kube)を参照ください。  