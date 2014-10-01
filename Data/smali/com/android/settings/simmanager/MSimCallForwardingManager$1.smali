.class Lcom/android/settings/simmanager/MSimCallForwardingManager$1;
.super Landroid/content/BroadcastReceiver;
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
    .line 104
    iput-object p1, p0, Lcom/android/settings/simmanager/MSimCallForwardingManager$1;->this$0:Lcom/android/settings/simmanager/MSimCallForwardingManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 109
    const-string v0, "MSimCallForwardingManager"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.CALL_FORWARD_ON_EVENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 114
    iget-object v0, p0, Lcom/android/settings/simmanager/MSimCallForwardingManager$1;->this$0:Lcom/android/settings/simmanager/MSimCallForwardingManager;

    invoke-virtual {v0, p1, v5}, Lcom/android/settings/simmanager/MSimCallForwardingManager;->showCallForwardSettingPreogress(Landroid/content/Context;I)V

    .line 115
    new-instance v0, Lcom/android/settings/simmanager/MSimCallForwardingManager$ProcessForwardSetting;

    iget-object v1, p0, Lcom/android/settings/simmanager/MSimCallForwardingManager$1;->this$0:Lcom/android/settings/simmanager/MSimCallForwardingManager;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/settings/simmanager/MSimCallForwardingManager$ProcessForwardSetting;-><init>(Lcom/android/settings/simmanager/MSimCallForwardingManager;Lcom/android/settings/simmanager/MSimCallForwardingManager$1;)V

    new-array v1, v6, [Ljava/lang/Long;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lcom/android/settings/simmanager/MSimCallForwardingManager$ProcessForwardSetting;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 201
    :cond_0
    :goto_0
    return-void

    .line 117
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.CALL_FORWARD_OFF_EVENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 119
    iget-object v0, p0, Lcom/android/settings/simmanager/MSimCallForwardingManager$1;->this$0:Lcom/android/settings/simmanager/MSimCallForwardingManager;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Lcom/android/settings/simmanager/MSimCallForwardingManager;->showCallForwardSettingPreogress(Landroid/content/Context;I)V

    .line 120
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/simmanager/MSimCallForwardingService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 121
    const-string v1, "sim"

    const-string v2, "sim1"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 122
    const-string v1, "isFromSwitch"

    const-string v2, "TRUE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 123
    const-string v1, "actionCF"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 124
    iget-object v1, p0, Lcom/android/settings/simmanager/MSimCallForwardingManager$1;->this$0:Lcom/android/settings/simmanager/MSimCallForwardingManager;

    # getter for: Lcom/android/settings/simmanager/MSimCallForwardingManager;->activity:Landroid/preference/PreferenceActivity;
    invoke-static {v1}, Lcom/android/settings/simmanager/MSimCallForwardingManager;->access$100(Lcom/android/settings/simmanager/MSimCallForwardingManager;)Landroid/preference/PreferenceActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 126
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.CALL_FORWARD_ON_DONE_EVENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 127
    iget-object v0, p0, Lcom/android/settings/simmanager/MSimCallForwardingManager$1;->this$0:Lcom/android/settings/simmanager/MSimCallForwardingManager;

    # getter for: Lcom/android/settings/simmanager/MSimCallForwardingManager;->activity:Landroid/preference/PreferenceActivity;
    invoke-static {v0}, Lcom/android/settings/simmanager/MSimCallForwardingManager;->access$100(Lcom/android/settings/simmanager/MSimCallForwardingManager;)Landroid/preference/PreferenceActivity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DISMISS_ON_UPDATING_PROGRESS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 128
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "call_forward_state"

    const-string v2, "on"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 130
    iget-object v0, p0, Lcom/android/settings/simmanager/MSimCallForwardingManager$1;->this$0:Lcom/android/settings/simmanager/MSimCallForwardingManager;

    # getter for: Lcom/android/settings/simmanager/MSimCallForwardingManager;->activity:Landroid/preference/PreferenceActivity;
    invoke-static {v0}, Lcom/android/settings/simmanager/MSimCallForwardingManager;->access$100(Lcom/android/settings/simmanager/MSimCallForwardingManager;)Landroid/preference/PreferenceActivity;

    move-result-object v0

    const v1, 0x7f070828

    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 132
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.CALL_FORWARD_OFF_DONE_EVENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 133
    iget-object v0, p0, Lcom/android/settings/simmanager/MSimCallForwardingManager$1;->this$0:Lcom/android/settings/simmanager/MSimCallForwardingManager;

    # getter for: Lcom/android/settings/simmanager/MSimCallForwardingManager;->activity:Landroid/preference/PreferenceActivity;
    invoke-static {v0}, Lcom/android/settings/simmanager/MSimCallForwardingManager;->access$100(Lcom/android/settings/simmanager/MSimCallForwardingManager;)Landroid/preference/PreferenceActivity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DISMISS_OFF_UPDATING_PROGRESS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 134
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "call_forward_state"

    const-string v2, "off"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 136
    iget-object v0, p0, Lcom/android/settings/simmanager/MSimCallForwardingManager$1;->this$0:Lcom/android/settings/simmanager/MSimCallForwardingManager;

    # getter for: Lcom/android/settings/simmanager/MSimCallForwardingManager;->activity:Landroid/preference/PreferenceActivity;
    invoke-static {v0}, Lcom/android/settings/simmanager/MSimCallForwardingManager;->access$100(Lcom/android/settings/simmanager/MSimCallForwardingManager;)Landroid/preference/PreferenceActivity;

    move-result-object v0

    const v1, 0x7f070829

    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 138
    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.CALL_FORWARD_ON_CANCEL_EVENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 139
    iget-object v0, p0, Lcom/android/settings/simmanager/MSimCallForwardingManager$1;->this$0:Lcom/android/settings/simmanager/MSimCallForwardingManager;

    # getter for: Lcom/android/settings/simmanager/MSimCallForwardingManager;->mCallForwardScreen:Lcom/android/settings/simmanager/MSimCallForwardingPreferenceScreen;
    invoke-static {v0}, Lcom/android/settings/simmanager/MSimCallForwardingManager;->access$200(Lcom/android/settings/simmanager/MSimCallForwardingManager;)Lcom/android/settings/simmanager/MSimCallForwardingPreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/android/settings/simmanager/MSimCallForwardingPreferenceScreen;->setSwitchOn(Z)V

    goto/16 :goto_0

    .line 141
    :cond_5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.CALL_FORWARD_OFF_CANCEL_EVENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 142
    iget-object v0, p0, Lcom/android/settings/simmanager/MSimCallForwardingManager$1;->this$0:Lcom/android/settings/simmanager/MSimCallForwardingManager;

    # getter for: Lcom/android/settings/simmanager/MSimCallForwardingManager;->mCallForwardScreen:Lcom/android/settings/simmanager/MSimCallForwardingPreferenceScreen;
    invoke-static {v0}, Lcom/android/settings/simmanager/MSimCallForwardingManager;->access$200(Lcom/android/settings/simmanager/MSimCallForwardingManager;)Lcom/android/settings/simmanager/MSimCallForwardingPreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/android/settings/simmanager/MSimCallForwardingPreferenceScreen;->setSwitchOn(Z)V

    goto/16 :goto_0

    .line 144
    :cond_6
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.CALL_FORWARD_TBD_EVENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 145
    const-string v0, "sim1Number"

    iget-object v1, p0, Lcom/android/settings/simmanager/MSimCallForwardingManager$1;->this$0:Lcom/android/settings/simmanager/MSimCallForwardingManager;

    # getter for: Lcom/android/settings/simmanager/MSimCallForwardingManager;->activity:Landroid/preference/PreferenceActivity;
    invoke-static {v1}, Lcom/android/settings/simmanager/MSimCallForwardingManager;->access$100(Lcom/android/settings/simmanager/MSimCallForwardingManager;)Landroid/preference/PreferenceActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "call_forwarding_sim1Number"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 147
    const-string v0, "sim2Number"

    iget-object v1, p0, Lcom/android/settings/simmanager/MSimCallForwardingManager$1;->this$0:Lcom/android/settings/simmanager/MSimCallForwardingManager;

    # getter for: Lcom/android/settings/simmanager/MSimCallForwardingManager;->activity:Landroid/preference/PreferenceActivity;
    invoke-static {v1}, Lcom/android/settings/simmanager/MSimCallForwardingManager;->access$100(Lcom/android/settings/simmanager/MSimCallForwardingManager;)Landroid/preference/PreferenceActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "call_forwarding_sim2Number"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 149
    iget-object v0, p0, Lcom/android/settings/simmanager/MSimCallForwardingManager$1;->this$0:Lcom/android/settings/simmanager/MSimCallForwardingManager;

    # invokes: Lcom/android/settings/simmanager/MSimCallForwardingManager;->startSettingOn(Landroid/content/Intent;Z)V
    invoke-static {v0, p2, v6}, Lcom/android/settings/simmanager/MSimCallForwardingManager;->access$300(Lcom/android/settings/simmanager/MSimCallForwardingManager;Landroid/content/Intent;Z)V

    goto/16 :goto_0

    .line 151
    :cond_7
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.CALL_FORWARD_UPDATE_TBD_EVENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 152
    const-string v0, "sim1Number"

    iget-object v1, p0, Lcom/android/settings/simmanager/MSimCallForwardingManager$1;->this$0:Lcom/android/settings/simmanager/MSimCallForwardingManager;

    # getter for: Lcom/android/settings/simmanager/MSimCallForwardingManager;->activity:Landroid/preference/PreferenceActivity;
    invoke-static {v1}, Lcom/android/settings/simmanager/MSimCallForwardingManager;->access$100(Lcom/android/settings/simmanager/MSimCallForwardingManager;)Landroid/preference/PreferenceActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "call_forwarding_sim1Number"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 154
    const-string v0, "sim2Number"

    iget-object v1, p0, Lcom/android/settings/simmanager/MSimCallForwardingManager$1;->this$0:Lcom/android/settings/simmanager/MSimCallForwardingManager;

    # getter for: Lcom/android/settings/simmanager/MSimCallForwardingManager;->activity:Landroid/preference/PreferenceActivity;
    invoke-static {v1}, Lcom/android/settings/simmanager/MSimCallForwardingManager;->access$100(Lcom/android/settings/simmanager/MSimCallForwardingManager;)Landroid/preference/PreferenceActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "call_forwarding_sim2Number"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 156
    iget-object v0, p0, Lcom/android/settings/simmanager/MSimCallForwardingManager$1;->this$0:Lcom/android/settings/simmanager/MSimCallForwardingManager;

    # invokes: Lcom/android/settings/simmanager/MSimCallForwardingManager;->startSettingOn(Landroid/content/Intent;Z)V
    invoke-static {v0, p2, v5}, Lcom/android/settings/simmanager/MSimCallForwardingManager;->access$300(Lcom/android/settings/simmanager/MSimCallForwardingManager;Landroid/content/Intent;Z)V

    goto/16 :goto_0

    .line 158
    :cond_8
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.CALL_FORWARD_NO_NUMBER_EVENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 159
    iget-object v0, p0, Lcom/android/settings/simmanager/MSimCallForwardingManager$1;->this$0:Lcom/android/settings/simmanager/MSimCallForwardingManager;

    iget-object v1, p0, Lcom/android/settings/simmanager/MSimCallForwardingManager$1;->this$0:Lcom/android/settings/simmanager/MSimCallForwardingManager;

    # getter for: Lcom/android/settings/simmanager/MSimCallForwardingManager;->sim1Number:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings/simmanager/MSimCallForwardingManager;->access$400(Lcom/android/settings/simmanager/MSimCallForwardingManager;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/simmanager/MSimCallForwardingManager$1;->this$0:Lcom/android/settings/simmanager/MSimCallForwardingManager;

    # getter for: Lcom/android/settings/simmanager/MSimCallForwardingManager;->sim2Number:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings/simmanager/MSimCallForwardingManager;->access$500(Lcom/android/settings/simmanager/MSimCallForwardingManager;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "READ_NUMBER"

    # invokes: Lcom/android/settings/simmanager/MSimCallForwardingManager;->showInputDialog(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    invoke-static {v0, v1, v2, v5, v3}, Lcom/android/settings/simmanager/MSimCallForwardingManager;->access$600(Lcom/android/settings/simmanager/MSimCallForwardingManager;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 161
    :cond_9
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.CALL_FORWARD_ON_ERROR_EVENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 162
    iget-object v0, p0, Lcom/android/settings/simmanager/MSimCallForwardingManager$1;->this$0:Lcom/android/settings/simmanager/MSimCallForwardingManager;

    # getter for: Lcom/android/settings/simmanager/MSimCallForwardingManager;->activity:Landroid/preference/PreferenceActivity;
    invoke-static {v0}, Lcom/android/settings/simmanager/MSimCallForwardingManager;->access$100(Lcom/android/settings/simmanager/MSimCallForwardingManager;)Landroid/preference/PreferenceActivity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DISMISS_ON_UPDATING_PROGRESS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 163
    iget-object v0, p0, Lcom/android/settings/simmanager/MSimCallForwardingManager$1;->this$0:Lcom/android/settings/simmanager/MSimCallForwardingManager;

    const-string v1, "android.intent.action.CALL_FORWARD_OFF_CANCEL_EVENT"

    # invokes: Lcom/android/settings/simmanager/MSimCallForwardingManager;->showErrorAlert(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/settings/simmanager/MSimCallForwardingManager;->access$700(Lcom/android/settings/simmanager/MSimCallForwardingManager;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 165
    :cond_a
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.CALL_FORWARD_UPDATE_ON_ERROR_EVENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 166
    iget-object v0, p0, Lcom/android/settings/simmanager/MSimCallForwardingManager$1;->this$0:Lcom/android/settings/simmanager/MSimCallForwardingManager;

    # getter for: Lcom/android/settings/simmanager/MSimCallForwardingManager;->activity:Landroid/preference/PreferenceActivity;
    invoke-static {v0}, Lcom/android/settings/simmanager/MSimCallForwardingManager;->access$100(Lcom/android/settings/simmanager/MSimCallForwardingManager;)Landroid/preference/PreferenceActivity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DISMISS_ON_UPDATING_PROGRESS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 167
    iget-object v0, p0, Lcom/android/settings/simmanager/MSimCallForwardingManager$1;->this$0:Lcom/android/settings/simmanager/MSimCallForwardingManager;

    const-string v1, "android.intent.action.CALL_FORWARD_ON_CANCEL_EVENT"

    # invokes: Lcom/android/settings/simmanager/MSimCallForwardingManager;->showErrorAlert(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/settings/simmanager/MSimCallForwardingManager;->access$700(Lcom/android/settings/simmanager/MSimCallForwardingManager;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 169
    :cond_b
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.CALL_FORWARD_OFF_ERROR_EVENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 170
    iget-object v0, p0, Lcom/android/settings/simmanager/MSimCallForwardingManager$1;->this$0:Lcom/android/settings/simmanager/MSimCallForwardingManager;

    # getter for: Lcom/android/settings/simmanager/MSimCallForwardingManager;->activity:Landroid/preference/PreferenceActivity;
    invoke-static {v0}, Lcom/android/settings/simmanager/MSimCallForwardingManager;->access$100(Lcom/android/settings/simmanager/MSimCallForwardingManager;)Landroid/preference/PreferenceActivity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DISMISS_OFF_UPDATING_PROGRESS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 171
    iget-object v0, p0, Lcom/android/settings/simmanager/MSimCallForwardingManager$1;->this$0:Lcom/android/settings/simmanager/MSimCallForwardingManager;

    const-string v1, "android.intent.action.CALL_FORWARD_ON_CANCEL_EVENT"

    # invokes: Lcom/android/settings/simmanager/MSimCallForwardingManager;->showErrorAlert(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/settings/simmanager/MSimCallForwardingManager;->access$700(Lcom/android/settings/simmanager/MSimCallForwardingManager;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 173
    :cond_c
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    :cond_d
    iget-object v0, p0, Lcom/android/settings/simmanager/MSimCallForwardingManager$1;->this$0:Lcom/android/settings/simmanager/MSimCallForwardingManager;

    # getter for: Lcom/android/settings/simmanager/MSimCallForwardingManager;->activity:Landroid/preference/PreferenceActivity;
    invoke-static {v0}, Lcom/android/settings/simmanager/MSimCallForwardingManager;->access$100(Lcom/android/settings/simmanager/MSimCallForwardingManager;)Landroid/preference/PreferenceActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    invoke-static {v0, v1, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v6, :cond_e

    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/telephony/MSimTelephonyManager;->hasIccCard(I)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/telephony/MSimTelephonyManager;->hasIccCard(I)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/settings/simmanager/MSimCallForwardingManager$1;->this$0:Lcom/android/settings/simmanager/MSimCallForwardingManager;

    # invokes: Lcom/android/settings/simmanager/MSimCallForwardingManager;->isSimActived(I)Z
    invoke-static {v0, v5}, Lcom/android/settings/simmanager/MSimCallForwardingManager;->access$800(Lcom/android/settings/simmanager/MSimCallForwardingManager;I)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/settings/simmanager/MSimCallForwardingManager$1;->this$0:Lcom/android/settings/simmanager/MSimCallForwardingManager;

    # invokes: Lcom/android/settings/simmanager/MSimCallForwardingManager;->isSimActived(I)Z
    invoke-static {v0, v6}, Lcom/android/settings/simmanager/MSimCallForwardingManager;->access$800(Lcom/android/settings/simmanager/MSimCallForwardingManager;I)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "false"

    iget-object v1, p0, Lcom/android/settings/simmanager/MSimCallForwardingManager$1;->this$0:Lcom/android/settings/simmanager/MSimCallForwardingManager;

    # getter for: Lcom/android/settings/simmanager/MSimCallForwardingManager;->activity:Landroid/preference/PreferenceActivity;
    invoke-static {v1}, Lcom/android/settings/simmanager/MSimCallForwardingManager;->access$100(Lcom/android/settings/simmanager/MSimCallForwardingManager;)Landroid/preference/PreferenceActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "call_forward_enable"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 182
    iget-object v0, p0, Lcom/android/settings/simmanager/MSimCallForwardingManager$1;->this$0:Lcom/android/settings/simmanager/MSimCallForwardingManager;

    # getter for: Lcom/android/settings/simmanager/MSimCallForwardingManager;->mCallForwardScreen:Lcom/android/settings/simmanager/MSimCallForwardingPreferenceScreen;
    invoke-static {v0}, Lcom/android/settings/simmanager/MSimCallForwardingManager;->access$200(Lcom/android/settings/simmanager/MSimCallForwardingManager;)Lcom/android/settings/simmanager/MSimCallForwardingPreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/android/settings/simmanager/MSimCallForwardingPreferenceScreen;->setEnabled(Z)V

    .line 183
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/telephony/MSimTelephonyManager;->getSimSerialNumber(I)Ljava/lang/String;

    move-result-object v0

    .line 184
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/telephony/MSimTelephonyManager;->getSimSerialNumber(I)Ljava/lang/String;

    move-result-object v1

    .line 185
    const-string v2, "MSimCallForwardingManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sim1 number: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " sim2 number: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    iget-object v2, p0, Lcom/android/settings/simmanager/MSimCallForwardingManager$1;->this$0:Lcom/android/settings/simmanager/MSimCallForwardingManager;

    # getter for: Lcom/android/settings/simmanager/MSimCallForwardingManager;->activity:Landroid/preference/PreferenceActivity;
    invoke-static {v2}, Lcom/android/settings/simmanager/MSimCallForwardingManager;->access$100(Lcom/android/settings/simmanager/MSimCallForwardingManager;)Landroid/preference/PreferenceActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/simmanager/MSimCallForwardingManager;->isSimCardChanged(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 187
    iget-object v0, p0, Lcom/android/settings/simmanager/MSimCallForwardingManager$1;->this$0:Lcom/android/settings/simmanager/MSimCallForwardingManager;

    # getter for: Lcom/android/settings/simmanager/MSimCallForwardingManager;->activity:Landroid/preference/PreferenceActivity;
    invoke-static {v0}, Lcom/android/settings/simmanager/MSimCallForwardingManager;->access$100(Lcom/android/settings/simmanager/MSimCallForwardingManager;)Landroid/preference/PreferenceActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "call_forwarding_sim_serial_number_1"

    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/telephony/MSimTelephonyManager;->getSimSerialNumber(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 190
    iget-object v0, p0, Lcom/android/settings/simmanager/MSimCallForwardingManager$1;->this$0:Lcom/android/settings/simmanager/MSimCallForwardingManager;

    # getter for: Lcom/android/settings/simmanager/MSimCallForwardingManager;->activity:Landroid/preference/PreferenceActivity;
    invoke-static {v0}, Lcom/android/settings/simmanager/MSimCallForwardingManager;->access$100(Lcom/android/settings/simmanager/MSimCallForwardingManager;)Landroid/preference/PreferenceActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "call_forwarding_sim_serial_number_2"

    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/telephony/MSimTelephonyManager;->getSimSerialNumber(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 193
    iget-object v0, p0, Lcom/android/settings/simmanager/MSimCallForwardingManager$1;->this$0:Lcom/android/settings/simmanager/MSimCallForwardingManager;

    # getter for: Lcom/android/settings/simmanager/MSimCallForwardingManager;->mCallForwardScreen:Lcom/android/settings/simmanager/MSimCallForwardingPreferenceScreen;
    invoke-static {v0}, Lcom/android/settings/simmanager/MSimCallForwardingManager;->access$200(Lcom/android/settings/simmanager/MSimCallForwardingManager;)Lcom/android/settings/simmanager/MSimCallForwardingPreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/android/settings/simmanager/MSimCallForwardingPreferenceScreen;->setSwitchOn(Z)V

    goto/16 :goto_0

    .line 197
    :cond_e
    iget-object v0, p0, Lcom/android/settings/simmanager/MSimCallForwardingManager$1;->this$0:Lcom/android/settings/simmanager/MSimCallForwardingManager;

    # getter for: Lcom/android/settings/simmanager/MSimCallForwardingManager;->mCallForwardScreen:Lcom/android/settings/simmanager/MSimCallForwardingPreferenceScreen;
    invoke-static {v0}, Lcom/android/settings/simmanager/MSimCallForwardingManager;->access$200(Lcom/android/settings/simmanager/MSimCallForwardingManager;)Lcom/android/settings/simmanager/MSimCallForwardingPreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/android/settings/simmanager/MSimCallForwardingPreferenceScreen;->setEnabled(Z)V

    goto/16 :goto_0
.end method
