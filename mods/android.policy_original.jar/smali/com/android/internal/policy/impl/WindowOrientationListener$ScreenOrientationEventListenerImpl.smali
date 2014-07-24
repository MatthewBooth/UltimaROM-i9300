.class final Lcom/android/internal/policy/impl/WindowOrientationListener$ScreenOrientationEventListenerImpl;
.super Ljava/lang/Object;
.source "WindowOrientationListener.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/WindowOrientationListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ScreenOrientationEventListenerImpl"
.end annotation


# static fields
.field private static mSmartFaceManager:Lcom/sec/android/smartface/SmartFaceManager;


# instance fields
.field private final mOrientationListener:Lcom/android/internal/policy/impl/WindowOrientationListener;

.field private mPm:Landroid/os/PowerManager;

.field private mProposedRotation:I


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/WindowOrientationListener;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$ScreenOrientationEventListenerImpl;->mOrientationListener:Lcom/android/internal/policy/impl/WindowOrientationListener;

    iget-object v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$ScreenOrientationEventListenerImpl;->mOrientationListener:Lcom/android/internal/policy/impl/WindowOrientationListener;

    #getter for: Lcom/android/internal/policy/impl/WindowOrientationListener;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/internal/policy/impl/WindowOrientationListener;->access$400(Lcom/android/internal/policy/impl/WindowOrientationListener;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$ScreenOrientationEventListenerImpl;->mOrientationListener:Lcom/android/internal/policy/impl/WindowOrientationListener;

    #getter for: Lcom/android/internal/policy/impl/WindowOrientationListener;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/policy/impl/WindowOrientationListener;->access$400(Lcom/android/internal/policy/impl/WindowOrientationListener;)Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$ScreenOrientationEventListenerImpl;->mPm:Landroid/os/PowerManager;

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/WindowOrientationListener$ScreenOrientationEventListenerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/policy/impl/WindowOrientationListener$ScreenOrientationEventListenerImpl;->resetLocked()V

    return-void
.end method

.method private resetLocked()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$ScreenOrientationEventListenerImpl;->mProposedRotation:I

    return-void
.end method


