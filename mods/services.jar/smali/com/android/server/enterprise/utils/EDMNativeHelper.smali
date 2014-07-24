.class public Lcom/android/server/enterprise/utils/EDMNativeHelper;
.super Ljava/lang/Object;
.source "EDMNativeHelper.java"


# static fields
.field public static final AVRCP_RESTRICTION_INTENT:I = 0x3

.field public static final CAMERA_RESTRICTION_INTENT:I = 0x1

.field public static final MIC_RESTRICTION_INTENT:I = 0x2

.field public static TAG:Ljava/lang/String;

.field public static mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "EDMNativeHelper"

    sput-object v0, Lcom/android/server/enterprise/utils/EDMNativeHelper;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/enterprise/utils/EDMNativeHelper;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initService(Landroid/content/Context;)V
    .locals 2

    sput-object p0, Lcom/android/server/enterprise/utils/EDMNativeHelper;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/enterprise/utils/EDMNativeHelper$1;

    invoke-direct {v1}, Lcom/android/server/enterprise/utils/EDMNativeHelper$1;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static isAVRCPProfileEnabled()Z
    .locals 3

    const/4 v1, 0x1

    const-string v2, "bluetooth_policy"

    invoke-static {v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;

    if-eqz v0, :cond_0

    const/16 v2, 0x10

    invoke-virtual {v0, v2, v1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isProfileEnabledInternal(IZ)Z

    move-result v1

    :cond_0
    return v1
.end method

.method public static isAuditLogEnabled()Z
    .locals 2

    const-string v1, "auditlog"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/auditlog/AuditLogService;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/AuditLogService;->isAuditServiceRunning()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isBTOutgoingCallEnabled()Z
    .locals 3

    const/4 v1, 0x1

    const-string v2, "bluetooth_policy"

    invoke-static {v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isOutgoingCallsAllowed(Z)Z

    move-result v1

    :cond_0
    return v1
.end method

.method public static isCameraEnabled(I)Z
    .locals 6

    const/4 v3, 0x1

    const-string v4, "restriction_policy"

    invoke-static {v4}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    if-eqz v2, :cond_1

    new-instance v4, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v4, p0}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    invoke-virtual {v2, v4, v3}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isCameraEnabledEx(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    sget-object v4, Lcom/android/server/enterprise/utils/EDMNativeHelper;->mContext:Landroid/content/Context;

    const-string v5, "device_policy"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    if-eqz v1, :cond_0

    const/4 v4, 0x0

    invoke-virtual {v1, v4, p0}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabledWithUID(Landroid/content/ComponentName;I)Z

    move-result v4

    if-nez v4, :cond_2

    move v0, v3

    :goto_1
    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static isMicrophoneEnabled(I)Z
    .locals 4

    const/4 v0, 0x1

    const-string v2, "restriction_policy"

    invoke-static {v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    sget-object v2, Lcom/android/server/enterprise/utils/EDMNativeHelper;->TAG:Ljava/lang/String;

    const-string v3, "isMicrophoneEnabled : get policy"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_0

    sget-object v2, Lcom/android/server/enterprise/utils/EDMNativeHelper;->TAG:Ljava/lang/String;

    const-string v3, "isMicrophoneEnabled : get policy success call policy.isMicrophoneEnabled"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v2, p0}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isMicrophoneEnabled(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v0

    :cond_0
    return v0
.end method

.method public static isScreenCaptureEnabled()Z
    .locals 4

    const/4 v1, 0x1

    const-string v2, "restriction_policy"

    invoke-static {v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    if-eqz v0, :cond_0

    new-instance v2, Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-direct {v2, v3}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v2, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isScreenCaptureEnabledEx(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v1

    :cond_0
    return v1
.end method

.method public static nativeLogger(IIIILjava/lang/String;[B)V
    .locals 10

    :try_start_0
    new-instance v9, Ljava/lang/String;

    const-string v0, "UTF-8"

    invoke-direct {v9, p5, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-string v0, "\\n"

    invoke-virtual {v9, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    const/4 v7, 0x0

    :goto_0
    array-length v0, v8

    if-ge v7, v0, :cond_0

    const/4 v2, 0x1

    aget-object v5, v8, v7

    move v0, p0

    move v1, p1

    move v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :catch_0
    move-exception v6

    sget-object v0, Lcom/android/server/enterprise/utils/EDMNativeHelper;->TAG:Ljava/lang/String;

    const-string v1, "Unsupported conversion"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static nativeLogger(IIZILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static/range {p0 .. p5}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static sendIntent(I)V
    .locals 2

    sget-object v1, Lcom/android/server/enterprise/utils/EDMNativeHelper;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    const/4 v0, -0x1

    packed-switch p0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const v0, 0x1040292

    :goto_1
    invoke-static {v0}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    goto :goto_0

    :pswitch_1
    const v0, 0x1040293

    goto :goto_1

    :pswitch_2
    const v0, 0x10402de

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static native setAuditEnabled(Z)V
.end method
