.class public Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;
.super Ljava/lang/Object;
.source "KnoxVpnConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants$ProfileState;
    }
.end annotation


# static fields
.field public static final ACTION_BIND_RESULT:Ljava/lang/String; = "com.samsung.android.mdm.VPN_BIND_RESULT"

.field public static final ACTION_MIGRATION_COMPLETE:Ljava/lang/String; = "com.sec.knox.migrationagent.MIGRATION_COMPLETE"

.field public static final ACTION_MIGRATION_FAIL:Ljava/lang/String; = "com.sec.enterprise.knox.VPN_MIGRAION_FAIL"

.field public static final ACTION_MIGRATION_RETRY:Ljava/lang/String; = "com.sec.enterprise.knox.VPN_MIGRAION_RETRY"

.field public static final ACTION_MIGRATION_START:Ljava/lang/String; = "com.sec.knox.migrationagent.START_VPN_MIGRATION"

.field public static final ACTION_VPN_KNOX_SERVICE:Ljava/lang/String; = "com.sec.enterprise.mdm.services.vpn.KNOX_VPN"

.field public static final ACTION_VPN_MIGRATION_COMPLETE:Ljava/lang/String; = "com.sec.enterprise.knox.VPN_MIGRATION_COMPLETE"

.field public static final ANYCONNECT_BIND_ACTION:Ljava/lang/String; = "com.cisco.anyconnect.vpn.android.avf.BIND_SERVICE"

.field public static final BIND_CID:Ljava/lang/String; = "vpn_bind_cid"

.field public static final BIND_STATUS:Ljava/lang/String; = "vpn_bind_status"

.field public static final BIND_VENDOR:Ljava/lang/String; = "vpn_bind_vendor"

.field public static BLOCK_APP_TRAFFIC:Ljava/lang/String; = null

.field public static final CISCO_APPLICATION_NAME:Ljava/lang/String; = "com.cisco.anyconnect.vpn.android.avf"

.field public static final CISCO_PROXY_APPLICATION_NAME:Ljava/lang/String; = "com.sec.enterprise.knox.cisco.anyconnect.vpn.service"

.field public static final CONTAINER_PREFIX:Ljava/lang/String; = "sec_container_"

.field public static final CONTAINER_REMOVAL_INTENT:Ljava/lang/String; = "enterprise.container.uninstalled"

.field public static final CONTAINER_VPN_PERMISSION:Ljava/lang/String; = "com.sec.enterprise.knox.KNOX_CONTAINER_VPN"

.field public static final DNS_CONF_FILE_PATH:Ljava/lang/String; = "/data/system/dnsproperties.ini"

.field public static final EXTRA_ADMIN_PKG_NAME:Ljava/lang/String; = "admin_package_name"

.field public static final EXTRA_CONTAINER_PKG_COUNT:Ljava/lang/String; = "knox_1_apk_count"

.field public static final EXTRA_NEW_ADMIN_ID:Ljava/lang/String; = "admin_uid"

.field public static final EXTRA_NEW_CONTAINER_ID:Ljava/lang/String; = "knox_2_container_id"

.field public static final EXTRA_OLD_ADMIN_ID:Ljava/lang/String; = "admin_uid"

.field public static final EXTRA_OLD_CONTAINER_ID:Ljava/lang/String; = "knox_1_container_id"

.field public static final INVALID_CONTAINER_ID:I = 0x0

.field public static final JSON_TAG_CHAIN:Ljava/lang/String; = "chain"

.field public static final JSON_TAG_CHAINENABLED:Ljava/lang/String; = "chaining_enabled"

.field public static final JSON_TAG_KNOX:Ljava/lang/String; = "knox"

.field public static final JSON_TAG_KNOX_PARENT:Ljava/lang/String; = "KNOX_VPN_PARAMETERS"

.field public static final JSON_TAG_PROFILE:Ljava/lang/String; = "profile_attribute"

.field public static final JSON_TAG_PROFILENAME:Ljava/lang/String; = "profileName"

.field public static final JSON_TAG_PROTOCOLTYPE:Ljava/lang/String; = "vpn_type"

.field public static final JSON_TAG_ROUTETYPE:Ljava/lang/String; = "vpn_route_type"

.field public static final KNOX10_CONTAINER_ID:I = 0x1

.field public static final KNOX20_MIN_CONTAINER_ID:I = 0x64

.field public static final KNOX_FW:Ljava/lang/String; = "Knox_Framework"

.field public static KNOX_VPN:Ljava/lang/String; = null

.field public static final MAX_DNS_SERVERS:I = 0x4

.field public static final MIGRATION_AGENT_FIXED_VERSION:Ljava/lang/String; = "4.0"

.field public static final MIGRATION_AGENT_PACKAGE_NAME:Ljava/lang/String; = "com.sec.knox.containeragent"

.field public static final MIGRATION_DONE:I = 0x1

.field public static final MIGRATION_ERROR:Ljava/lang/String; = "vpn_migration_error"

.field public static final MIGRATION_FAIL:I = 0x3

.field public static final MIGRATION_INVALID:I = 0x5

.field public static final MIGRATION_IN_PROCESSING:I = 0x2

.field public static final MIGRATION_LIMIT_TRYING:I = 0x3

.field public static final MIGRATION_NEED:I = 0x0

.field public static final MIGRATION_NOT_NEED:I = 0x4

.field public static final MIGRATION_STATUS:Ljava/lang/String; = "vpn_migration_status"

.field public static final PACKAGE_DELIMETER:Ljava/lang/String; = "_"

.field public static final PERMISSION_MIGRATION_RECEIVE:Ljava/lang/String; = "com.sec.knox.migrationagent.permission.RECEIVE_MIGRATION"

.field public static PER_APP_VPN:I = 0x0

.field public static final PREFIX_MIGRATION_LOCATION:Ljava/lang/String; = "/data/system/knoxvpn_"

.field public static final PROFILENAME_MAX_LENGTH:I = 0x80

.field public static PROFILE_ACTIVATED:I = 0x0

.field public static PROFILE_DEACTIVATED:I = 0x0

.field public static SYSTEM_VPN:I = 0x0

.field public static final TUN_INTERFACE_DOWN:I = 0x2

.field public static final TUN_INTERFACE_UP:I = 0x1

.field public static final VENDOR_BIND_ACTION:Ljava/lang/String; = ".BIND_SERVICE"

.field public static final VPN_INTERFACE_STATUS:Ljava/lang/String; = "com.sec.enterprise.mdm.services.vpn.INTERFACE_STATUS"

.field public static final VPN_PERMISSION:Ljava/lang/String; = "com.sec.enterprise.knox.KNOX_GENERIC_VPN"

.field public static final VPN_PROP_MIGRATION_VERSION:Ljava/lang/String; = "net.vpn.migration.version"

.field public static VPN_RETURN_BOOL_ERROR:Z

.field public static VPN_RETURN_INT_ERROR:I

.field public static VPN_RETURN_INT_SUCCESS:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    const-string v0, "knoxvpn"

    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->KNOX_VPN:Ljava/lang/String;

    sput v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->SYSTEM_VPN:I

    sput v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->PER_APP_VPN:I

    const/4 v0, -0x1

    sput v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->VPN_RETURN_INT_ERROR:I

    sput v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->VPN_RETURN_INT_SUCCESS:I

    sput v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->PROFILE_DEACTIVATED:I

    sput v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->PROFILE_ACTIVATED:I

    sput-boolean v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->VPN_RETURN_BOOL_ERROR:Z

    const-string v0, "block_traffic"

    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->BLOCK_APP_TRAFFIC:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
