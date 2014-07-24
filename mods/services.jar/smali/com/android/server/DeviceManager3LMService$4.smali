.class Lcom/android/server/DeviceManager3LMService$4;
.super Ljava/lang/Object;
.source "DeviceManager3LMService.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DeviceManager3LMService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DeviceManager3LMService;


# direct methods
.method constructor <init>(Lcom/android/server/DeviceManager3LMService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/DeviceManager3LMService$4;->this$0:Lcom/android/server/DeviceManager3LMService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/DeviceManager3LMService$4;->this$0:Lcom/android/server/DeviceManager3LMService;

    check-cast p2, Landroid/bluetooth/BluetoothPan;

    #setter for: Lcom/android/server/DeviceManager3LMService;->mBluetoothPan:Landroid/bluetooth/BluetoothPan;
    invoke-static {v0, p2}, Lcom/android/server/DeviceManager3LMService;->access$702(Lcom/android/server/DeviceManager3LMService;Landroid/bluetooth/BluetoothPan;)Landroid/bluetooth/BluetoothPan;

    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/DeviceManager3LMService$4;->this$0:Lcom/android/server/DeviceManager3LMService;

    const/4 v1, 0x0

    #setter for: Lcom/android/server/DeviceManager3LMService;->mBluetoothPan:Landroid/bluetooth/BluetoothPan;
    invoke-static {v0, v1}, Lcom/android/server/DeviceManager3LMService;->access$702(Lcom/android/server/DeviceManager3LMService;Landroid/bluetooth/BluetoothPan;)Landroid/bluetooth/BluetoothPan;

    return-void
.end method
