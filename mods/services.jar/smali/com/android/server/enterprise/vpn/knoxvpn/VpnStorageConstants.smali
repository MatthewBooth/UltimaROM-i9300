.class public Lcom/android/server/enterprise/vpn/knoxvpn/VpnStorageConstants;
.super Ljava/lang/Object;
.source "VpnStorageConstants.java"


# static fields
.field public static final ADMIN_ID:Ljava/lang/String; = "adminID"

.field public static final ADMIN_TABLE:Ljava/lang/String; = "ADMIN"

.field public static final ADMIN_UID:Ljava/lang/String; = "adminUid"

.field public static final CONTAINER_ID:Ljava/lang/String; = "containerID"

.field public static final DEFAULT_DATABASE_FILE:Ljava/lang/String; = "/data/system/knoxvpn/databases/knoxvpn.db"

.field public static final DEFAULT_DATABASE_NAME:Ljava/lang/String; = "knoxvpn.db"

.field public static final DEFAULT_DATABASE_PATH:Ljava/lang/String; = "/data/system/knoxvpn/databases/"

.field public static final DEFAULT_DATABASE_VERSION:I = 0x2

.field public static final DEFAULT_TYPE:I = 0x1

.field public static final DEVICE_CONTAINER_ID:I = 0x0

.field public static final ENTERPRISE_VPN_ACTIVATE_STATE:Ljava/lang/String; = "activateState"

.field public static final ENTERPRISE_VPN_APPLICATION_PACKAGE_NAME:Ljava/lang/String; = "packageName"

.field public static final ENTERPRISE_VPN_CHAINING_ENABLED:Ljava/lang/String; = "chainingEnabled"

.field public static final ENTERPRISE_VPN_CID_APPLICATION:Ljava/lang/String; = "packageCid"

.field public static final ENTERPRISE_VPN_CONTAINER_STATE:Ljava/lang/String; = "containerVpnState"

.field public static final ENTERPRISE_VPN_PACKAGE_TABLE:Ljava/lang/String; = "VpnPackageInfo"

.field public static final ENTERPRISE_VPN_PROFILE:Ljava/lang/String; = "profileName"

.field public static final ENTERPRISE_VPN_PROFILE_TABLE:Ljava/lang/String; = "VpnProfileInfo"

.field public static final ENTERPRISE_VPN_PROTOCOL_TYPE:Ljava/lang/String; = "protocolType"

.field public static final ENTERPRISE_VPN_ROUTE_TYPE:Ljava/lang/String; = "defaultRoute"

.field public static final ENTERPRISE_VPN_SERVICE_TYPE:Ljava/lang/String; = "vpnServiceType"

.field public static final ENTERPRISE_VPN_UID_APPLICATION:Ljava/lang/String; = "packageUid"

.field public static final ENTERPRISE_VPN_VENDOR_PACKAGE_NAME:Ljava/lang/String; = "vendorName"

.field public static final INVALID_ADMIN_LUID:J = -0x1L

.field public static final INVALID_CONTAINER_ID:I = -0x1

.field public static final PERSONA_ID:Ljava/lang/String; = "personaId"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDbName(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const-string v0, "/data/system/knoxvpn/databases/knoxvpn.db"

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "/data/system/knoxvpn/databases/knoxvpn.db"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static getDbVersion(I)I
    .locals 1

    const/4 v0, 0x2

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
