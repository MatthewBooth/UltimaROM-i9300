.class Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants$ProfileState;
.super Ljava/lang/Object;
.source "KnoxVpnConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ProfileState"
.end annotation


# static fields
.field static final ACTIVATE_CONNECTED:I = 0x4

.field static final ACTIVATE_CONNECTING:I = 0x2

.field static final ACTIVATE_DISCONNECTING:I = 0x3

.field static final ACTIVATE_FAILED:I = 0x5

.field static final ACTIVATE_IDLE:I = 0x1

.field static final DEACTIVATED_CONNECTED:I = 0x68

.field static final DEACTIVATED_CONNECTING:I = 0x66

.field static final DEACTIVATED_DISCONNECTING:I = 0x67

.field static final DEACTIVATED_FAILED:I = 0x69

.field static final DEACTIVATED_IDLE:I = 0x65


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
