USE gfyt_iot;

CREATE TABLE MDP_MngPointConst (
	MDP_MngPoint VARCHAR(100) COMMENT '表别名',
	MPID         VARCHAR(100) COMMENT '管理点ID字段',
	MPName       VARCHAR(100) COMMENT '管理点名称字段',
	MPKind       VARCHAR(100) COMMENT '管理点种类字段',
	MPNo         VARCHAR(100) COMMENT '通过该编号也可以唯一表示该点，该值主要用于和别的系统进行关联',
	DESCRIPTION  VARCHAR(100) COMMENT '描述信息字段',
	BelongNodeID VARCHAR(100) COMMENT '所属管理节点ID字段',
	NodeNumber   VARCHAR(100) COMMENT '在管理节点下的序号',
	MngCode      VARCHAR(100) COMMENT '管理码字段',
	TagVal       VARCHAR(100) COMMENT '标签值',
	Enabled      VARCHAR(100) COMMENT '是否启用',
	PMU          VARCHAR(100) COMMENT '权限管理单元',
	IsVirtual    VARCHAR(100) COMMENT '权限管理单元',
	UpdateTime   VARCHAR(100) COMMENT '创建修改时间字段'
) COMMENT '管理点表';

CREATE TABLE MDP_DeviceConst (
	MDP_Device     VARCHAR(100) COMMENT '表别名',
	DevID          VARCHAR(100) COMMENT '设备ID字段',
	DevName        VARCHAR(100) COMMENT '设备名称字段',
	Enabled        VARCHAR(100) COMMENT '设备是否启用字段',
	DevKind        VARCHAR(100) COMMENT '设备种类字段',
	Offline        VARCHAR(100) COMMENT '设备是否脱机工作字段',
	IsAuxiDev      VARCHAR(100) COMMENT '是辅助设备',
	Description    VARCHAR(100) COMMENT '描述信息字段',
	BelongNodeID   VARCHAR(100) COMMENT '所属设备管理节点ID，表示该设备的父管理节点的ID。',
	MngCode        VARCHAR(100) COMMENT '管理码',
	NodeNumber     VARCHAR(100) COMMENT '在管理节点下的序号',
	TagVal         VARCHAR(100) COMMENT '// 标签值',
	DriverID       VARCHAR(100) COMMENT '设备驱动ID，表示设备使用的驱动插件的ID',
	DriverPluginID VARCHAR(100) COMMENT '设备使用的驱动插件的插件ID字段',
	CommLink1      VARCHAR(100) COMMENT '使用的通讯链路ID（主）字段',
	CommLink2      VARCHAR(100) COMMENT '使用的通讯链路ID（从1）字段',
	CommLink3      VARCHAR(100) COMMENT '使用的通讯链路ID（从2）字段',
	CommLink4      VARCHAR(100) COMMENT '使用的通讯链路ID（从3）字段',
	SchemeID       VARCHAR(100) COMMENT '使用的配置方案，0表示使用自定义配置。',
	DevCommParam   VARCHAR(100) COMMENT '设备自定义通讯参数字段',
	UpdateTime     VARCHAR(100) COMMENT '创建修改时间字段'
) COMMENT '设备表';

CREATE TABLE MDP_MPDeviceConst (
	MDP_MPDevice VARCHAR(100),
	MPID         VARCHAR(100) COMMENT '管理点ID字段',
	MngCode_MP   VARCHAR(100) COMMENT '管理点管理码字段',
	MPPropertyID VARCHAR(100) COMMENT '管理点属性ID字段',
	IsOut        VARCHAR(100) COMMENT '是输入还是输出，false：输入，true：输出',
	DevID        VARCHAR(100) COMMENT '绑定的设备标识ID字段',
	MngCode_Dev  VARCHAR(100) COMMENT '绑定设备管理码字段',
	SubDeviceID  VARCHAR(100) COMMENT '绑定的设备的子设备ID字段',
	SyncExecMode VARCHAR(100) COMMENT '使用同步执行模式（true:同步执行模式、False:异步执行模式，如果绑定的子设备要求返回执行结果，就会强制使用同步执行模式）'
) COMMENT '管理点与子设备绑定信息表';



CREATE TABLE MDP_SubDeviceConst (
	MDP_SubDevice   VARCHAR(100) COMMENT '表别名',
	DevID           VARCHAR(100) COMMENT '设备ID字段',
	MngCode         VARCHAR(100) COMMENT '管理码',
	SubDeviceID     VARCHAR(100) COMMENT '子设备ID字段',
	ItemCHName      VARCHAR(100) COMMENT '点位（子设备）中文名称字段',
	DataType        VARCHAR(100) COMMENT '子设备的数据类型字段',
	AccessRights    VARCHAR(100) COMMENT '存取权限',
	Write_ExecMode  VARCHAR(100) COMMENT '写操作或命令执行模式',
	GatherControl   VARCHAR(100) COMMENT '是否支持采集控制（只对点位类型为只读和读写有效，如果支持，可以通过接口来配置当前是否采集点位值）',
	DataObjectID    VARCHAR(100) COMMENT '对象标识：如果是数据类型是对象，该GUID为对象数据类型的唯一标识，如果是命令，该GUID为命令参数对象数据类型的唯一标识。对于其它数据类型，该项不起作用,直接填写Guid.Empty。
         ',
	RetDataObjectID VARCHAR(100) COMMENT '命令返回对象标识：如果是存取权限是命令，该GUID为命令返回值对象数据类型的唯一标识。对于其它数据类型，该项不起作用,直接填写Guid.Empty。
         ',
	ValueRange      VARCHAR(100) COMMENT '取值范围',
	ValueNamePairs  VARCHAR(100) COMMENT '值含义对照表',
	SubDerviceTag   VARCHAR(100) COMMENT '子设备标识',
	UpdateTime      VARCHAR(100) COMMENT '创建修改时间字段'
) COMMENT '子设备列表表';



CREATE TABLE MDP_DeviceConfigConst (
	MDP_DeviceConfig VARCHAR(100) COMMENT '表别名',
	DevID            VARCHAR(100) COMMENT '设备ID字段',
	MngCode          VARCHAR(100) COMMENT '管理码',
	ConfigParm       VARCHAR(100) COMMENT '配置参数字段',
	CfgInfo          VARCHAR(100) COMMENT '控制设备个性配置参数，每个设备需要的个性化配置信息',
	SetupSchemeID    VARCHAR(100) COMMENT '控制设备设置方案ID，0表示自定义',
	SetupDataImg     VARCHAR(100) COMMENT '控制设备设置影像信息，null表示缺省值，在设置方案ID为自定义时该值才有效',
	MngDataImg       VARCHAR(100) COMMENT '控制设备管理信息影像',
	UpdateTime       VARCHAR(100) COMMENT '创建修改时间字段'
) COMMENT '设备配置表';