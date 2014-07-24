.class public Lcom/android/server/ssrm/fgapps/tsp/GlobeMode;
.super Lcom/android/server/ssrm/fgapps/FgAppListener;
.source "GlobeMode.java"

# interfaces
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$BootCompleteCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ssrm/fgapps/tsp/GlobeMode$TouchSensitivityObserver;
    }
.end annotation


# instance fields
.field public TAG:Ljava/lang/String;

.field mObserver:Lcom/android/server/ssrm/fgapps/tsp/GlobeMode$TouchSensitivityObserver;

.field mResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/server/ssrm/fgapps/FgAppListener;-><init>()V

    const-string v0, "SSRMv2:TSP:GloveMode"

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/tsp/GlobeMode;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onBootComplete()V
    .locals 5

    new-instance v0, Lcom/android/server/ssrm/fgapps/tsp/GlobeMode$TouchSensitivityObserver;

    invoke-direct {v0, p0}, Lcom/android/server/ssrm/fgapps/tsp/GlobeMode$TouchSensitivityObserver;-><init>(Lcom/android/server/ssrm/fgapps/tsp/GlobeMode;)V

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/tsp/GlobeMode;->mObserver:Lcom/android/server/ssrm/fgapps/tsp/GlobeMode$TouchSensitivityObserver;

    sget-object v0, Lcom/android/server/ssrm/fgapps/tsp/GlobeMode;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/tsp/GlobeMode;->mResolver:Landroid/content/ContentResolver;

    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/tsp/GlobeMode;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "auto_adjust_touch"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/ssrm/fgapps/tsp/GlobeMode;->mObserver:Lcom/android/server/ssrm/fgapps/tsp/GlobeMode$TouchSensitivityObserver;

    const/4 v4, -0x2

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/tsp/GlobeMode;->mObserver:Lcom/android/server/ssrm/fgapps/tsp/GlobeMode$TouchSensitivityObserver;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/ssrm/fgapps/tsp/GlobeMode$TouchSensitivityObserver;->onChange(Z)V

    return-void
.end method
