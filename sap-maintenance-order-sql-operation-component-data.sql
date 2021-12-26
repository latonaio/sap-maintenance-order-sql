CREATE TABLE `sap_maintenance_order_operation_component_data`
(
  `MaintenanceOrder`                  varchar(12) NOT NULL,
  `MaintenanceOrderOperation`         varchar(4) NOT NULL,
  `MaintenanceOrderSubOperation`      varchar(4) NOT NULL,
  `MaintenanceOrderComponent`         varchar(4) NOT NULL,
  `Reservation`                       varchar(10) DEFAULT NULL,
  `ReservationItem`                   varchar(4) DEFAULT NULL,
  `ReservationType`                   varchar(1) DEFAULT NULL,
  `MaintOrderRoutingNumber`           varchar(10) DEFAULT NULL,
  `MaintOrderOperationCounter`        varchar(8) DEFAULT NULL,
  `Product`                           varchar(40) DEFAULT NULL,
  `MaintOrdOperationComponentText`    varchar(40) DEFAULT NULL,
  `MaintOrdOpCompRequiredQuantity`    varchar(15) DEFAULT NULL,
  `BaseUnit`                          varchar(3) DEFAULT NULL,
  `QuantityInUnitOfEntry`             varchar(15) DEFAULT NULL,
  `UnitOfEntry`                       varchar(3) DEFAULT NULL,
  `RequirementDate`                   varchar(80) DEFAULT NULL,
  `RequirementTime`                   varchar(80) DEFAULT NULL,
  `Supplier`                          varchar(10) DEFAULT NULL,
  `Plant`                             varchar(4) DEFAULT NULL,
  `StorageLocation`                   varchar(4) DEFAULT NULL,
  `MaintOrdOpCompItemCategory`        varchar(1) DEFAULT NULL,
  `GoodsMovementType`                 varchar(3) DEFAULT NULL,
  `ReservationIsFinallyIssued`        tinyint(1) DEFAULT NULL,
  `MaterialGroup`                     varchar(9) DEFAULT NULL,
  `ProductTypeCode`                   varchar(2) DEFAULT NULL,
  `ServicePerformer`                  varchar(10) DEFAULT NULL,
  `PerformancePeriodStartDateTime`    varchar(80) DEFAULT NULL,
  `PerformancePeriodStartDate`        varchar(80) DEFAULT NULL,
  `PerformancePeriodEndDate`          varchar(80) DEFAULT NULL,
  `PerformancePeriodEndDateTime`      varchar(80) DEFAULT NULL,
  `PerformancePeriodStartTime`        varchar(80) DEFAULT NULL,
  `PerformancePeriodEndTime`          varchar(80) DEFAULT NULL,
  `LeanServiceDuration`               varchar(5) DEFAULT NULL,
  `LeanServiceDurationUnit`           varchar(3) DEFAULT NULL,
  `DistributionFunction`              varchar(10) DEFAULT NULL,
  `SrvcSchedgIsAlignedWthOpWrkCtr`    varchar(10) DEFAULT NULL,
  `MaintOrderCompDebitCreditCode`     varchar(1) DEFAULT NULL,
  `GoodsMovementIsAllowed`            tinyint(1) DEFAULT NULL,
  `MaintenanceOrderComponentBatch`    varchar(10) DEFAULT NULL,
  `QuantityIsFixed`                   tinyint(1) DEFAULT NULL,
  `MaintOrdOpComponentGLAccount`      varchar(10) DEFAULT NULL,
  `MaintOrdOpCompCostingRelevancy`    varchar(1) DEFAULT NULL,
  `MaintCompAltvProdUsgeRateInPct`    varchar(4) DEFAULT NULL,
  `MaintOrderOpComponentSortText`     varchar(10) DEFAULT NULL,
  `MaintOrdOpCompIsBulkProduct`       tinyint(1) DEFAULT NULL,
  `MaterialProvisionType`             varchar(1) DEFAULT NULL,
  `MaintOrdOpCompAssgdWBSElmntInt`    varchar(8) DEFAULT NULL,
  `MaintOrderOpComponentPrice`        varchar(17) DEFAULT NULL,
  `MaintOrdOpComponentCurrency`       varchar(5) DEFAULT NULL,
  `MatlCompIsMarkedForBackflush`      tinyint(1) DEFAULT NULL,
  `PurchasingGroup`                   varchar(3) DEFAULT NULL,
  `DeliveryTimeInDays`                varchar(4) DEFAULT NULL,
  `MaintOrdOpCompGdsRecipientName`    varchar(12) DEFAULT NULL,
  `MaintOrdOpCompUnloadingPtTxt`      varchar(25) DEFAULT NULL,
  `GoodsReceiptDurationInWorkDays`    varchar(4) DEFAULT NULL,
  `PurchasingInfoRecord`              varchar(10) DEFAULT NULL,
  `OperationLeadTimeOffset`           varchar(4) DEFAULT NULL,
  `OpsLeadTimeOffsetUnit`             varchar(3) DEFAULT NULL,
  `MaintOrdOpCompRequisitioner`       varchar(12) DEFAULT NULL,
  `MaintOrdOpCompProcmtTrckgNmbr`     varchar(10) DEFAULT NULL,
  `ResponsiblePurchaseOrg`            varchar(4) DEFAULT NULL,
  `MaintOrdOpCompSpecialStockType`    varchar(1) DEFAULT NULL,
  `VariableSizeDimension1`            varchar(15) DEFAULT NULL,
  `VariableSizeDimensionUnit`         varchar(3) DEFAULT NULL,
  `VariableSizeCompFormulaKey`        varchar(2) DEFAULT NULL,
  `VariableSizeDimension2`            varchar(15) DEFAULT NULL,
  `NumberOfVariableSizeItem`          int(32) DEFAULT NULL,
  `VariableSizeDimension3`            varchar(15) DEFAULT NULL,
  `VariableSizeItemQuantity`          varchar(15) DEFAULT NULL,
  `VariableSizeComponentUnit`         varchar(3) DEFAULT NULL,
  `RqmtDateIsEnteredManually`         tinyint(1) DEFAULT NULL,
  `SupplierProduct`                   varchar(35) DEFAULT NULL,
  `MaintOrdCompPurOutlineAgrmtItm`    varchar(5) DEFAULT NULL,
  `MaintOrderComponentInternalID`     varchar(22) DEFAULT NULL,
  `PurchaseRequisition`               varchar(10) DEFAULT NULL,
  `PurchaseRequisitionItem`           varchar(5) DEFAULT NULL,
  `OverallLimitAmount`                varchar(13) DEFAULT NULL,
  `ExpectedOverallLimitAmount`        varchar(13) DEFAULT NULL,
    PRIMARY KEY (`MaintenanceOrder`, `MaintenanceOrderOperation`, `MaintenanceOrderSubOperation`, `MaintenanceOrderComponent`),
    CONSTRAINT `SAPMaintenanceOrderOperationComponentData_fk` FOREIGN KEY (`MaintenanceOrder`) REFERENCES `sap_maintenance_order_header_data` (`MaintenanceOrder`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
