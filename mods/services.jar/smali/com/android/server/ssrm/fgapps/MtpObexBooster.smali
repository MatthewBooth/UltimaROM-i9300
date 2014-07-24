.class public final Lcom/android/server/ssrm/fgapps/MtpObexBooster;
.super Lcom/android/server/ssrm/fgapps/FgAppListener;
.source "MtpObexBooster.java"

# interfaces
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$BootCompleteCallback;
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$FgAppChangedCallback;
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$StatusNotificationCallback;
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$UsbConnectionCallback;


# static fields
.field static final TAG:Ljava/lang/String; = "SSRMv2:MtpObexBooster"


# instance fields
.field mBusFreqLockHelper:Landroid/os/DVFSHelper;

.field mCPUMinFreqLockHelper:Landroid/os/DVFSHelper;

.field mCoreNumLockHelper:Landroid/os/DVFSHelper;

.field mLockAcquired:Z

.field mMtpTransferOn:Z

.field mObexTransferOn:Z

.field mUsb30Enabled:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/server/ssrm/fgapps/FgAppListener;-><init>()V

    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/MtpObexBooster;->mMtpTransferOn:Z

    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/MtpObexBooster;->mObexTransferOn:Z

    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/MtpObexBooster;->mLockAcquired:Z

    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/MtpObexBooster;->mUsb30Enabled:Z

    return-void
.end method


