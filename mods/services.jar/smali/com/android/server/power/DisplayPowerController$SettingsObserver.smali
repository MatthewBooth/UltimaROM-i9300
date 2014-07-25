.class Lcom/android/server/power/DisplayPowerController$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "DisplayPowerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/DisplayPowerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/DisplayPowerController;


# direct methods
.method constructor <init>(Lcom/android/server/power/DisplayPowerController;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/power/DisplayPowerController$SettingsObserver;->this$0:Lcom/android/server/power/DisplayPowerController;
	
	invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method observe()V
    .locals 7

    const/4 v3, -0x1

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController$SettingsObserver;->this$0:Lcom/android/server/power/DisplayPowerController;

    iget-object v4, v1, Lcom/android/server/power/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "system_pref_screen_animation"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V
	
	iget-object v1, p0, Lcom/android/server/power/DisplayPowerController$SettingsObserver;->this$0:Lcom/android/server/power/DisplayPowerController;

    invoke-virtual {v1}, Lcom/android/server/power/DisplayPowerController;->updateSettings()V

    return-void
.end method

.method public onChange(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController$SettingsObserver;->this$0:Lcom/android/server/power/DisplayPowerController;

    invoke-virtual {v0}, Lcom/android/server/power/DisplayPowerController;->updateSettings()V

    return-void
.end method
