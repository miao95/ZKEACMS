
CREATE TABLE [ProductCategoryTag] (
  [ID] INTEGER NOT NULL
, [ProductCategoryId] int NULL
, [Title] nvarchar(50) NULL
, [Description] nvarchar(500) NULL
, [Status] int NULL
, [ParentId] int NULL
, [CreateBy] nvarchar(50) NULL
, [CreatebyName] nvarchar(100) NULL
, [CreateDate] datetime NULL
, [LastUpdateBy] nvarchar(50) NULL
, [LastUpdateByName] nvarchar(100) NULL
, [LastUpdateDate] datetime NULL
, CONSTRAINT [PK_ProductCategoryTag] PRIMARY KEY ([ID])
);
CREATE TABLE [ProductTag] (
  [ID] INTEGER NOT NULL
, [ProductId] int NULL
, [TagId] int NULL
, [Title] nvarchar(50) NULL
, CONSTRAINT [PK_ProductTag] PRIMARY KEY ([ID])
);

CREATE TABLE [ProductImage] (
  [ID] INTEGER NOT NULL
, [ProductId] int NULL
, [ImageUrl] nvarchar(500) NULL
, [Title] nvarchar(255) NULL
, [Description] nvarchar(500) NULL
, [Status] int NULL
, [CreateBy] nvarchar(50) NULL
, [CreatebyName] nvarchar(100) NULL
, [CreateDate] datetime NULL
, [LastUpdateBy] nvarchar(50) NULL
, [LastUpdateByName] nvarchar(100) NULL
, [LastUpdateDate] datetime NULL
, CONSTRAINT [PK_ProductImage] PRIMARY KEY ([ID])
);

CREATE TABLE [Basket] (
  [ID] INTEGER NOT NULL
, [UserId] nvarchar(50) NOT NULL
, [ImageUrl] nvarchar(500) NOT NULL
, [Quantity] int NOT NULL
, [Price] numeric(18,4) NOT NULL
, [ProductId] int NOT NULL
, [PromoCode] nvarchar(50) NULL
, [Title] nvarchar(200) NOT NULL
, [Description] nvarchar(500) NULL
, [Status] int NULL
, [CreateBy] nvarchar(50) NULL
, [CreatebyName] nvarchar(100) NULL
, [CreateDate] datetime NULL
, [LastUpdateBy] nvarchar(50) NULL
, [LastUpdateByName] nvarchar(100) NULL
, [LastUpdateDate] datetime NULL
, CONSTRAINT [PK_Basket] PRIMARY KEY ([ID])
);

CREATE TABLE [Order] (
  [ID] nvarchar(50) NOT NULL
, [UserId] nvarchar(50) NOT NULL
, [Contact] nvarchar(50) NULL
, [PhoneNumber] nvarchar(50) NULL
, [Total] numeric(18,4) NOT NULL
, [OrderStatus] int NOT NULL
, [PayTime] datetime NULL
, [CompletePayTime] datetime NULL
, [TrackingNumber] nvarchar(50) NULL
, [LogisticsCompany] nvarchar(50) NULL
, [ShippingAddress] nvarchar(500) NULL
, [PaymentGateway] nvarchar(50) NULL
, [PaymentID] nvarchar(500) NULL
, [Title] nvarchar(50) NULL
, [Description] nvarchar(500) NULL
, [Status] int NULL
, [CreateBy] nvarchar(50) NULL
, [CreatebyName] nvarchar(100) NULL
, [CreateDate] datetime NULL
, [LastUpdateBy] nvarchar(50) NULL
, [LastUpdateByName] nvarchar(100) NULL
, [LastUpdateDate] datetime NULL
, [RefundID] nvarchar(100) NULL
, [Refund] numeric(18,4) NULL
, [RefundDate] datetime NULL
, [RefundReason] nvarchar(500) NULL
, CONSTRAINT [PK_Order] PRIMARY KEY ([ID])
);

