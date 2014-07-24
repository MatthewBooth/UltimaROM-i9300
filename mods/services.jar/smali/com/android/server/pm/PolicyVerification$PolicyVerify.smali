.class Lcom/android/server/pm/PolicyVerification$PolicyVerify;
.super Ljava/lang/Object;
.source "PolicyVerification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PolicyVerification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PolicyVerify"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "libandroid_runtime"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native verifySignature([B[B[B)Z
.end method
