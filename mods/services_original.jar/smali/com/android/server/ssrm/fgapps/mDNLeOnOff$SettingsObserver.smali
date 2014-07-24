.class Lcom/android/server/ssrm/fgapps/mDNLeOnOff$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "mDNLeOnOff.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/fgapps/mDNLeOnOff;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ssrm/fgapps/mDNLeOnOff;


# direct methods
.method constructor <init>(Lcom/android/server/ssrm/fgapps/mDNLeOnOff;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/ssrm/fgapps/mDNLeOnOff$SettingsObserver;->this$0:Lcom/android/server/ssrm/fgapps/mDNLeOnOff;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method deregister()V
    .locals 2

    sget-object v1, Lcom/android/server/ssrm/fgapps/FgAppListener;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onChange(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/mDNLeOnOff$SettingsObserver;->this$0:Lcom/android/server/ssrm/fgapps/mDNLeOnOff;

    #calls: Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->retrieveSettings()V
    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->access$000(Lcom/android/server/ssrm/fgapps/mDNLeOnOff;)V

    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/mDNLeOnOff$SettingsObserver;->this$0:Lcom/android/server/ssrm/fgapps/mDNLeOnOff;

    invoke-virtual {v0}, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->updatemDNIe()V

    return-void
.end method

.method register()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, -0x2

    sget-object v1, Lcom/android/server/ssrm/fgapps/FgAppListener;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "reading_mode_app_list"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v1, "e_reading_display_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method