# virtual methods
.method public getProposedRotationLocked()I
    .locals 3

    const/4 v0, -0x1

    iget v1, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$ScreenOrientationEventListenerImpl;->mProposedRotation:I

    if-lt v1, v0, :cond_0

    iget v1, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$ScreenOrientationEventListenerImpl;->mProposedRotation:I

    const/4 v2, 0x3

    if-le v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$ScreenOrientationEventListenerImpl;->mProposedRotation:I

    goto :goto_0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 8

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v5, v4

    const-string v5, "WindowOrientationListener"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Rotation Sensor : x="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    float-to-int v5, v2

    iput v5, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$ScreenOrientationEventListenerImpl;->mProposedRotation:I

    iget v5, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$ScreenOrientationEventListenerImpl;->mProposedRotation:I

    if-ltz v5, :cond_0

    iget v5, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$ScreenOrientationEventListenerImpl;->mProposedRotation:I

    const/4 v6, 0x3

    if-le v5, v6, :cond_1

    :cond_0
    const/4 v5, -0x1

    iput v5, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$ScreenOrientationEventListenerImpl;->mProposedRotation:I

    :cond_1
    iget v5, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$ScreenOrientationEventListenerImpl;->mProposedRotation:I

    if-ltz v5, :cond_2

    iget v5, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$ScreenOrientationEventListenerImpl;->mProposedRotation:I

    iget-object v6, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$ScreenOrientationEventListenerImpl;->mOrientationListener:Lcom/android/internal/policy/impl/WindowOrientationListener;

    #getter for: Lcom/android/internal/policy/impl/WindowOrientationListener;->mCurrentRotation:I
    invoke-static {v6}, Lcom/android/internal/policy/impl/WindowOrientationListener;->access$600(Lcom/android/internal/policy/impl/WindowOrientationListener;)I

    move-result v6

    if-eq v5, v6, :cond_2

    const-string v5, "WindowOrientationListener"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Proposed rotation changed!  proposedRotation="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$ScreenOrientationEventListenerImpl;->mProposedRotation:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "currentRotation = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$ScreenOrientationEventListenerImpl;->mOrientationListener:Lcom/android/internal/policy/impl/WindowOrientationListener;

    #getter for: Lcom/android/internal/policy/impl/WindowOrientationListener;->mCurrentRotation:I
    invoke-static {v7}, Lcom/android/internal/policy/impl/WindowOrientationListener;->access$600(Lcom/android/internal/policy/impl/WindowOrientationListener;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$ScreenOrientationEventListenerImpl;->mOrientationListener:Lcom/android/internal/policy/impl/WindowOrientationListener;

    #getter for: Lcom/android/internal/policy/impl/WindowOrientationListener;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/internal/policy/impl/WindowOrientationListener;->access$400(Lcom/android/internal/policy/impl/WindowOrientationListener;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "intelligent_rotation_mode"

    const/4 v7, -0x2

    invoke-static {v5, v6, v4, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-eqz v5, :cond_3

    move v1, v3

    :goto_0
    if-nez v1, :cond_4

    iget-object v3, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$ScreenOrientationEventListenerImpl;->mOrientationListener:Lcom/android/internal/policy/impl/WindowOrientationListener;

    invoke-virtual {v3, v4}, Lcom/android/internal/policy/impl/WindowOrientationListener;->setFaceDetectionResult(Z)V

    iget-object v3, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$ScreenOrientationEventListenerImpl;->mOrientationListener:Lcom/android/internal/policy/impl/WindowOrientationListener;

    iget v4, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$ScreenOrientationEventListenerImpl;->mProposedRotation:I

    invoke-virtual {v3, v4}, Lcom/android/internal/policy/impl/WindowOrientationListener;->onProposedRotationChanged(I)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    move v1, v4

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    iget-object v5, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$ScreenOrientationEventListenerImpl;->mOrientationListener:Lcom/android/internal/policy/impl/WindowOrientationListener;

    #getter for: Lcom/android/internal/policy/impl/WindowOrientationListener;->mCurrentRotation:I
    invoke-static {v5}, Lcom/android/internal/policy/impl/WindowOrientationListener;->access$600(Lcom/android/internal/policy/impl/WindowOrientationListener;)I

    move-result v5

    if-ltz v5, :cond_6

    iget-object v5, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$ScreenOrientationEventListenerImpl;->mOrientationListener:Lcom/android/internal/policy/impl/WindowOrientationListener;

    #getter for: Lcom/android/internal/policy/impl/WindowOrientationListener;->mCurrentRotation:I
    invoke-static {v5}, Lcom/android/internal/policy/impl/WindowOrientationListener;->access$600(Lcom/android/internal/policy/impl/WindowOrientationListener;)I

    move-result v5

    const/4 v6, 0x4

    if-ge v5, v6, :cond_6

    invoke-static {}, Lcom/android/internal/policy/impl/WindowOrientationListener;->access$800()I

    move-result v5

    if-eqz v5, :cond_6

    invoke-static {}, Lcom/android/internal/policy/impl/WindowOrientationListener;->access$800()I

    move-result v5

    if-eq v5, v3, :cond_6

    invoke-static {}, Lcom/android/internal/policy/impl/WindowOrientationListener;->access$800()I

    move-result v5

    const/4 v6, 0x5

    if-eq v5, v6, :cond_6

    invoke-static {}, Lcom/android/internal/policy/impl/WindowOrientationListener;->access$800()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_6

    invoke-static {}, Lcom/android/internal/policy/impl/WindowOrientationListener;->access$800()I

    move-result v5

    const/16 v6, 0x9

    if-eq v5, v6, :cond_6

    sget-object v5, Lcom/android/internal/policy/impl/WindowOrientationListener$ScreenOrientationEventListenerImpl;->mSmartFaceManager:Lcom/sec/android/smartface/SmartFaceManager;

    if-nez v5, :cond_5

    invoke-static {}, Lcom/sec/android/smartface/SmartFaceManager;->getSmartFaceManager()Lcom/sec/android/smartface/SmartFaceManager;

    move-result-object v5

    sput-object v5, Lcom/android/internal/policy/impl/WindowOrientationListener$ScreenOrientationEventListenerImpl;->mSmartFaceManager:Lcom/sec/android/smartface/SmartFaceManager;

    :cond_5
    sget-object v5, Lcom/android/internal/policy/impl/WindowOrientationListener$ScreenOrientationEventListenerImpl;->mSmartFaceManager:Lcom/sec/android/smartface/SmartFaceManager;

    if-eqz v5, :cond_6

    sget-object v5, Lcom/android/internal/policy/impl/WindowOrientationListener$ScreenOrientationEventListenerImpl;->mSmartFaceManager:Lcom/sec/android/smartface/SmartFaceManager;

    iget-object v6, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$ScreenOrientationEventListenerImpl;->mOrientationListener:Lcom/android/internal/policy/impl/WindowOrientationListener;

    #getter for: Lcom/android/internal/policy/impl/WindowOrientationListener;->mCurrentRotation:I
    invoke-static {v6}, Lcom/android/internal/policy/impl/WindowOrientationListener;->access$600(Lcom/android/internal/policy/impl/WindowOrientationListener;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/sec/android/smartface/SmartFaceManager;->checkForSmartRotation(I)Z

    move-result v0

    :cond_6
    if-ne v0, v3, :cond_7

    const-string v4, "WindowOrientationListener"

    const-string v5, "SMARTFACESERVICE FEATURE, face detected"

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$ScreenOrientationEventListenerImpl;->mOrientationListener:Lcom/android/internal/policy/impl/WindowOrientationListener;

    invoke-virtual {v4, v3}, Lcom/android/internal/policy/impl/WindowOrientationListener;->setFaceDetectionResult(Z)V

    goto :goto_1

    :cond_7
    iget-object v3, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$ScreenOrientationEventListenerImpl;->mOrientationListener:Lcom/android/internal/policy/impl/WindowOrientationListener;

    invoke-virtual {v3, v4}, Lcom/android/internal/policy/impl/WindowOrientationListener;->setFaceDetectionResult(Z)V

    iget-object v3, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$ScreenOrientationEventListenerImpl;->mOrientationListener:Lcom/android/internal/policy/impl/WindowOrientationListener;

    iget v4, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$ScreenOrientationEventListenerImpl;->mProposedRotation:I

    invoke-virtual {v3, v4}, Lcom/android/internal/policy/impl/WindowOrientationListener;->onProposedRotationChanged(I)V

    goto :goto_1
.end method
