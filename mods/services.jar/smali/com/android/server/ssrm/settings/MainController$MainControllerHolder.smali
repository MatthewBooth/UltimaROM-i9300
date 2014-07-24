.class Lcom/android/server/ssrm/settings/MainController$MainControllerHolder;
.super Ljava/lang/Object;
.source "MainController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/settings/MainController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MainControllerHolder"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/server/ssrm/settings/MainController;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/server/ssrm/settings/MainController;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/ssrm/settings/MainController;-><init>(Lcom/android/server/ssrm/settings/MainController$1;)V

    sput-object v0, Lcom/android/server/ssrm/settings/MainController$MainControllerHolder;->INSTANCE:Lcom/android/server/ssrm/settings/MainController;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
