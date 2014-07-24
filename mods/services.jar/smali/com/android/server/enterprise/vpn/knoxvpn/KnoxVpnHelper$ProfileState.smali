.class Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper$ProfileState;
.super Ljava/lang/Object;
.source "KnoxVpnHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ProfileState"
.end annotation


# static fields
.field private static final CONNECTED:I = 0x4

.field private static final CONNECTING:I = 0x2

.field private static final DELETED:I = 0x6

.field private static final DISCONNECTING:I = 0x3

.field private static final FAILED:I = 0x5

.field private static final IDLE:I = 0x1


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
