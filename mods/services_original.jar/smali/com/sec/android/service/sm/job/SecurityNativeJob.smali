.class public Lcom/sec/android/service/sm/job/SecurityNativeJob;
.super Ljava/lang/Object;
.source "SecurityNativeJob.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "SecurityManagerNative"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native FIPS_Openssl_SelfTest()I
.end method

.method public native SKMM_SelfTest()I
.end method

.method public native getCCModeFlag()I
.end method

.method public native getSBFlag()I
.end method

.method public native setCCModeFlag(I)I
.end method

.method public native setSBFlagOff()I
.end method

.method public native setSBFlagOn()I
.end method

.method public native verifyVPN()I
.end method
