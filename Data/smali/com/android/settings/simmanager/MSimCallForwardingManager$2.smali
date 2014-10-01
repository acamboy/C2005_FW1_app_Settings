.class Lcom/android/settings/simmanager/MSimCallForwardingManager$2;
.super Landroid/os/Handler;
.source "MSimCallForwardingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/simmanager/MSimCallForwardingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/simmanager/MSimCallForwardingManager;


# direct methods
.method constructor <init>(Lcom/android/settings/simmanager/MSimCallForwardingManager;)V
    .locals 0

    .prologue
    .line 331
    iput-object p1, p0, Lcom/android/settings/simmanager/MSimCallForwardingManager$2;->this$0:Lcom/android/settings/simmanager/MSimCallForwardingManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 334
    const/4 v2, 0x0

    .line 335
    .local v2, "notifySimState":Z
    const/4 v1, 0x0

    .line 336
    .local v1, "notifyDefaultDataCard":Z
    const/4 v3, 0x0

    .line 339
    .local v3, "simSuccess":Z
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 340
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 363
    :goto_0
    return-void

    .line 342
    :pswitch_0
    iget-object v4, p0, Lcom/android/settings/simmanager/MSimCallForwardingManager$2;->this$0:Lcom/android/settings/simmanager/MSimCallForwardingManager;

    # getter for: Lcom/android/settings/simmanager/MSimCallForwardingManager;->activity:Landroid/preference/PreferenceActivity;
    invoke-static {v4}, Lcom/android/settings/simmanager/MSimCallForwardingManager;->access$100(Lcom/android/settings/simmanager/MSimCallForwardingManager;)Landroid/preference/PreferenceActivity;

    move-result-object v4

    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.DISMISS_READING_PROGRESS"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 343
    const-string v4, "MSimCallForwardingManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/settings/simmanager/MSimCallForwardingManager$2;->this$0:Lcom/android/settings/simmanager/MSimCallForwardingManager;

    # getter for: Lcom/android/settings/simmanager/MSimCallForwardingManager;->sim1Number:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/settings/simmanager/MSimCallForwardingManager;->access$400(Lcom/android/settings/simmanager/MSimCallForwardingManager;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/simmanager/MSimCallForwardingManager$2;->this$0:Lcom/android/settings/simmanager/MSimCallForwardingManager;

    # getter for: Lcom/android/settings/simmanager/MSimCallForwardingManager;->sim2Number:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/settings/simmanager/MSimCallForwardingManager;->access$500(Lcom/android/settings/simmanager/MSimCallForwardingManager;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    iget-object v4, p0, Lcom/android/settings/simmanager/MSimCallForwardingManager$2;->this$0:Lcom/android/settings/simmanager/MSimCallForwardingManager;

    # getter for: Lcom/android/settings/simmanager/MSimCallForwardingManager;->sim1Number:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/settings/simmanager/MSimCallForwardingManager;->access$400(Lcom/android/settings/simmanager/MSimCallForwardingManager;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/simmanager/MSimCallForwardingManager$2;->this$0:Lcom/android/settings/simmanager/MSimCallForwardingManager;

    # getter for: Lcom/android/settings/simmanager/MSimCallForwardingManager;->sim2Number:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/settings/simmanager/MSimCallForwardingManager;->access$500(Lcom/android/settings/simmanager/MSimCallForwardingManager;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 346
    :cond_0
    iget-object v4, p0, Lcom/android/settings/simmanager/MSimCallForwardingManager$2;->this$0:Lcom/android/settings/simmanager/MSimCallForwardingManager;

    # invokes: Lcom/android/settings/simmanager/MSimCallForwardingManager;->showNoNumberAlert()V
    invoke-static {v4}, Lcom/android/settings/simmanager/MSimCallForwardingManager;->access$1000(Lcom/android/settings/simmanager/MSimCallForwardingManager;)V

    goto :goto_0

    .line 349
    :cond_1
    iget-object v4, p0, Lcom/android/settings/simmanager/MSimCallForwardingManager$2;->this$0:Lcom/android/settings/simmanager/MSimCallForwardingManager;

    # getter for: Lcom/android/settings/simmanager/MSimCallForwardingManager;->activity:Landroid/preference/PreferenceActivity;
    invoke-static {v4}, Lcom/android/settings/simmanager/MSimCallForwardingManager;->access$100(Lcom/android/settings/simmanager/MSimCallForwardingManager;)Landroid/preference/PreferenceActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/preference/PreferenceActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "call_forwarding_sim1Number"

    iget-object v6, p0, Lcom/android/settings/simmanager/MSimCallForwardingManager$2;->this$0:Lcom/android/settings/simmanager/MSimCallForwardingManager;

    # getter for: Lcom/android/settings/simmanager/MSimCallForwardingManager;->sim1Number:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/settings/simmanager/MSimCallForwardingManager;->access$400(Lcom/android/settings/simmanager/MSimCallForwardingManager;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 351
    iget-object v4, p0, Lcom/android/settings/simmanager/MSimCallForwardingManager$2;->this$0:Lcom/android/settings/simmanager/MSimCallForwardingManager;

    # getter for: Lcom/android/settings/simmanager/MSimCallForwardingManager;->activity:Landroid/preference/PreferenceActivity;
    invoke-static {v4}, Lcom/android/settings/simmanager/MSimCallForwardingManager;->access$100(Lcom/android/settings/simmanager/MSimCallForwardingManager;)Landroid/preference/PreferenceActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/preference/PreferenceActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "call_forwarding_sim2Number"

    iget-object v6, p0, Lcom/android/settings/simmanager/MSimCallForwardingManager$2;->this$0:Lcom/android/settings/simmanager/MSimCallForwardingManager;

    # getter for: Lcom/android/settings/simmanager/MSimCallForwardingManager;->sim2Number:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/settings/simmanager/MSimCallForwardingManager;->access$500(Lcom/android/settings/simmanager/MSimCallForwardingManager;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 354
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 355
    .local v0, "intent":Landroid/content/Intent;
    const-string v4, "sim1Number"

    iget-object v5, p0, Lcom/android/settings/simmanager/MSimCallForwardingManager$2;->this$0:Lcom/android/settings/simmanager/MSimCallForwardingManager;

    # getter for: Lcom/android/settings/simmanager/MSimCallForwardingManager;->sim1Number:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/settings/simmanager/MSimCallForwardingManager;->access$400(Lcom/android/settings/simmanager/MSimCallForwardingManager;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 356
    const-string v4, "sim2Number"

    iget-object v5, p0, Lcom/android/settings/simmanager/MSimCallForwardingManager$2;->this$0:Lcom/android/settings/simmanager/MSimCallForwardingManager;

    # getter for: Lcom/android/settings/simmanager/MSimCallForwardingManager;->sim2Number:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/settings/simmanager/MSimCallForwardingManager;->access$500(Lcom/android/settings/simmanager/MSimCallForwardingManager;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 357
    iget-object v4, p0, Lcom/android/settings/simmanager/MSimCallForwardingManager$2;->this$0:Lcom/android/settings/simmanager/MSimCallForwardingManager;

    const/4 v5, 0x1

    # invokes: Lcom/android/settings/simmanager/MSimCallForwardingManager;->startSettingOn(Landroid/content/Intent;Z)V
    invoke-static {v4, v0, v5}, Lcom/android/settings/simmanager/MSimCallForwardingManager;->access$300(Lcom/android/settings/simmanager/MSimCallForwardingManager;Landroid/content/Intent;Z)V

    goto/16 :goto_0

    .line 340
    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
    .end packed-switch
.end method
