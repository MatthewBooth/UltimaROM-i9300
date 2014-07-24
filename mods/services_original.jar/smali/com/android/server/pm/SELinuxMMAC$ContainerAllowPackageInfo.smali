.class Lcom/android/server/pm/SELinuxMMAC$ContainerAllowPackageInfo;
.super Ljava/lang/Object;
.source "SELinuxMMAC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/SELinuxMMAC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ContainerAllowPackageInfo"
.end annotation


# instance fields
.field allowContainerCategory:Ljava/lang/String;

.field certs:Ljava/lang/String;

.field seinfo:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/SELinuxMMAC$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/pm/SELinuxMMAC$ContainerAllowPackageInfo;-><init>()V

    return-void
.end method
