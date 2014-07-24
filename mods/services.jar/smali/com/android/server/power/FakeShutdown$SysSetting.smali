.class final Lcom/android/server/power/FakeShutdown$SysSetting;
.super Ljava/lang/Object;
.source "FakeShutdown.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/FakeShutdown;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SysSetting"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static backupAll(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x1

    const-string v0, "lockscreen_sounds_enabled"

    const-string v1, "oldLockScreenSoundStatus"

    invoke-static {p0, v0, v1, v3}, Lcom/android/server/power/FakeShutdown$SysSetting;->backupSettingInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    const-string v0, "airplane_mode_on"

    const-string v1, "oldAirplaneStatus"

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/android/server/power/FakeShutdown$SysSetting;->backupSettingInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    const-string v0, "pen_detachment_option"

    const-string v1, "oldSPenDetatchmentOption"

    invoke-static {p0, v0, v1, v3}, Lcom/android/server/power/FakeShutdown$SysSetting;->backupSettingInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    const-string v0, "pen_detachment_notification"

    const-string v1, "oldSPenNotification"

    invoke-static {p0, v0, v1}, Lcom/android/server/power/FakeShutdown$SysSetting;->backupSettingString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static backupSettingInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    invoke-static {p0, p1, p3}, Lcom/android/server/power/FakeShutdown$SysSetting;->get(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    invoke-static {p0, p2, v0}, Lcom/android/server/power/FakeShutdown$SysSetting;->put(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method private static backupSettingString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p0, p1}, Lcom/android/server/power/FakeShutdown$SysSetting;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p2, v0}, Lcom/android/server/power/FakeShutdown$SysSetting;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static get(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getSecure(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static prepareFakeShutdown(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    const-string v0, "airplane_mode_on"

    invoke-static {p0, v0, v1}, Lcom/android/server/power/FakeShutdown$SysSetting;->put(Landroid/content/Context;Ljava/lang/String;I)V

    const-string v0, "pen_detachment_option"

    invoke-static {p0, v0, v1}, Lcom/android/server/power/FakeShutdown$SysSetting;->put(Landroid/content/Context;Ljava/lang/String;I)V

    const-string v0, "pen_detachment_notification"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/server/power/FakeShutdown$SysSetting;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static put(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public static putSecure(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public static putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public static restoreAll(Landroid/content/Context;)V
    .locals 2

    const-string v0, "FakeShutdown"

    const-string v1, "restoreSettings"

    invoke-static {v0, v1}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "lockscreen_sounds_enabled"

    const-string v1, "oldLockScreenSoundStatus"

    invoke-static {p0, v0, v1}, Lcom/android/server/power/FakeShutdown$SysSetting;->restoreSettingInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "airplane_mode_on"

    const-string v1, "oldAirplaneStatus"

    invoke-static {p0, v0, v1}, Lcom/android/server/power/FakeShutdown$SysSetting;->restoreSettingInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "pen_detachment_option"

    const-string v1, "oldSPenDetatchmentOption"

    invoke-static {p0, v0, v1}, Lcom/android/server/power/FakeShutdown$SysSetting;->restoreSettingInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "pen_detachment_notification"

    const-string v1, "oldSPenNotification"

    invoke-static {p0, v0, v1}, Lcom/android/server/power/FakeShutdown$SysSetting;->restoreSettingString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static restoreSettingInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v1, -0x1

    invoke-static {p0, p2, v1}, Lcom/android/server/power/FakeShutdown$SysSetting;->get(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v1, :cond_0

    invoke-static {p0, p1, v0}, Lcom/android/server/power/FakeShutdown$SysSetting;->put(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-static {p0, p2, v1}, Lcom/android/server/power/FakeShutdown$SysSetting;->put(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method private static restoreSettingString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {p0, p2}, Lcom/android/server/power/FakeShutdown$SysSetting;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "DONT CARE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0, p1, v0}, Lcom/android/server/power/FakeShutdown$SysSetting;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "DONT CARE"

    invoke-static {p0, p2, v1}, Lcom/android/server/power/FakeShutdown$SysSetting;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
