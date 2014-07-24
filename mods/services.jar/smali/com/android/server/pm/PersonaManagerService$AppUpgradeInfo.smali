.class public Lcom/android/server/pm/PersonaManagerService$AppUpgradeInfo;
.super Ljava/lang/Object;
.source "PersonaManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PersonaManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AppUpgradeInfo"
.end annotation


# instance fields
.field public mAppName:Ljava/lang/String;

.field public mSystemApp:Z

.field final synthetic this$0:Lcom/android/server/pm/PersonaManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PersonaManagerService;Ljava/lang/String;Z)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/pm/PersonaManagerService$AppUpgradeInfo;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/PersonaManagerService$AppUpgradeInfo;->mAppName:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/pm/PersonaManagerService$AppUpgradeInfo;->mSystemApp:Z

    iput-object p2, p0, Lcom/android/server/pm/PersonaManagerService$AppUpgradeInfo;->mAppName:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/android/server/pm/PersonaManagerService$AppUpgradeInfo;->mSystemApp:Z

    return-void
.end method


# virtual methods
.method public dumpState()V
    .locals 3

    const-string v0, "PersonaManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AppUpgradeInfo name:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService$AppUpgradeInfo;->mAppName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isSystem:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/pm/PersonaManagerService$AppUpgradeInfo;->mSystemApp:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
