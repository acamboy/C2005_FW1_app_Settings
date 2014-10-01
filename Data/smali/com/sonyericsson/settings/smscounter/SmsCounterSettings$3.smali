.class Lcom/sonyericsson/settings/smscounter/SmsCounterSettings$3;
.super Landroid/os/Handler;
.source "SmsCounterSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;


# direct methods
.method constructor <init>(Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;)V
    .locals 0

    .prologue
    .line 246
    iput-object p1, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings$3;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 249
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 251
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 257
    :goto_0
    return-void

    .line 253
    :pswitch_0
    const-string v0, "Dcm Sms CounterDSDS"

    const-string v1, "Go to update Message UI State"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    iget-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings$3;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings$3;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;

    # getter for: Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mSim:I
    invoke-static {v2}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->access$000(Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;)I

    move-result v2

    # invokes: Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->updateMessageUIState(II)V
    invoke-static {v0, v1, v2}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->access$800(Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;II)V

    goto :goto_0

    .line 251
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method
