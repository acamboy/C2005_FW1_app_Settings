.class Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack$1;
.super Landroid/os/Handler;
.source "MultiSimSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;


# direct methods
.method constructor <init>(Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;)V
    .locals 0

    .prologue
    .line 398
    iput-object p1, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack$1;->this$1:Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x4

    const/4 v7, 0x0

    .line 401
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 466
    :cond_0
    :goto_0
    return-void

    .line 403
    :pswitch_0
    const-string v4, "DualSIM"

    const-string v5, "EVENT_SERVICE_STATE_CHANGED is received"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    iget-object v4, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack$1;->this$1:Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;

    # getter for: Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;
    invoke-static {v4}, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;->access$300(Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;)Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    .line 405
    .local v2, "ss":Landroid/telephony/ServiceState;
    const-string v4, "DualSIM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isSimSetting="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack$1;->this$1:Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;

    iget-boolean v6, v6, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;->isSimSetting:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  ss="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " SUB1="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack$1;->this$1:Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;

    iget-object v6, v6, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;->this$0:Lcom/sonymobile/settings/dsds/MultiSimSettings;

    # getter for: Lcom/sonymobile/settings/dsds/MultiSimSettings;->mSimSetCallBack:Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;
    invoke-static {v6}, Lcom/sonymobile/settings/dsds/MultiSimSettings;->access$400(Lcom/sonymobile/settings/dsds/MultiSimSettings;)Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;

    move-result-object v6

    # invokes: Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;->isSimCardPowerOn(I)Z
    invoke-static {v6, v7}, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;->access$100(Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;I)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  SUB2="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack$1;->this$1:Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;

    iget-object v6, v6, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;->this$0:Lcom/sonymobile/settings/dsds/MultiSimSettings;

    # getter for: Lcom/sonymobile/settings/dsds/MultiSimSettings;->mSimSetCallBack:Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;
    invoke-static {v6}, Lcom/sonymobile/settings/dsds/MultiSimSettings;->access$400(Lcom/sonymobile/settings/dsds/MultiSimSettings;)Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;

    move-result-object v6

    # invokes: Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;->isSimCardPowerOn(I)Z
    invoke-static {v6, v9}, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;->access$100(Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;I)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  isSimSettingEnable="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack$1;->this$1:Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;

    iget-boolean v6, v6, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;->isSimSettingEnable:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    iget-object v4, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack$1;->this$1:Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;

    iget-boolean v4, v4, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;->isSimSetting:Z

    if-eqz v4, :cond_3

    .line 410
    iget-object v4, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack$1;->this$1:Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;

    iget-boolean v4, v4, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;->isSimSettingEnable:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack$1;->this$1:Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;

    iget-object v4, v4, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;->this$0:Lcom/sonymobile/settings/dsds/MultiSimSettings;

    # getter for: Lcom/sonymobile/settings/dsds/MultiSimSettings;->mSimSetCallBack:Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;
    invoke-static {v4}, Lcom/sonymobile/settings/dsds/MultiSimSettings;->access$400(Lcom/sonymobile/settings/dsds/MultiSimSettings;)Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;

    move-result-object v4

    iget-object v5, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack$1;->this$1:Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;

    iget-object v5, v5, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;->this$0:Lcom/sonymobile/settings/dsds/MultiSimSettings;

    # getter for: Lcom/sonymobile/settings/dsds/MultiSimSettings;->mSimSetCallBack:Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;
    invoke-static {v5}, Lcom/sonymobile/settings/dsds/MultiSimSettings;->access$400(Lcom/sonymobile/settings/dsds/MultiSimSettings;)Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;

    move-result-object v5

    iget v5, v5, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;->simcard:I

    # invokes: Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;->isSimCardPowerOn(I)Z
    invoke-static {v4, v5}, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;->access$100(Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;I)Z

    move-result v4

    if-nez v4, :cond_2

    :cond_1
    iget-object v4, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack$1;->this$1:Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;

    iget-boolean v4, v4, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;->isSimSettingEnable:Z

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack$1;->this$1:Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;

    iget-object v4, v4, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;->this$0:Lcom/sonymobile/settings/dsds/MultiSimSettings;

    # getter for: Lcom/sonymobile/settings/dsds/MultiSimSettings;->mSimSetCallBack:Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;
    invoke-static {v4}, Lcom/sonymobile/settings/dsds/MultiSimSettings;->access$400(Lcom/sonymobile/settings/dsds/MultiSimSettings;)Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;

    move-result-object v4

    iget-object v5, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack$1;->this$1:Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;

    iget-object v5, v5, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;->this$0:Lcom/sonymobile/settings/dsds/MultiSimSettings;

    # getter for: Lcom/sonymobile/settings/dsds/MultiSimSettings;->mSimSetCallBack:Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;
    invoke-static {v5}, Lcom/sonymobile/settings/dsds/MultiSimSettings;->access$400(Lcom/sonymobile/settings/dsds/MultiSimSettings;)Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;

    move-result-object v5

    iget v5, v5, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;->simcard:I

    # invokes: Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;->isSimCardPowerOn(I)Z
    invoke-static {v4, v5}, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;->access$100(Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;I)Z

    move-result v4

    if-nez v4, :cond_3

    .line 414
    :cond_2
    iget-object v4, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack$1;->this$1:Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;

    iput-boolean v7, v4, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;->isSimSetting:Z

    .line 415
    iget-object v4, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack$1;->this$1:Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;

    # getter for: Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;->access$500(Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 416
    iget-object v4, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack$1;->this$1:Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;

    # getter for: Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;->access$500(Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 420
    :cond_3
    iget-object v4, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack$1;->this$1:Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;

    invoke-virtual {v4}, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;->onUpdate()V

    goto/16 :goto_0

    .line 424
    .end local v2    # "ss":Landroid/telephony/ServiceState;
    :pswitch_1
    const-string v4, "DualSIM"

    const-string v5, "EVENT_SET_SUBSCRIPTION_DONE is received."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 426
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [Ljava/lang/String;

    move-object v1, v4

    check-cast v1, [Ljava/lang/String;

    .line 427
    .local v1, "result":[Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 428
    iget-object v4, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack$1;->this$1:Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;

    iget-boolean v4, v4, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;->isSimSetting:Z

    if-eqz v4, :cond_0

    .line 429
    iget-object v4, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack$1;->this$1:Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;

    # getter for: Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;
    invoke-static {v4}, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;->access$300(Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;)Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    .line 430
    .local v3, "ss1":Landroid/telephony/ServiceState;
    const-string v4, "DualSIM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isSimSetting="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack$1;->this$1:Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;

    iget-boolean v6, v6, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;->isSimSetting:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  ss="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " SUB1="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack$1;->this$1:Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;

    iget-object v6, v6, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;->this$0:Lcom/sonymobile/settings/dsds/MultiSimSettings;

    # getter for: Lcom/sonymobile/settings/dsds/MultiSimSettings;->mSimSetCallBack:Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;
    invoke-static {v6}, Lcom/sonymobile/settings/dsds/MultiSimSettings;->access$400(Lcom/sonymobile/settings/dsds/MultiSimSettings;)Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;

    move-result-object v6

    # invokes: Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;->isSimCardPowerOn(I)Z
    invoke-static {v6, v7}, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;->access$100(Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;I)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  SUB2="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack$1;->this$1:Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;

    iget-object v6, v6, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;->this$0:Lcom/sonymobile/settings/dsds/MultiSimSettings;

    # getter for: Lcom/sonymobile/settings/dsds/MultiSimSettings;->mSimSetCallBack:Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;
    invoke-static {v6}, Lcom/sonymobile/settings/dsds/MultiSimSettings;->access$400(Lcom/sonymobile/settings/dsds/MultiSimSettings;)Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;

    move-result-object v6

    # invokes: Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;->isSimCardPowerOn(I)Z
    invoke-static {v6, v9}, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;->access$100(Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;I)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  isSimSettingEnable="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack$1;->this$1:Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;

    iget-boolean v6, v6, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;->isSimSettingEnable:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    iget-object v4, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack$1;->this$1:Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;

    iget-boolean v4, v4, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;->isSimSettingEnable:Z

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack$1;->this$1:Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;

    iget-object v4, v4, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;->this$0:Lcom/sonymobile/settings/dsds/MultiSimSettings;

    # getter for: Lcom/sonymobile/settings/dsds/MultiSimSettings;->mSimSetCallBack:Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;
    invoke-static {v4}, Lcom/sonymobile/settings/dsds/MultiSimSettings;->access$400(Lcom/sonymobile/settings/dsds/MultiSimSettings;)Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;

    move-result-object v4

    iget-object v5, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack$1;->this$1:Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;

    iget-object v5, v5, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;->this$0:Lcom/sonymobile/settings/dsds/MultiSimSettings;

    # getter for: Lcom/sonymobile/settings/dsds/MultiSimSettings;->mSimSetCallBack:Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;
    invoke-static {v5}, Lcom/sonymobile/settings/dsds/MultiSimSettings;->access$400(Lcom/sonymobile/settings/dsds/MultiSimSettings;)Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;

    move-result-object v5

    iget v5, v5, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;->simcard:I

    # invokes: Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;->isSimCardPowerOn(I)Z
    invoke-static {v4, v5}, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;->access$100(Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;I)Z

    move-result v4

    if-nez v4, :cond_5

    :cond_4
    iget-object v4, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack$1;->this$1:Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;

    iget-boolean v4, v4, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;->isSimSettingEnable:Z

    if-nez v4, :cond_6

    iget-object v4, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack$1;->this$1:Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;

    iget-object v4, v4, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;->this$0:Lcom/sonymobile/settings/dsds/MultiSimSettings;

    # getter for: Lcom/sonymobile/settings/dsds/MultiSimSettings;->mSimSetCallBack:Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;
    invoke-static {v4}, Lcom/sonymobile/settings/dsds/MultiSimSettings;->access$400(Lcom/sonymobile/settings/dsds/MultiSimSettings;)Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;

    move-result-object v4

    iget-object v5, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack$1;->this$1:Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;

    iget-object v5, v5, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;->this$0:Lcom/sonymobile/settings/dsds/MultiSimSettings;

    # getter for: Lcom/sonymobile/settings/dsds/MultiSimSettings;->mSimSetCallBack:Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;
    invoke-static {v5}, Lcom/sonymobile/settings/dsds/MultiSimSettings;->access$400(Lcom/sonymobile/settings/dsds/MultiSimSettings;)Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;

    move-result-object v5

    iget v5, v5, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;->simcard:I

    # invokes: Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;->isSimCardPowerOn(I)Z
    invoke-static {v4, v5}, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;->access$100(Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;I)Z

    move-result v4

    if-nez v4, :cond_6

    .line 438
    :cond_5
    iget-object v4, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack$1;->this$1:Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;

    iput-boolean v7, v4, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;->isSimSetting:Z

    .line 439
    iget-object v4, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack$1;->this$1:Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;

    invoke-virtual {v4}, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;->onUpdate()V

    goto/16 :goto_0

    .line 441
    :cond_6
    iget-object v4, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack$1;->this$1:Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;

    invoke-virtual {v4}, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;->onUpdate()V

    .line 442
    const-string v4, "DualSIM"

    const-string v5, "sendMessageDelayed..."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    iget-object v4, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack$1;->this$1:Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;

    # getter for: Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;->access$500(Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 444
    iget-object v4, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack$1;->this$1:Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;

    # getter for: Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;->access$500(Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack$1;->this$1:Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;

    # getter for: Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;->access$500(Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    const-wide/16 v6, 0x2710

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 454
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "result":[Ljava/lang/String;
    .end local v3    # "ss1":Landroid/telephony/ServiceState;
    :pswitch_2
    const-string v4, "DualSIM"

    const-string v5, "EVENT_SIM_STATE_CHANGED is received."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    iget-object v4, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack$1;->this$1:Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;

    invoke-virtual {v4}, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;->onUpdate()V

    goto/16 :goto_0

    .line 458
    :pswitch_3
    const-string v4, "DualSIM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EVENT_SIM_STATE_CHANGED_TIME_OUT is received. isSimSetting="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack$1;->this$1:Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;

    iget-boolean v6, v6, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;->isSimSetting:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    iget-object v4, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack$1;->this$1:Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;

    iget-boolean v4, v4, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;->isSimSetting:Z

    if-eqz v4, :cond_0

    .line 460
    iget-object v4, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack$1;->this$1:Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;

    iput-boolean v7, v4, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;->isSimSetting:Z

    .line 461
    iget-object v4, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack$1;->this$1:Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;

    invoke-virtual {v4}, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;->onUpdate()V

    .line 462
    iget-object v4, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack$1;->this$1:Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;

    # getter for: Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;->access$500(Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_0

    .line 401
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
