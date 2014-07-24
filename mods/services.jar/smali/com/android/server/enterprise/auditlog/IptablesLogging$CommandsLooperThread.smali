.class Lcom/android/server/enterprise/auditlog/IptablesLogging$CommandsLooperThread;
.super Ljava/lang/Thread;
.source "IptablesLogging.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/auditlog/IptablesLogging;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CommandsLooperThread"
.end annotation


# instance fields
.field public mHandler:Lcom/android/server/enterprise/auditlog/IptablesLogging$CommandsHandler;

.field final synthetic this$0:Lcom/android/server/enterprise/auditlog/IptablesLogging;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/auditlog/IptablesLogging;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/auditlog/IptablesLogging$CommandsLooperThread;->this$0:Lcom/android/server/enterprise/auditlog/IptablesLogging;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->prepare()V

    new-instance v0, Lcom/android/server/enterprise/auditlog/IptablesLogging$CommandsHandler;

    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/IptablesLogging$CommandsLooperThread;->this$0:Lcom/android/server/enterprise/auditlog/IptablesLogging;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/auditlog/IptablesLogging$CommandsHandler;-><init>(Lcom/android/server/enterprise/auditlog/IptablesLogging;)V

    iput-object v0, p0, Lcom/android/server/enterprise/auditlog/IptablesLogging$CommandsLooperThread;->mHandler:Lcom/android/server/enterprise/auditlog/IptablesLogging$CommandsHandler;

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method
