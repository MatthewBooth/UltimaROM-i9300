.class public Lcom/android/server/TimaServiceEventReceiver;
.super Landroid/content/BroadcastReceiver;
.source "TimaServiceEventReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TimaServiceEventReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/TimaService;->iBootCompleted:Z

    const-string v0, "TimaServiceEventReceiver"

    const-string v1, "TimaServiceEventReceiver : onReceive"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
