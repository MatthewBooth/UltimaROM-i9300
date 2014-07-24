.class Lcom/android/server/am/ActivityManagerService$31;
.super Landroid/app/IProcessObserver$Stub;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$31;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0}, Landroid/app/IProcessObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onForegroundActivitiesChanged(IIZ)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$31;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mApi:Lcom/itsoninc/android/ItsOnOemApi;

    invoke-virtual {v0, p1, p2, p3}, Lcom/itsoninc/android/ItsOnOemApiBase;->onForegroundActivitiesChanged(IIZ)V

    return-void
.end method

.method public onImportanceChanged(III)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$31;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mApi:Lcom/itsoninc/android/ItsOnOemApi;

    invoke-virtual {v0, p1, p2, p3}, Lcom/itsoninc/android/ItsOnOemApiBase;->onImportanceChanged(III)V

    return-void
.end method

.method public onProcessDied(II)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$31;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mApi:Lcom/itsoninc/android/ItsOnOemApi;

    invoke-virtual {v0, p1, p2}, Lcom/itsoninc/android/ItsOnOemApiBase;->onProcessDied(II)V

    return-void
.end method
