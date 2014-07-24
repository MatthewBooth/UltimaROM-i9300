.class public Lcom/sec/knox/container/EnterpriseContainerService$SecuritySpec;
.super Ljava/lang/Object;
.source "EnterpriseContainerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/knox/container/EnterpriseContainerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SecuritySpec"
.end annotation


# static fields
.field private static final SECURITY_SPEC_CONTAINERIZED_APP:I = 0x1

.field private static final SECURITY_SPEC_CONTAINERIZED_DPM:I = 0x4

.field private static final SECURITY_SPEC_MDM:I = 0x8

.field private static final SECURITY_SPEC_OTHERS:I = 0x20

.field private static final SECURITY_SPEC_SYSTEM:I = 0x10

.field private static final SECURITY_SPEC_WHITELISTED_APP:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
