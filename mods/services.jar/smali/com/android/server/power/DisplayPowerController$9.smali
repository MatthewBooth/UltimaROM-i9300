.class Lcom/android/server/power/DisplayPowerController$9;
.super Ljava/lang/Object;
.source "DisplayPowerController.java"

# interfaces
.implements Lcom/android/server/TwilightService$TwilightListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/DisplayPowerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/DisplayPowerController;


# direct methods
.method constructor <init>(Lcom/android/server/power/DisplayPowerController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/power/DisplayPowerController$9;->this$0:Lcom/android/server/power/DisplayPowerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTwilightStateChanged()V
    .locals 2

    const-string v0, "DisplayPowerController"

    const-string v1, "[api] onTwilightStateChanged"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController$9;->this$0:Lcom/android/server/power/DisplayPowerController;

    const/4 v1, 0x1

    #setter for: Lcom/android/server/power/DisplayPowerController;->mTwilightChanged:Z
    invoke-static {v0, v1}, Lcom/android/server/power/DisplayPowerController;->access$1702(Lcom/android/server/power/DisplayPowerController;Z)Z

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController$9;->this$0:Lcom/android/server/power/DisplayPowerController;

    #calls: Lcom/android/server/power/DisplayPowerController;->updatePowerState()V
    invoke-static {v0}, Lcom/android/server/power/DisplayPowerController;->access$400(Lcom/android/server/power/DisplayPowerController;)V

    return-void
.end method
