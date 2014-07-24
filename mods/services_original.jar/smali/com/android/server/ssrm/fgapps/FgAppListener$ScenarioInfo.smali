.class Lcom/android/server/ssrm/fgapps/FgAppListener$ScenarioInfo;
.super Ljava/lang/Object;
.source "FgAppListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/fgapps/FgAppListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ScenarioInfo"
.end annotation


# instance fields
.field public mSIPVisible:Z

.field public mUsbConnected:Z


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/FgAppListener$ScenarioInfo;->mSIPVisible:Z

    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/FgAppListener$ScenarioInfo;->mUsbConnected:Z

    return-void
.end method
