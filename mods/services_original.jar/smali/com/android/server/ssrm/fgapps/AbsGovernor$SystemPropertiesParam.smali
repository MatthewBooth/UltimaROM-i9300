.class public Lcom/android/server/ssrm/fgapps/AbsGovernor$SystemPropertiesParam;
.super Ljava/lang/Object;
.source "AbsGovernor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/fgapps/AbsGovernor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SystemPropertiesParam"
.end annotation


# instance fields
.field mCurrentValue:Ljava/lang/String;

.field mDefaultValue:Ljava/lang/String;

.field mKey:Ljava/lang/String;

.field mTargetValue:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
