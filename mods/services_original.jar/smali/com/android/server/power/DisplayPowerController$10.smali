.class Lcom/android/server/power/DisplayPowerController$10;
.super Ljava/lang/Object;
.source "DisplayPowerController.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/DisplayPowerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final ACCELERATING_TIME_CONSTANT_MS:I = 0x7d0

.field private static final MAX_DEVIATION_FROM_GRAVITY:F = 1.5f

.field private static final MIN_ABS_ACCELERATION:F = 1.5f

.field private static final RADIANS_TO_DEGREES:F = 57.29578f

.field private static final SAMPLING_PERIOD_MS:I = 0xc8


# instance fields
.field private mAccelerationDistrust:I

.field private mCnt:I

.field private mTiltDistrust:I

.field final synthetic this$0:Lcom/android/server/power/DisplayPowerController;


# direct methods
.method constructor <init>(Lcom/android/server/power/DisplayPowerController;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/android/server/power/DisplayPowerController$10;->this$0:Lcom/android/server/power/DisplayPowerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/android/server/power/DisplayPowerController$10;->mAccelerationDistrust:I

    iput v0, p0, Lcom/android/server/power/DisplayPowerController$10;->mTiltDistrust:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/server/power/DisplayPowerController$10;->mCnt:I

    return-void
.end method

.method private handleAccelerationDistrust(F)V
    .locals 2

    const/high16 v0, 0x3fc0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    iget v0, p0, Lcom/android/server/power/DisplayPowerController$10;->mAccelerationDistrust:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/power/DisplayPowerController$10;->mAccelerationDistrust:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/power/DisplayPowerController$10;->mAccelerationDistrust:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/android/server/power/DisplayPowerController$10;->mAccelerationDistrust:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/server/power/DisplayPowerController$10;->mAccelerationDistrust:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/power/DisplayPowerController$10;->mAccelerationDistrust:I

    goto :goto_0
.end method

.method private lowpassFilter(FFF)F
    .locals 2

    mul-float v0, p3, p1

    const/high16 v1, 0x3f80

    sub-float/2addr v1, p3

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    return v0
.end method

.method private tiltAngle(FF)F
    .locals 2

    div-float v0, p1, p2

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->asin(D)D

    move-result-wide v0

    double-to-float v0, v0

    const v1, 0x42652ee1

    mul-float/2addr v0, v1

    return v0
.end method

.method private vectorMagnitude(FFF)F
    .locals 2

    mul-float v0, p1, p1

    mul-float v1, p2, p2

    add-float/2addr v0, v1

    mul-float v1, p3, p3

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 9

    iget-object v7, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v8, 0x0

    aget v4, v7, v8

    iget-object v7, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v8, 0x1

    aget v5, v7, v8

    iget-object v7, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v8, 0x2

    aget v6, v7, v8

    invoke-direct {p0, v4, v5, v6}, Lcom/android/server/power/DisplayPowerController$10;->vectorMagnitude(FFF)F

    move-result v2

    const v7, 0x411ce80a

    sub-float v7, v2, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/power/DisplayPowerController$10;->handleAccelerationDistrust(F)V

    const/high16 v7, 0x3fc0

    cmpg-float v7, v2, v7

    if-gez v7, :cond_0

    :goto_0
    return-void

    :cond_0
    const/high16 v0, 0x3f80

    iget v7, p0, Lcom/android/server/power/DisplayPowerController$10;->mAccelerationDistrust:I

    if-lez v7, :cond_1

    const v0, 0x3dba2e8c

    :cond_1
    invoke-direct {p0, v6, v2}, Lcom/android/server/power/DisplayPowerController$10;->tiltAngle(FF)F

    move-result v3

    iget-object v7, p0, Lcom/android/server/power/DisplayPowerController$10;->this$0:Lcom/android/server/power/DisplayPowerController;

    iget-object v8, p0, Lcom/android/server/power/DisplayPowerController$10;->this$0:Lcom/android/server/power/DisplayPowerController;

    #getter for: Lcom/android/server/power/DisplayPowerController;->mTiltAngle:F
    invoke-static {v8}, Lcom/android/server/power/DisplayPowerController;->access$1800(Lcom/android/server/power/DisplayPowerController;)F

    move-result v8

    invoke-direct {p0, v3, v8, v0}, Lcom/android/server/power/DisplayPowerController$10;->lowpassFilter(FFF)F

    move-result v8

    #setter for: Lcom/android/server/power/DisplayPowerController;->mTiltAngle:F
    invoke-static {v7, v8}, Lcom/android/server/power/DisplayPowerController;->access$1802(Lcom/android/server/power/DisplayPowerController;F)F

    goto :goto_0
.end method
