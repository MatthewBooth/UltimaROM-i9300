.class Lcom/android/server/firewall/SenderPermissionFilter;
.super Ljava/lang/Object;
.source "SenderPermissionFilter.java"

# interfaces
.implements Lcom/android/server/firewall/Filter;


# static fields
.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field public static final FACTORY:Lcom/android/server/firewall/FilterFactory;


# instance fields
.field private final mPermission:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/server/firewall/SenderPermissionFilter$1;

    const-string v1, "sender-permission"

    invoke-direct {v0, v1}, Lcom/android/server/firewall/SenderPermissionFilter$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/firewall/SenderPermissionFilter;->FACTORY:Lcom/android/server/firewall/FilterFactory;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/firewall/SenderPermissionFilter;->mPermission:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/android/server/firewall/SenderPermissionFilter$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/firewall/SenderPermissionFilter;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public matches(Lcom/android/server/firewall/IntentFirewall;Landroid/content/ComponentName;Landroid/content/Intent;IILjava/lang/String;I)Z
    .locals 7

    iget-object v2, p0, Lcom/android/server/firewall/SenderPermissionFilter;->mPermission:Ljava/lang/String;

    const/4 v6, 0x1

    move-object v0, p1

    move-object v1, p3

    move v3, p5

    move v4, p4

    move v5, p7

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/firewall/IntentFirewall;->checkComponentPermission(Landroid/content/Intent;Ljava/lang/String;IIIZ)Z

    move-result v0

    return v0
.end method
