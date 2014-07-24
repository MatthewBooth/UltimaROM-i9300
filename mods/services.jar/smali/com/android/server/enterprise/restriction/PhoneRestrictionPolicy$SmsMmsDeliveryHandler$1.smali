.class Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$SmsMmsDeliveryHandler$1;
.super Ljava/lang/Object;
.source "PhoneRestrictionPolicy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$SmsMmsDeliveryHandler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$SmsMmsDeliveryHandler;

.field final synthetic val$msgType:I


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$SmsMmsDeliveryHandler;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$SmsMmsDeliveryHandler$1;->this$1:Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$SmsMmsDeliveryHandler;

    iput p2, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$SmsMmsDeliveryHandler$1;->val$msgType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$SmsMmsDeliveryHandler$1;->val$msgType:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$SmsMmsDeliveryHandler$1;->this$1:Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$SmsMmsDeliveryHandler;

    iget-object v0, v0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$SmsMmsDeliveryHandler;->this$0:Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    #calls: Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->deliveryBlockedMsgs(I)V
    invoke-static {v0, v1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->access$100(Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$SmsMmsDeliveryHandler$1;->this$1:Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$SmsMmsDeliveryHandler;

    iget-object v0, v0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$SmsMmsDeliveryHandler;->this$0:Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    #calls: Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->deliveryBlockedMsgs(I)V
    invoke-static {v0, v2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->access$100(Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$SmsMmsDeliveryHandler$1;->this$1:Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$SmsMmsDeliveryHandler;

    iget-object v0, v0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$SmsMmsDeliveryHandler;->this$0:Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    #calls: Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->deliveryBlockedMsgs(I)V
    invoke-static {v0, v1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->access$100(Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;I)V

    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$SmsMmsDeliveryHandler$1;->this$1:Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$SmsMmsDeliveryHandler;

    iget-object v0, v0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$SmsMmsDeliveryHandler;->this$0:Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    #calls: Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->deliveryBlockedMsgs(I)V
    invoke-static {v0, v2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->access$100(Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
