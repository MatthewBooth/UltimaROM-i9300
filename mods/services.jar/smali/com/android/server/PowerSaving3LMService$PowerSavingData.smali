.class final Lcom/android/server/PowerSaving3LMService$PowerSavingData;
.super Ljava/lang/Object;
.source "PowerSaving3LMService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PowerSaving3LMService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PowerSavingData"
.end annotation


# instance fields
.field mDeniedPackagesWhilePowerSaving:Lcom/android/server/PowerSaving3LMService$RulesEngine;

.field mPowerSavingSettingsEnabled:Z

.field final mUserId:I

.field final synthetic this$0:Lcom/android/server/PowerSaving3LMService;


# direct methods
.method constructor <init>(Lcom/android/server/PowerSaving3LMService;I)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/PowerSaving3LMService$PowerSavingData;->this$0:Lcom/android/server/PowerSaving3LMService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/android/server/PowerSaving3LMService$PowerSavingData;->mUserId:I

    new-instance v0, Lcom/android/server/PowerSaving3LMService$RulesEngine;

    invoke-direct {v0, p1}, Lcom/android/server/PowerSaving3LMService$RulesEngine;-><init>(Lcom/android/server/PowerSaving3LMService;)V

    iput-object v0, p0, Lcom/android/server/PowerSaving3LMService$PowerSavingData;->mDeniedPackagesWhilePowerSaving:Lcom/android/server/PowerSaving3LMService$RulesEngine;

    return-void
.end method
