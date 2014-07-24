.class Lcom/android/server/pm/PackageManagerService$VerifierPackage;
.super Ljava/lang/Object;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VerifierPackage"
.end annotation


# instance fields
.field public componentName:Landroid/content/ComponentName;

.field public final firstInstallTime:J

.field public final packageName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field public final uId:I


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;IJ)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$VerifierPackage;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$VerifierPackage;->packageName:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/pm/PackageManagerService$VerifierPackage;->uId:I

    iput-wide p4, p0, Lcom/android/server/pm/PackageManagerService$VerifierPackage;->firstInstallTime:J

    return-void
.end method