CREATE TABLE [OrderItem] (
  [ID] INTEGER NOT NULL
, [OrderId] nvarchar(50) NOT NULL
, [UserId] nvarchar(50) NOT NULL
, [ImageUrl] nvarchar(500) NOT NULL
, [Quantity] int NOT NULL
, [Price] numeric(18,4) NOT NULL
, [ProductId] int NOT NULL
, [PromoCode] nvarchar(50) NULL
, [Title] nvarchar(200) NOT NULL
, [Description] nvarchar(500) NULL
, [Status] int NULL
, [CreateBy] nvarchar(50) NULL
, [CreatebyName] nvarchar(100) NULL
, [CreateDate] datetime NULL
, [LastUpdateBy] nvarchar(50) NULL
, [LastUpdateByName] nvarchar(100) NULL
, [LastUpdateDate] datetime NULL
, CONSTRAINT [PK_OrderItem] PRIMARY KEY ([ID])
);

INSERT INTO DataDictionary( DicName ,Title ,DicValue ,[Order] ,Pid ,IsSystem ,Status)
SELECT 'Order@OrderStatus','未支付',1,1,0,1,0 UNION ALL
SELECT 'Order@OrderStatus','取消',2,2,0,1,0 UNION ALL
SELECT 'Order@OrderStatus','已支付',3,3,0,1,0 UNION ALL
SELECT 'Order@OrderStatus','已发货',4,4,0,1,0 UNION ALL
SELECT 'Order@OrderStatus','交易完成',5,5,0,1,0 UNION ALL
SELECT 'Order@OrderStatus','已退款',6,6,0,1,0 UNION ALL
SELECT 'Order@OrderStatus','退款中',7,7,0,1,0;

