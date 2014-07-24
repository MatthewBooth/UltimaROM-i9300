.class Lcom/samsung/smartbonding/SmartBondingService$2;
.super Landroid/telephony/PhoneStateListener;
.source "SmartBondingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/smartbonding/SmartBondingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/smartbonding/SmartBondingService;


# direct methods
.method constructor <init>(Lcom/samsung/smartbonding/SmartBondingService;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/smartbonding/SmartBondingService$2;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 2

    invoke-static {}, Lcom/samsung/smartbonding/SmartBondingService;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onServiceStateChanged state= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    #calls: Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/samsung/smartbonding/SmartBondingService;->access$100(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/samsung/smartbonding/SmartBondingService;->access$000()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "onServiceStateChanged : roaming is enabled. disable smart bonding"

    #calls: Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/samsung/smartbonding/SmartBondingService;->access$100(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService$2;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/smartbonding/SmartBondingService;->setSBEnabled(Z)V

    :cond_2
    return-void
.end method