# virtual methods
.method enableDBurstMode(Z)V
    .locals 6

    const-string v3, "SSRMv2:MtpObexBooster"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "enableDBurstMode:: enable = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/ssrm/fgapps/MtpObexBooster;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "/sys/block/mmcblk0/bkops_en"

    const/16 v1, 0x40

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const-string v3, "SSRMv2:MtpObexBooster"

    const-string v4, "/sys/block/mmcblk0/bkops_en"

    const-string v5, "64"

    invoke-static {v3, v4, v5}, Lcom/android/server/ssrm/SSRMUtil;->writeSysfs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v3, "SSRMv2:MtpObexBooster"

    const-string v4, "/sys/block/mmcblk0/bkops_en"

    const-string v5, "0"

    invoke-static {v3, v4, v5}, Lcom/android/server/ssrm/SSRMUtil;->writeSysfs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onBootComplete()V
    .locals 10

    const/4 v9, 0x0

    const-wide/16 v4, 0x0

    const v6, 0x13d620

    new-instance v0, Landroid/os/DVFSHelper;

    sget-object v1, Lcom/android/server/ssrm/fgapps/MtpObexBooster;->mContext:Landroid/content/Context;

    const-string v2, "MTP_BOOSTER"

    const/16 v3, 0xc

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/MtpObexBooster;->mCPUMinFreqLockHelper:Landroid/os/DVFSHelper;

    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/MtpObexBooster;->mCPUMinFreqLockHelper:Landroid/os/DVFSHelper;

    const-string v1, "CPU"

    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/MtpObexBooster;->mCPUMinFreqLockHelper:Landroid/os/DVFSHelper;

    const v3, 0x13d620

    invoke-virtual {v2, v3}, Landroid/os/DVFSHelper;->getApproximateCPUFrequency(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    new-instance v0, Landroid/os/DVFSHelper;

    sget-object v1, Lcom/android/server/ssrm/fgapps/MtpObexBooster;->mContext:Landroid/content/Context;

    const-string v2, "MTP_CORE_BOOSTER"

    const/16 v3, 0xe

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/MtpObexBooster;->mCoreNumLockHelper:Landroid/os/DVFSHelper;

    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/MtpObexBooster;->mCoreNumLockHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->getSupportedCPUCoreNum()[I

    move-result-object v8

    if-eqz v8, :cond_0

    array-length v0, v8

    if-lez v0, :cond_0

    sget-boolean v0, Lcom/android/server/ssrm/Feature;->MODEL_HF:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/MtpObexBooster;->mCoreNumLockHelper:Landroid/os/DVFSHelper;

    const-string v1, "CORE_NUM"

    const-wide/16 v2, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    :cond_0
    :goto_0
    new-instance v0, Landroid/os/DVFSHelper;

    sget-object v1, Lcom/android/server/ssrm/fgapps/MtpObexBooster;->mContext:Landroid/content/Context;

    const-string v2, "MTP_BUS_BOOSTER"

    const/16 v3, 0x13

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/MtpObexBooster;->mBusFreqLockHelper:Landroid/os/DVFSHelper;

    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/MtpObexBooster;->mBusFreqLockHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->getSupportedBUSFrequency()[I

    move-result-object v7

    if-eqz v7, :cond_1

    array-length v0, v7

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/MtpObexBooster;->mBusFreqLockHelper:Landroid/os/DVFSHelper;

    const-string v1, "BUS"

    aget v2, v7, v9

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/MtpObexBooster;->mCoreNumLockHelper:Landroid/os/DVFSHelper;

    const-string v1, "CORE_NUM"

    aget v2, v8, v9

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto :goto_0
.end method

.method public onFgAppChanged()V
    .locals 0

    return-void
.end method

.method public onFgAppInPackageList(Z)V
    .locals 0

    return-void
.end method

.method onMTPStatusChanged()V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "SSRMv2:MtpObexBooster"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onMTPStatusChanged:: mMtpTransferOn = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/ssrm/fgapps/MtpObexBooster;->mMtpTransferOn:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mObexTransferOn = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/ssrm/fgapps/MtpObexBooster;->mObexTransferOn:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/ssrm/fgapps/MtpObexBooster;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/ssrm/fgapps/MtpObexBooster;->mMtpTransferOn:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/server/ssrm/fgapps/MtpObexBooster;->mObexTransferOn:Z

    if-eqz v2, :cond_2

    :cond_0
    iget-boolean v2, p0, Lcom/android/server/ssrm/fgapps/MtpObexBooster;->mLockAcquired:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/MtpObexBooster;->mCPUMinFreqLockHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v2}, Landroid/os/DVFSHelper;->acquire()V

    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/MtpObexBooster;->mCoreNumLockHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v2}, Landroid/os/DVFSHelper;->acquire()V

    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/MtpObexBooster;->mBusFreqLockHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v2}, Landroid/os/DVFSHelper;->acquire()V

    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/MtpObexBooster;->mLockAcquired:Z

    :cond_1
    :goto_0
    iget-boolean v2, p0, Lcom/android/server/ssrm/fgapps/MtpObexBooster;->mLockAcquired:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/android/server/ssrm/fgapps/MtpObexBooster;->mUsb30Enabled:Z

    if-eqz v2, :cond_3

    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/fgapps/MtpObexBooster;->enableDBurstMode(Z)V

    return-void

    :cond_2
    iget-boolean v2, p0, Lcom/android/server/ssrm/fgapps/MtpObexBooster;->mLockAcquired:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/MtpObexBooster;->mCPUMinFreqLockHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v2}, Landroid/os/DVFSHelper;->release()V

    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/MtpObexBooster;->mCoreNumLockHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v2}, Landroid/os/DVFSHelper;->release()V

    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/MtpObexBooster;->mBusFreqLockHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v2}, Landroid/os/DVFSHelper;->release()V

    iput-boolean v1, p0, Lcom/android/server/ssrm/fgapps/MtpObexBooster;->mLockAcquired:Z

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;Lcom/android/server/ssrm/fgapps/FgAppListener;)V
    .locals 8

    invoke-super {p0, p1, p2, p3}, Lcom/android/server/ssrm/fgapps/FgAppListener;->onReceive(Landroid/content/Context;Landroid/content/Intent;Lcom/android/server/ssrm/fgapps/FgAppListener;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v5, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "connected"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "configured"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "mtp"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    const-string v5, "SSRMv2:MtpObexBooster"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "USB_STATE:: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/ssrm/fgapps/MtpObexBooster;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v5, Lcom/android/server/ssrm/fgapps/MtpObexBooster;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "usb"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/usb/UsbManager;

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {v3}, Landroid/hardware/usb/UsbManager;->isUsb30Enabled()Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/android/server/ssrm/fgapps/MtpObexBooster;->onUsb30StatusChanged(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/android/server/ssrm/fgapps/MtpObexBooster;->onUsb30StatusChanged(Z)V

    goto :goto_0
.end method

.method public onStatusNotiReceived(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 1

    const-string v0, "MTP_fileTransfer"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/MtpObexBooster;->mMtpTransferOn:Z

    if-eq v0, p2, :cond_0

    iput-boolean p2, p0, Lcom/android/server/ssrm/fgapps/MtpObexBooster;->mMtpTransferOn:Z

    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/MtpObexBooster;->onMTPStatusChanged()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "OBEX_dataTransfer"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/MtpObexBooster;->mObexTransferOn:Z

    if-eq v0, p2, :cond_0

    iput-boolean p2, p0, Lcom/android/server/ssrm/fgapps/MtpObexBooster;->mObexTransferOn:Z

    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/MtpObexBooster;->onMTPStatusChanged()V

    goto :goto_0
.end method

.method onUsb30StatusChanged(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/MtpObexBooster;->mUsb30Enabled:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/server/ssrm/fgapps/MtpObexBooster;->mUsb30Enabled:Z

    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/MtpObexBooster;->onMTPStatusChanged()V

    :cond_0
    return-void
.end method

.method public onUsbConnectionStatusChanged(Z)V
    .locals 4

    const/4 v3, 0x0

    const-string v0, "SSRMv2:MtpObexBooster"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUsbConnectionStatusChanged:: connected = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/MtpObexBooster;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    iput-boolean v3, p0, Lcom/android/server/ssrm/fgapps/MtpObexBooster;->mMtpTransferOn:Z

    iput-boolean v3, p0, Lcom/android/server/ssrm/fgapps/MtpObexBooster;->mObexTransferOn:Z

    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/MtpObexBooster;->onMTPStatusChanged()V

    :cond_0
    return-void
.end method
