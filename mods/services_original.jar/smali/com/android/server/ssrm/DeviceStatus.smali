.class public Lcom/android/server/ssrm/DeviceStatus;
.super Ljava/lang/Object;
.source "DeviceStatus.java"


# static fields
.field private static sAcConnected:Z

.field private static sBatteyRemaining:I

.field private static sBatteyTemperature:I

.field public static sEmergencyMode:Z

.field public static sKnoxMode:Z

.field private static sPowerConnected:Z

.field private static sPowerSavingMode:Z

.field public static sPowerSavingModeLimitDisplay:Z

.field public static sPowerSavingModeLimitPerformance:Z

.field public static sUltraPowerSavingMode:Z

.field private static sUsbConnected:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/ssrm/DeviceStatus;->sPowerSavingMode:Z

    sput-boolean v0, Lcom/android/server/ssrm/DeviceStatus;->sPowerSavingModeLimitPerformance:Z

    sput-boolean v0, Lcom/android/server/ssrm/DeviceStatus;->sPowerSavingModeLimitDisplay:Z

    sput-boolean v0, Lcom/android/server/ssrm/DeviceStatus;->sUltraPowerSavingMode:Z

    sput-boolean v0, Lcom/android/server/ssrm/DeviceStatus;->sEmergencyMode:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBatteryRemaining()I
    .locals 1

    sget v0, Lcom/android/server/ssrm/DeviceStatus;->sBatteyRemaining:I

    return v0
.end method

.method public static getBatteryTemperature()I
    .locals 1

    sget v0, Lcom/android/server/ssrm/DeviceStatus;->sBatteyTemperature:I

    return v0
.end method

.method public static isAcConnected()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/ssrm/DeviceStatus;->sAcConnected:Z

    return v0
.end method

.method public static isEmergencyMode()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/ssrm/DeviceStatus;->sEmergencyMode:Z

    return v0
.end method

.method public static isKnoxMode()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/ssrm/DeviceStatus;->sKnoxMode:Z

    return v0
.end method

.method public static isPowerConnected()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/ssrm/DeviceStatus;->sPowerConnected:Z

    return v0
.end method

.method public static isPowerSavingMode()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/ssrm/DeviceStatus;->sPowerSavingMode:Z

    return v0
.end method

.method public static isPowerSavingModeLimitDisplay()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/ssrm/DeviceStatus;->sPowerSavingMode:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/server/ssrm/DeviceStatus;->sPowerSavingModeLimitDisplay:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPowerSavingModeLimitPerformance()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/ssrm/DeviceStatus;->sPowerSavingMode:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/server/ssrm/DeviceStatus;->sPowerSavingModeLimitPerformance:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isUltraPowerSavingMode()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/ssrm/DeviceStatus;->sUltraPowerSavingMode:Z

    return v0
.end method

.method public static isUsbConnected()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/ssrm/DeviceStatus;->sUsbConnected:Z

    return v0
.end method

.method public static setAcConnected(Z)V
    .locals 0

    sput-boolean p0, Lcom/android/server/ssrm/DeviceStatus;->sAcConnected:Z

    return-void
.end method

.method public static setBatteryRemaining(I)V
    .locals 0

    sput p0, Lcom/android/server/ssrm/DeviceStatus;->sBatteyRemaining:I

    return-void
.end method

.method public static setBatteryTemperature(I)V
    .locals 0

    sput p0, Lcom/android/server/ssrm/DeviceStatus;->sBatteyTemperature:I

    return-void
.end method

.method public static setPowerConnected(Z)V
    .locals 0

    sput-boolean p0, Lcom/android/server/ssrm/DeviceStatus;->sPowerConnected:Z

    return-void
.end method

.method public static setPowerSavingMode(Z)V
    .locals 0

    sput-boolean p0, Lcom/android/server/ssrm/DeviceStatus;->sPowerSavingMode:Z

    return-void
.end method

.method public static setUsbConnected(Z)V
    .locals 0

    sput-boolean p0, Lcom/android/server/ssrm/DeviceStatus;->sUsbConnected:Z

    return-void
.end method
