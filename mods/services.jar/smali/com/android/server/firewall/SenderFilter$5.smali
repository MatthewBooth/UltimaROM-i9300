.class final Lcom/android/server/firewall/SenderFilter$5;
.super Ljava/lang/Object;
.source "SenderFilter.java"

# interfaces
.implements Lcom/android/server/firewall/Filter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/firewall/SenderFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public matches(Lcom/android/server/firewall/IntentFirewall;Landroid/content/ComponentName;Landroid/content/Intent;IILjava/lang/String;I)Z
    .locals 7

    const/4 v2, 0x0

    const/4 v6, 0x0

    move-object v0, p1

    move-object v1, p3

    move v3, p5

    move v4, p4

    move v5, p7

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/firewall/IntentFirewall;->checkComponentPermission(Landroid/content/Intent;Ljava/lang/String;IIIZ)Z

    move-result v0

    return v0
.end method
