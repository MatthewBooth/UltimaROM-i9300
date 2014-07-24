.class Lcom/android/server/RCPManagerService$ExchangeDataInfo;
.super Ljava/lang/Object;
.source "RCPManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/RCPManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExchangeDataInfo"
.end annotation


# instance fields
.field cbMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/IRunnableCallback;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/RCPManagerService;

.field userId:I


# direct methods
.method private constructor <init>(Lcom/android/server/RCPManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/RCPManagerService$ExchangeDataInfo;->this$0:Lcom/android/server/RCPManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/RCPManagerService;Lcom/android/server/RCPManagerService$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/RCPManagerService$ExchangeDataInfo;-><init>(Lcom/android/server/RCPManagerService;)V

    return-void
.end method
