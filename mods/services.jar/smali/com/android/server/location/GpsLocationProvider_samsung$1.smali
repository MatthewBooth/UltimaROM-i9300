.class Lcom/android/server/location/GpsLocationProvider_samsung$1;
.super Ljava/lang/Object;
.source "GpsLocationProvider_samsung.java"

# interfaces
.implements Landroid/hardware/scontext/SContextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GpsLocationProvider_samsung;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GpsLocationProvider_samsung;


# direct methods
.method constructor <init>(Lcom/android/server/location/GpsLocationProvider_samsung;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/location/GpsLocationProvider_samsung$1;->this$0:Lcom/android/server/location/GpsLocationProvider_samsung;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSContextChanged(Landroid/hardware/scontext/SContextEvent;)V
    .locals 7

    iget-object v1, p1, Landroid/hardware/scontext/SContextEvent;->scontext:Landroid/hardware/scontext/SContext;

    invoke-virtual {v1}, Landroid/hardware/scontext/SContext;->getType()I

    move-result v2

    const/16 v3, 0xe

    if-ne v2, v3, :cond_0

    invoke-virtual {p1}, Landroid/hardware/scontext/SContextEvent;->getGyroTemperatureContext()Landroid/hardware/scontext/SContextGyroTemperature;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider_samsung$1;->this$0:Lcom/android/server/location/GpsLocationProvider_samsung;

    iget-boolean v2, v2, Lcom/android/server/location/GpsLocationProvider_samsung;->mStarted:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider_samsung$1;->this$0:Lcom/android/server/location/GpsLocationProvider_samsung;

    invoke-virtual {v0}, Landroid/hardware/scontext/SContextGyroTemperature;->getGyroTemperature()D

    move-result-wide v3

    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider_samsung$1;->this$0:Lcom/android/server/location/GpsLocationProvider_samsung;

    #getter for: Lcom/android/server/location/GpsLocationProvider_samsung;->mBatteryTemp:D
    invoke-static {v5}, Lcom/android/server/location/GpsLocationProvider_samsung;->access$000(Lcom/android/server/location/GpsLocationProvider_samsung;)D

    move-result-wide v5

    #calls: Lcom/android/server/location/GpsLocationProvider_samsung;->native_inject_sensor_data(DD)V
    invoke-static {v2, v3, v4, v5, v6}, Lcom/android/server/location/GpsLocationProvider_samsung;->access$100(Lcom/android/server/location/GpsLocationProvider_samsung;DD)V

    :cond_0
    return-void
.end method
