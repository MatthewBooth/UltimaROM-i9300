.class Lcom/android/server/ssrm/PowerSavingMode$PowerSavingModeObserver;
.super Landroid/database/ContentObserver;
.source "PowerSavingMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/PowerSavingMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PowerSavingModeObserver"
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/server/ssrm/PowerSavingMode;


# direct methods
.method constructor <init>(Lcom/android/server/ssrm/PowerSavingMode;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/ssrm/PowerSavingMode$PowerSavingModeObserver;->this$0:Lcom/android/server/ssrm/PowerSavingMode;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/android/server/ssrm/PowerSavingMode$PowerSavingModeObserver;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/ssrm/PowerSavingMode$PowerSavingModeObserver;->this$0:Lcom/android/server/ssrm/PowerSavingMode;

    invoke-virtual {v0}, Lcom/android/server/ssrm/PowerSavingMode;->onSettingChanged()V

    return-void
.end method

.method registerUriByName(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/ssrm/PowerSavingMode$PowerSavingModeObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method
