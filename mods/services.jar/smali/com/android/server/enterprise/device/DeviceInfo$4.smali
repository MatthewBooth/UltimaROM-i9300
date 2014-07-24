.class Lcom/android/server/enterprise/device/DeviceInfo$4;
.super Landroid/telephony/PhoneStateListener;
.source "DeviceInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/device/DeviceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/device/DeviceInfo;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/device/DeviceInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/device/DeviceInfo$4;->this$0:Lcom/android/server/enterprise/device/DeviceInfo;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataConnectionStateChanged(II)V
    .locals 4

    const-wide/16 v2, 0x0

    invoke-super {p0, p1, p2}, Landroid/telephony/PhoneStateListener;->onDataConnectionStateChanged(II)V

    const/4 v0, 0x2

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/device/DeviceInfo$4;->this$0:Lcom/android/server/enterprise/device/DeviceInfo;

    const/4 v1, 0x1

    #setter for: Lcom/android/server/enterprise/device/DeviceInfo;->mDataCallConnected:Z
    invoke-static {v0, v1}, Lcom/android/server/enterprise/device/DeviceInfo;->access$902(Lcom/android/server/enterprise/device/DeviceInfo;Z)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/device/DeviceInfo$4;->this$0:Lcom/android/server/enterprise/device/DeviceInfo;

    const/4 v1, 0x0

    #setter for: Lcom/android/server/enterprise/device/DeviceInfo;->mDataCallConnected:Z
    invoke-static {v0, v1}, Lcom/android/server/enterprise/device/DeviceInfo;->access$902(Lcom/android/server/enterprise/device/DeviceInfo;Z)Z

    iget-object v0, p0, Lcom/android/server/enterprise/device/DeviceInfo$4;->this$0:Lcom/android/server/enterprise/device/DeviceInfo;

    #setter for: Lcom/android/server/enterprise/device/DeviceInfo;->mDataCallLogLastTime:J
    invoke-static {v0, v2, v3}, Lcom/android/server/enterprise/device/DeviceInfo;->access$1002(Lcom/android/server/enterprise/device/DeviceInfo;J)J

    iget-object v0, p0, Lcom/android/server/enterprise/device/DeviceInfo$4;->this$0:Lcom/android/server/enterprise/device/DeviceInfo;

    #setter for: Lcom/android/server/enterprise/device/DeviceInfo;->mDataCallLogLastValue:J
    invoke-static {v0, v2, v3}, Lcom/android/server/enterprise/device/DeviceInfo;->access$1102(Lcom/android/server/enterprise/device/DeviceInfo;J)J

    goto :goto_0
.end method
