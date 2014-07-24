.class Lcom/android/server/AdaptiveDisplayColorService$2;
.super Ljava/lang/Object;
.source "AdaptiveDisplayColorService.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AdaptiveDisplayColorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AdaptiveDisplayColorService;


# direct methods
.method constructor <init>(Lcom/android/server/AdaptiveDisplayColorService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/AdaptiveDisplayColorService$2;->this$0:Lcom/android/server/AdaptiveDisplayColorService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 9

    const/4 v8, 0x2

    iget-object v0, p0, Lcom/android/server/AdaptiveDisplayColorService$2;->this$0:Lcom/android/server/AdaptiveDisplayColorService;

    #getter for: Lcom/android/server/AdaptiveDisplayColorService;->mLightSensorDelay:I
    invoke-static {v0}, Lcom/android/server/AdaptiveDisplayColorService;->access$1600(Lcom/android/server/AdaptiveDisplayColorService;)I

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-object v0, p0, Lcom/android/server/AdaptiveDisplayColorService$2;->this$0:Lcom/android/server/AdaptiveDisplayColorService;

    #calls: Lcom/android/server/AdaptiveDisplayColorService;->getRgbFromLightSensor()V
    invoke-static {v0}, Lcom/android/server/AdaptiveDisplayColorService;->access$1700(Lcom/android/server/AdaptiveDisplayColorService;)V

    iget-object v0, p0, Lcom/android/server/AdaptiveDisplayColorService$2;->this$0:Lcom/android/server/AdaptiveDisplayColorService;

    #getter for: Lcom/android/server/AdaptiveDisplayColorService;->mSensorValueValid:Z
    invoke-static {v0}, Lcom/android/server/AdaptiveDisplayColorService;->access$1800(Lcom/android/server/AdaptiveDisplayColorService;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/AdaptiveDisplayColorService$2;->this$0:Lcom/android/server/AdaptiveDisplayColorService;

    #getter for: Lcom/android/server/AdaptiveDisplayColorService;->mLightSensorR:I
    invoke-static {v0}, Lcom/android/server/AdaptiveDisplayColorService;->access$1900(Lcom/android/server/AdaptiveDisplayColorService;)I

    move-result v3

    iget-object v0, p0, Lcom/android/server/AdaptiveDisplayColorService$2;->this$0:Lcom/android/server/AdaptiveDisplayColorService;

    #getter for: Lcom/android/server/AdaptiveDisplayColorService;->mLightSensorG:I
    invoke-static {v0}, Lcom/android/server/AdaptiveDisplayColorService;->access$2000(Lcom/android/server/AdaptiveDisplayColorService;)I

    move-result v4

    iget-object v0, p0, Lcom/android/server/AdaptiveDisplayColorService$2;->this$0:Lcom/android/server/AdaptiveDisplayColorService;

    #getter for: Lcom/android/server/AdaptiveDisplayColorService;->mLightSensorB:I
    invoke-static {v0}, Lcom/android/server/AdaptiveDisplayColorService;->access$2100(Lcom/android/server/AdaptiveDisplayColorService;)I

    move-result v5

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v7, 0x0

    aget v0, v0, v7

    float-to-int v6, v0

    iget-object v0, p0, Lcom/android/server/AdaptiveDisplayColorService$2;->this$0:Lcom/android/server/AdaptiveDisplayColorService;

    #calls: Lcom/android/server/AdaptiveDisplayColorService;->handleRgbSensorEvent(JIIII)V
    invoke-static/range {v0 .. v6}, Lcom/android/server/AdaptiveDisplayColorService;->access$2200(Lcom/android/server/AdaptiveDisplayColorService;JIIII)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/AdaptiveDisplayColorService$2;->this$0:Lcom/android/server/AdaptiveDisplayColorService;

    #setter for: Lcom/android/server/AdaptiveDisplayColorService;->mLightSensorDelay:I
    invoke-static {v0, v8}, Lcom/android/server/AdaptiveDisplayColorService;->access$1602(Lcom/android/server/AdaptiveDisplayColorService;I)I

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/AdaptiveDisplayColorService$2;->this$0:Lcom/android/server/AdaptiveDisplayColorService;

    #getter for: Lcom/android/server/AdaptiveDisplayColorService;->mLightSensorDelay:I
    invoke-static {v0}, Lcom/android/server/AdaptiveDisplayColorService;->access$1600(Lcom/android/server/AdaptiveDisplayColorService;)I

    move-result v0

    if-gt v0, v8, :cond_2

    iget-object v0, p0, Lcom/android/server/AdaptiveDisplayColorService$2;->this$0:Lcom/android/server/AdaptiveDisplayColorService;

    #getter for: Lcom/android/server/AdaptiveDisplayColorService;->mLightSensorDelay:I
    invoke-static {v0}, Lcom/android/server/AdaptiveDisplayColorService;->access$1600(Lcom/android/server/AdaptiveDisplayColorService;)I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/AdaptiveDisplayColorService$2;->this$0:Lcom/android/server/AdaptiveDisplayColorService;

    invoke-static {v0}, Lcom/android/server/AdaptiveDisplayColorService;->access$1610(Lcom/android/server/AdaptiveDisplayColorService;)I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/server/AdaptiveDisplayColorService$2;->this$0:Lcom/android/server/AdaptiveDisplayColorService;

    #setter for: Lcom/android/server/AdaptiveDisplayColorService;->mLightSensorDelay:I
    invoke-static {v0, v8}, Lcom/android/server/AdaptiveDisplayColorService;->access$1602(Lcom/android/server/AdaptiveDisplayColorService;I)I

    goto :goto_0
.end method