INSERT INTO  [Language] ([LanKey], [CultureName], [LanValue], [Module], [LanType]) VALUES ('ProductEntity@ProductImages', 'zh-CN', '展示图', 'ProductEntity', 'EntityProperty');
INSERT INTO  [Language] ([LanKey], [CultureName], [LanValue], [Module], [LanType]) VALUES ('ProductEntity@ProductTags', 'zh-CN', '标签', 'ProductEntity', 'EntityProperty');
INSERT INTO  [Language] ([LanKey], [CultureName], [LanValue], [Module], [LanType]) VALUES ('ProductImage@CreatebyName', 'zh-CN', '创建人', 'ProductImage', 'EntityProperty');
INSERT INTO  [Language] ([LanKey], [CultureName], [LanValue], [Module], [LanType]) VALUES ('ProductImage@CreateDate', 'zh-CN', '创建日期', 'ProductImage', 'EntityProperty');
INSERT INTO  [Language] ([LanKey], [CultureName], [LanValue], [Module], [LanType]) VALUES ('ProductImage@Description', 'zh-CN', '描述', 'ProductImage', 'EntityProperty');
INSERT INTO  [Language] ([LanKey], [CultureName], [LanValue], [Module], [LanType]) VALUES ('ProductImage@ImageUrl', 'zh-CN', '图片', 'ProductImage', 'EntityProperty');
INSERT INTO  [Language] ([LanKey], [CultureName], [LanValue], [Module], [LanType]) VALUES ('ProductImage@LastUpdateByName', 'zh-CN', '更新人', 'ProductImage', 'EntityProperty');
INSERT INTO  [Language] ([LanKey], [CultureName], [LanValue], [Module], [LanType]) VALUES ('ProductImage@LastUpdateDate', 'zh-CN', '更新日期', 'ProductImage', 'EntityProperty');
INSERT INTO  [Language] ([LanKey], [CultureName], [LanValue], [Module], [LanType]) VALUES ('ProductImage@Status', 'zh-CN', '状态', 'ProductImage', 'EntityProperty');
INSERT INTO  [Language] ([LanKey], [CultureName], [LanValue], [Module], [LanType]) VALUES ('ProductImage@Title', 'zh-CN', '标题', 'ProductImage', 'EntityProperty');
INSERT INTO  [Language] ([LanKey], [CultureName], [LanValue], [Module], [LanType]) VALUES ('LanguageEntity@CultureName', 'zh-CN', '语言缩写', 'LanguageEntity', 'EntityProperty');
INSERT INTO  [Language] ([LanKey], [CultureName], [LanValue], [Module], [LanType]) VALUES ('LanguageEntity@LanKey', 'zh-CN', '翻译键', 'LanguageEntity', 'EntityProperty');
INSERT INTO  [Language] ([LanKey], [CultureName], [LanValue], [Module], [LanType]) VALUES ('LanguageEntity@LanType', 'zh-CN', '对象', 'LanguageEntity', 'EntityProperty');
INSERT INTO  [Language] ([LanKey], [CultureName], [LanValue], [Module], [LanType]) VALUES ('LanguageEntity@LanValue', 'zh-CN', '翻译值', 'LanguageEntity', 'EntityProperty');
INSERT INTO  [Language] ([LanKey], [CultureName], [LanValue], [Module], [LanType]) VALUES ('LanguageEntity@Module', 'zh-CN', '模块', 'LanguageEntity', 'EntityProperty');
INSERT INTO  [Language] ([LanKey], [CultureName], [LanValue], [Module], [LanType]) VALUES ('Order@ActionType', 'zh-CN', 'ActionType', 'Order', 'EntityProperty');
INSERT INTO  [Language] ([LanKey], [CultureName], [LanValue], [Module], [LanType]) VALUES ('Order@CompletePayTime', 'zh-CN', '完成支付时间', 'Order', 'EntityProperty');
INSERT INTO  [Language] ([LanKey], [CultureName], [LanValue], [Module], [LanType]) VALUES ('Order@Contact', 'zh-CN', '联系人', 'Order', 'EntityProperty');
INSERT INTO  [Language] ([LanKey], [CultureName], [LanValue], [Module], [LanType]) VALUES ('Order@CreateBy', 'zh-CN', 'CreateBy', 'Order', 'EntityProperty');
INSERT INTO  [Language] ([LanKey], [CultureName], [LanValue], [Module], [LanType]) VALUES ('Order@CreatebyName', 'zh-CN', '创建人', 'Order', 'EntityProperty');
INSERT INTO  [Language] ([LanKey], [CultureName], [LanValue], [Module], [LanType]) VALUES ('Order@CreateDate', 'zh-CN', '创建日期', 'Order', 'EntityProperty');
INSERT INTO  [Language] ([LanKey], [CultureName], [LanValue], [Module], [LanType]) VALUES ('Order@Description', 'zh-CN', '描述', 'Order', 'EntityProperty');
INSERT INTO  [Language] ([LanKey], [CultureName], [LanValue], [Module], [LanType]) VALUES ('Order@ID', 'zh-CN', '订单号', 'Order', 'EntityProperty');
INSERT INTO  [Language] ([LanKey], [CultureName], [LanValue], [Module], [LanType]) VALUES ('Order@LastUpdateBy', 'zh-CN', 'LastUpdateBy', 'Order', 'EntityProperty');
INSERT INTO  [Language] ([LanKey], [CultureName], [LanValue], [Module], [LanType]) VALUES ('Order@LastUpdateByName', 'zh-CN', '更新人', 'Order', 'EntityProperty');
INSERT INTO  [Language] ([LanKey], [CultureName], [LanValue], [Module], [LanType]) VALUES ('Order@LastUpdateDate', 'zh-CN', '更新日期', 'Order', 'EntityProperty');
INSERT INTO  [Language] ([LanKey], [CultureName], [LanValue], [Module], [LanType]) VALUES ('Order@LogisticsCompany', 'zh-CN', '快递公司', 'Order', 'EntityProperty');
INSERT INTO  [Language] ([LanKey], [CultureName], [LanValue], [Module], [LanType]) VALUES ('Order@OrderStatus', 'zh-CN', '订单状态', 'Order', 'EntityProperty');
INSERT INTO  [Language] ([LanKey], [CultureName], [LanValue], [Module], [LanType]) VALUES ('Order@PaymentGateway', 'zh-CN', '支付方式', 'Order', 'EntityProperty');
INSERT INTO  [Language] ([LanKey], [CultureName], [LanValue], [Module], [LanType]) VALUES ('Order@PaymentID', 'zh-CN', '支付ID', 'Order', 'EntityProperty');
INSERT INTO  [Language] ([LanKey], [CultureName], [LanValue], [Module], [LanType]) VALUES ('Order@PayTime', 'zh-CN', '发起支付时间', 'Order', 'EntityProperty');
INSERT INTO  [Language] ([LanKey], [CultureName], [LanValue], [Module], [LanType]) VALUES ('Order@PhoneNumber', 'zh-CN', '电话', 'Order', 'EntityProperty');
INSERT INTO  [Language] ([LanKey], [CultureName], [LanValue], [Module], [LanType]) VALUES ('Order@ShippingAddress', 'zh-CN', '收货地址', 'Order', 'EntityProperty');
INSERT INTO  [Language] ([LanKey], [CultureName], [LanValue], [Module], [LanType]) VALUES ('Order@Status', 'zh-CN', '状态', 'Order', 'EntityProperty');
INSERT INTO  [Language] ([LanKey], [CultureName], [LanValue], [Module], [LanType]) VALUES ('Order@Title', 'zh-CN', '标题', 'Order', 'EntityProperty');
INSERT INTO  [Language] ([LanKey], [CultureName], [LanValue], [Module], [LanType]) VALUES ('Order@Total', 'zh-CN', '总价', 'Order', 'EntityProperty');
INSERT INTO  [Language] ([LanKey], [CultureName], [LanValue], [Module], [LanType]) VALUES ('Order@TrackingNumber', 'zh-CN', '快递单号', 'Order', 'EntityProperty');
INSERT INTO  [Language] ([LanKey], [CultureName], [LanValue], [Module], [LanType]) VALUES ('Order@UserId', 'zh-CN', '登录名', 'Order', 'EntityProperty');

