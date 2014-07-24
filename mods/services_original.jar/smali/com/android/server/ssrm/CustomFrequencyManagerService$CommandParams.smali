.class public Lcom/android/server/ssrm/CustomFrequencyManagerService$CommandParams;
.super Ljava/lang/Object;
.source "CustomFrequencyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/CustomFrequencyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CommandParams"
.end annotation


# instance fields
.field type:Ljava/lang/String;

.field value:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$CommandParams;->type:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$CommandParams;->value:Ljava/lang/String;

    return-void
.end method
