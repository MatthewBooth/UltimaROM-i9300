.class Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$AirViewObserver;
.super Landroid/database/ContentObserver;
.source "AbsAirViewOnOff.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AirViewObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;


# direct methods
.method constructor <init>(Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$AirViewObserver;->this$0:Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$AirViewObserver;->this$0:Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;

    iget-object v0, v0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->mSettingsAirView:Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$SettingsAirViewInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$AirViewObserver;->this$0:Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;

    iget-object v0, v0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->mSettingsAirView:Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$SettingsAirViewInfo;

    invoke-virtual {v0}, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$SettingsAirViewInfo;->readAirViewSettings()V

    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$AirViewObserver;->this$0:Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;

    invoke-virtual {v0}, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->updateAirViewStatus()V

    :cond_0
    return-void
.end method