INSERT INTO  [Permission] ([PermissionKey], [RoleId], [Title], [Description], [Module], [Status], [CreateBy], [CreatebyName], [LastUpdateBy], [LastUpdateByName]) VALUES ('ProductCategoryTag_Manage', 1, '管理产品标签', NULL, '产品', NULL, 'admin', 'ZKEASOFT', 'admin', 'ZKEASOFT');
INSERT INTO  [Permission] ([PermissionKey], [RoleId], [Title], [Description], [Module], [Status], [CreateBy], [CreatebyName], [LastUpdateBy], [LastUpdateByName]) VALUES ('ProductCategoryTag_View', 1, '查看产品标签', NULL, '产品', NULL, 'admin', 'ZKEASOFT', 'admin', 'ZKEASOFT');
INSERT INTO  [Permission] ([PermissionKey], [RoleId], [Title], [Description], [Module], [Status], [CreateBy], [CreatebyName], [LastUpdateBy], [LastUpdateByName]) VALUES ('Order_Manage', 1, '管理订单', NULL, '商城', NULL, 'admin', 'ZKEASOFT', 'admin', 'ZKEASOFT');
INSERT INTO  [Permission] ([PermissionKey], [RoleId], [Title], [Description], [Module], [Status], [CreateBy], [CreatebyName], [LastUpdateBy], [LastUpdateByName]) VALUES ('Order_View', 1, '查看订单', NULL, '商城', NULL, 'admin', 'ZKEASOFT', 'admin', 'ZKEASOFT');
