.class Lcom/android/server/am/BatteryStatsService$1;
.super Ljava/lang/Object;
.source "BatteryStatsService.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/BatteryStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/BatteryStatsService;


# direct methods
.method constructor <init>(Lcom/android/server/am/BatteryStatsService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/BatteryStatsService$1;->this$0:Lcom/android/server/am/BatteryStatsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$1;->this$0:Lcom/android/server/am/BatteryStatsService;

    check-cast p2, Landroid/bluetooth/BluetoothHeadset;

    #setter for: Lcom/android/server/am/BatteryStatsService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v0, p2}, Lcom/android/server/am/BatteryStatsService;->access$002(Lcom/android/server/am/BatteryStatsService;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$1;->this$0:Lcom/android/server/am/BatteryStatsService;

    iget-object v1, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$1;->this$0:Lcom/android/server/am/BatteryStatsService;

    #getter for: Lcom/android/server/am/BatteryStatsService;->mBluetoothPendingStats:Z
    invoke-static {v0}, Lcom/android/server/am/BatteryStatsService;->access$100(Lcom/android/server/am/BatteryStatsService;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$1;->this$0:Lcom/android/server/am/BatteryStatsService;

    iget-object v0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->noteBluetoothOnLocked()V

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$1;->this$0:Lcom/android/server/am/BatteryStatsService;

    iget-object v0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService$1;->this$0:Lcom/android/server/am/BatteryStatsService;

    #getter for: Lcom/android/server/am/BatteryStatsService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v2}, Lcom/android/server/am/BatteryStatsService;->access$000(Lcom/android/server/am/BatteryStatsService;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/internal/os/BatteryStatsImpl;->setBtHeadset(Landroid/bluetooth/BluetoothHeadset;)V

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$1;->this$0:Lcom/android/server/am/BatteryStatsService;

    const/4 v2, 0x0

    #setter for: Lcom/android/server/am/BatteryStatsService;->mBluetoothPendingStats:Z
    invoke-static {v0, v2}, Lcom/android/server/am/BatteryStatsService;->access$102(Lcom/android/server/am/BatteryStatsService;Z)Z

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onServiceDisconnected(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$1;->this$0:Lcom/android/server/am/BatteryStatsService;

    const/4 v1, 0x0

    #setter for: Lcom/android/server/am/BatteryStatsService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v0, v1}, Lcom/android/server/am/BatteryStatsService;->access$002(Lcom/android/server/am/BatteryStatsService;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;

    return-void
.end method
