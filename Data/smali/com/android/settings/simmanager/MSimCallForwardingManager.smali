.class public Lcom/android/settings/simmanager/MSimCallForwardingManager;
.super Ljava/lang/Object;
.source "MSimCallForwardingManager.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/simmanager/MSimCallForwardingManager$ProcessForwardSetting;
    }
.end annotation


# instance fields
.field private activity:Landroid/preference/PreferenceActivity;

.field private mCallForwardScreen:Lcom/android/settings/simmanager/MSimCallForwardingPreferenceScreen;

.field private final mHandler:Landroid/os/Handler;

.field private mSwitchForwardingReceiver:Landroid/content/BroadcastReceiver;

.field private sim1Number:Ljava/lang/String;

.field private sim2Number:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/preference/PreferenceActivity;)V
    .locals 6
    .param p1, "activity"    # Landroid/preference/PreferenceActivity;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 204
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-object v2, p0, Lcom/android/settings/simmanager/MSimCallForwardingManager;->mCallForwardScreen:Lcom/android/settings/simmanager/MSimCallForwardingPreferenceScreen;

    .line 99
    iput-object v2, p0, Lcom/android/settings/simmanager/MSimCallForwardingManager;->activity:Landroid/preference/PreferenceActivity;

    .line 101
    iput-object v2, p0, Lcom/android/settings/simmanager/MSimCallForwardingManager;->sim1Number:Ljava/lang/String;

    .line 102
    iput-object v2, p0, Lcom/android/settings/simmanager/MSimCallForwardingManager;->sim2Number:Ljava/lang/String;

    .line 104
    new-instance v2, Lcom/android/settings/simmanager/MSimCallForwardingManager$1;

    invoke-direct {v2, p0}, Lcom/android/settings/simmanager/MSimCallForwardingManager$1;-><init>(Lcom/android/settings/simmanager/MSimCallForwardingManager;)V

    iput-object v2, p0, Lcom/android/settings/simmanager/MSimCallForwardingManager;->mSwitchForwardingReceiver:Landroid/content/BroadcastReceiver;

    .line 331
    new-instance v2, Lcom/android/settings/simmanager/MSimCallForwardingManager$2;

    invoke-direct {v2, p0}, Lcom/android/settings/simmanager/MSimCallForwardingManager$2;-><init>(Lcom/android/settings/simmanager/MSimCallForwardingManager;)V

    iput-object v2, p0, Lcom/android/settings/simmanager/MSimCallForwardingManager;->mHandler:Landroid/os/Handler;

    .line 205
    iput-object p1, p0, Lcom/android/settings/simmanager/MSimCallForwardingManager;->activity:Landroid/preference/PreferenceActivity;

    .line 206
    const-string v2, "call_forward_key"

    invoke-virtual {p1, v2}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/settings/simmanager/MSimCallForwardingPreferenceScreen;

    iput-object v2, p0, Lcom/android/settings/simmanager/MSimCallForwardingManager;->mCallForwardScreen:Lcom/android/settings/simmanager/MSimCallForwardingPreferenceScreen;

    .line 207
    iget-object v2, p0, Lcom/android/settings/simmanager/MSimCallForwardingManager;->mCallForwardScreen:Lcom/android/settings/simmanager/MSimCallForwardingPreferenceScreen;

    invoke-virtual {v2, p0}, Lcom/android/settings/simmanager/MSimCallForwardingPreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 209
    const-string v2, "phone_msim"

    invoke-virtual {p1, v2}, Landroid/preference/PreferenceActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/MSimTelephonyManager;

    .line 211
    .local v1, "manager":Landroid/telephony/MSimTelephonyManager;
    invoke-virtual {v1, v4}, Landroid/telephony/MSimTelephonyManager;->getLine1Number(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/simmanager/MSimCallForwardingManager;->sim1Number:Ljava/lang/String;

    .line 212
    invoke-virtual {v1, v3}, Landroid/telephony/MSimTelephonyManager;->getLine1Number(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/simmanager/MSimCallForwardingManager;->sim2Number:Ljava/lang/String;

    .line 214
    invoke-virtual {p1}, Landroid/preference/PreferenceActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "airplane_mode_on"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v3, :cond_2

    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/telephony/MSimTelephonyManager;->hasIccCard(I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/telephony/MSimTelephonyManager;->hasIccCard(I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0, v4}, Lcom/android/settings/simmanager/MSimCallForwardingManager;->isSimActived(I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0, v3}, Lcom/android/settings/simmanager/MSimCallForwardingManager;->isSimActived(I)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    :goto_0
    if-nez v2, :cond_0

    .line 218
    iget-object v2, p0, Lcom/android/settings/simmanager/MSimCallForwardingManager;->mCallForwardScreen:Lcom/android/settings/simmanager/MSimCallForwardingPreferenceScreen;

    invoke-virtual {v2, v4}, Lcom/android/settings/simmanager/MSimCallForwardingPreferenceScreen;->setEnabled(Z)V

    .line 220
    :cond_0
    invoke-virtual {p1}, Landroid/preference/PreferenceActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "call_forward_enable"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 221
    .local v0, "flag":Ljava/lang/String;
    const-string v2, "MSimCallForwardingManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "call_forward_enable: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    const-string v2, "false"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 223
    iget-object v2, p0, Lcom/android/settings/simmanager/MSimCallForwardingManager;->mCallForwardScreen:Lcom/android/settings/simmanager/MSimCallForwardingPreferenceScreen;

    invoke-virtual {v2, v4}, Lcom/android/settings/simmanager/MSimCallForwardingPreferenceScreen;->setEnabled(Z)V

    .line 225
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/settings/simmanager/MSimCallForwardingManager;->registerCallForwardReveiver(Landroid/preference/PreferenceActivity;)V

    .line 226
    return-void

    .end local v0    # "flag":Ljava/lang/String;
    :cond_2
    move v2, v4

    .line 214
    goto :goto_0
.end method

.method static synthetic access$100(Lcom/android/settings/simmanager/MSimCallForwardingManager;)Landroid/preference/PreferenceActivity;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/simmanager/MSimCallForwardingManager;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/settings/simmanager/MSimCallForwardingManager;->activity:Landroid/preference/PreferenceActivity;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings/simmanager/MSimCallForwardingManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/simmanager/MSimCallForwardingManager;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/settings/simmanager/MSimCallForwardingManager;->showNoNumberAlert()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/simmanager/MSimCallForwardingManager;)Lcom/android/settings/simmanager/MSimCallForwardingPreferenceScreen;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/simmanager/MSimCallForwardingManager;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/settings/simmanager/MSimCallForwardingManager;->mCallForwardScreen:Lcom/android/settings/simmanager/MSimCallForwardingPreferenceScreen;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/simmanager/MSimCallForwardingManager;Landroid/content/Intent;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/simmanager/MSimCallForwardingManager;
    .param p1, "x1"    # Landroid/content/Intent;
    .param p2, "x2"    # Z

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lcom/android/settings/simmanager/MSimCallForwardingManager;->startSettingOn(Landroid/content/Intent;Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/simmanager/MSimCallForwardingManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/simmanager/MSimCallForwardingManager;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/settings/simmanager/MSimCallForwardingManager;->sim1Number:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/settings/simmanager/MSimCallForwardingManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/simmanager/MSimCallForwardingManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/settings/simmanager/MSimCallForwardingManager;->sim1Number:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/settings/simmanager/MSimCallForwardingManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/simmanager/MSimCallForwardingManager;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/settings/simmanager/MSimCallForwardingManager;->sim2Number:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/settings/simmanager/MSimCallForwardingManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/simmanager/MSimCallForwardingManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/settings/simmanager/MSimCallForwardingManager;->sim2Number:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/settings/simmanager/MSimCallForwardingManager;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/simmanager/MSimCallForwardingManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/simmanager/MSimCallForwardingManager;->showInputDialog(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/simmanager/MSimCallForwardingManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/simmanager/MSimCallForwardingManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/settings/simmanager/MSimCallForwardingManager;->showErrorAlert(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings/simmanager/MSimCallForwardingManager;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/simmanager/MSimCallForwardingManager;
    .param p1, "x1"    # I

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/settings/simmanager/MSimCallForwardingManager;->isSimActived(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/settings/simmanager/MSimCallForwardingManager;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/simmanager/MSimCallForwardingManager;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/settings/simmanager/MSimCallForwardingManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private isSimActived(I)Z
    .locals 2
    .param p1, "subscrption"    # I

    .prologue
    .line 435
    invoke-static {}, Lcom/codeaurora/telephony/msim/SubscriptionManager;->getInstance()Lcom/codeaurora/telephony/msim/SubscriptionManager;

    move-result-object v0

    .line 436
    .local v0, "mSub":Lcom/codeaurora/telephony/msim/SubscriptionManager;
    invoke-virtual {v0, p1}, Lcom/codeaurora/telephony/msim/SubscriptionManager;->isSubActive(I)Z

    move-result v1

    return v1
.end method

.method public static isSimCardChanged(Landroid/content/Context;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x1

    .line 411
    const/4 v2, 0x0

    .line 412
    .local v2, "isChanged":Z
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "call_forwarding_sim_serial_number_1"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 414
    .local v3, "prevImsi1":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "call_forwarding_sim_serial_number_2"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 418
    .local v4, "prevImsi2":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/telephony/MSimTelephonyManager;->getSimSerialNumber(I)Ljava/lang/String;

    move-result-object v0

    .line 419
    .local v0, "currImsi1":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/telephony/MSimTelephonyManager;->getSimSerialNumber(I)Ljava/lang/String;

    move-result-object v1

    .line 422
    .local v1, "currImsi2":Ljava/lang/String;
    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    .line 431
    :cond_0
    :goto_0
    return v5

    .line 424
    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 426
    const/4 v2, 0x0

    :goto_1
    move v5, v2

    .line 431
    goto :goto_0

    .line 429
    :cond_2
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public static makeProxy(Landroid/preference/PreferenceActivity;)Lcom/android/settings/simmanager/MSimCallForwardingManager;
    .locals 1
    .param p0, "activity"    # Landroid/preference/PreferenceActivity;

    .prologue
    .line 264
    new-instance v0, Lcom/android/settings/simmanager/MSimCallForwardingManager;

    invoke-direct {v0, p0}, Lcom/android/settings/simmanager/MSimCallForwardingManager;-><init>(Landroid/preference/PreferenceActivity;)V

    .line 265
    .local v0, "mc":Lcom/android/settings/simmanager/MSimCallForwardingManager;
    return-object v0
.end method

.method private registerCallForwardReveiver(Landroid/preference/PreferenceActivity;)V
    .locals 2
    .param p1, "activity"    # Landroid/preference/PreferenceActivity;

    .prologue
    .line 230
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 231
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 232
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 234
    const-string v1, "android.intent.action.CALL_FORWARD_ON_EVENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 235
    const-string v1, "android.intent.action.CALL_FORWARD_OFF_EVENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 236
    const-string v1, "android.intent.action.CALL_FORWARD_ON_DONE_EVENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 237
    const-string v1, "android.intent.action.CALL_FORWARD_OFF_DONE_EVENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 238
    const-string v1, "android.intent.action.CALL_FORWARD_ON_ERROR_EVENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 239
    const-string v1, "android.intent.action.CALL_FORWARD_UPDATE_ON_ERROR_EVENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 240
    const-string v1, "android.intent.action.CALL_FORWARD_OFF_ERROR_EVENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 241
    const-string v1, "android.intent.action.CALL_FORWARD_ON_CANCEL_EVENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 242
    const-string v1, "android.intent.action.CALL_FORWARD_OFF_CANCEL_EVENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 243
    const-string v1, "android.intent.action.CALL_FORWARD_TBD_EVENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 244
    const-string v1, "android.intent.action.CALL_FORWARD_UPDATE_TBD_EVENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 245
    const-string v1, "android.intent.action.CALL_FORWARD_NO_NUMBER_EVENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 246
    iget-object v1, p0, Lcom/android/settings/simmanager/MSimCallForwardingManager;->mSwitchForwardingReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/preference/PreferenceActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 247
    return-void
.end method

.method private showErrorAlert(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 394
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/simmanager/MSimCallForwardingManager;->activity:Landroid/preference/PreferenceActivity;

    const-class v2, Lcom/android/settings/simmanager/MSimCallForwardingAlertActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 395
    const-string v1, "android.intent.action.CALL_FORWARD_ON_CANCEL_EVENT"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 396
    const-string v1, "flag"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 400
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/settings/simmanager/MSimCallForwardingManager;->activity:Landroid/preference/PreferenceActivity;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceActivity;->startActivity(Landroid/content/Intent;)V

    .line 401
    return-void

    .line 397
    :cond_1
    const-string v1, "android.intent.action.CALL_FORWARD_OFF_CANCEL_EVENT"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 398
    const-string v1, "flag"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method

.method private showInputDialog(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 3

    .prologue
    .line 384
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/simmanager/MSimCallForwardingManager;->activity:Landroid/preference/PreferenceActivity;

    const-class v2, Lcom/android/settings/simmanager/MSimCallForwardingDialogActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 385
    const-string v1, "case"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 386
    const-string v1, "sim1Number"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 387
    const-string v1, "sim2Number"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 388
    const-string v1, "enabledFlag"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 389
    iget-object v1, p0, Lcom/android/settings/simmanager/MSimCallForwardingManager;->activity:Landroid/preference/PreferenceActivity;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2}, Landroid/preference/PreferenceActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 390
    return-void
.end method

.method private showNoNumberAlert()V
    .locals 3

    .prologue
    .line 404
    const-string v0, "MSimCallForwardingManager"

    const-string v1, "showNoNumberAlert "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/simmanager/MSimCallForwardingManager;->activity:Landroid/preference/PreferenceActivity;

    const-class v2, Lcom/android/settings/simmanager/MSimCallForwardingAlertActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 406
    const-string v1, "flag"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 407
    iget-object v1, p0, Lcom/android/settings/simmanager/MSimCallForwardingManager;->activity:Landroid/preference/PreferenceActivity;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceActivity;->startActivity(Landroid/content/Intent;)V

    .line 408
    return-void
.end method

.method private startSettingOn(Landroid/content/Intent;Z)V
    .locals 3

    .prologue
    .line 368
    iget-object v0, p0, Lcom/android/settings/simmanager/MSimCallForwardingManager;->activity:Landroid/preference/PreferenceActivity;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/simmanager/MSimCallForwardingManager;->showCallForwardSettingPreogress(Landroid/content/Context;I)V

    .line 371
    new-instance v1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/settings/simmanager/MSimCallForwardingManager;->activity:Landroid/preference/PreferenceActivity;

    const-class v2, Lcom/android/settings/simmanager/MSimCallForwardingService;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 372
    if-eqz p1, :cond_0

    .line 373
    const-string v0, "sim1Number"

    const-string v2, "sim1Number"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 374
    const-string v0, "sim2Number"

    const-string v2, "sim2Number"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 376
    :cond_0
    const-string v0, "sim"

    const-string v2, "sim1"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 377
    const-string v2, "isFromSwitch"

    if-eqz p2, :cond_1

    const-string v0, "TRUE"

    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 378
    const-string v0, "actionCF"

    const/4 v2, 0x3

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 379
    iget-object v0, p0, Lcom/android/settings/simmanager/MSimCallForwardingManager;->activity:Landroid/preference/PreferenceActivity;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 380
    return-void

    .line 377
    :cond_1
    const-string v0, "FALSE"

    goto :goto_0
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    .line 259
    iget-object v0, p0, Lcom/android/settings/simmanager/MSimCallForwardingManager;->activity:Landroid/preference/PreferenceActivity;

    iget-object v1, p0, Lcom/android/settings/simmanager/MSimCallForwardingManager;->mSwitchForwardingReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 261
    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 8
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v7, 0x1

    .line 270
    const-string v4, "MSimCallForwardingManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onPreferenceTreeClick "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 273
    .local v1, "key":Ljava/lang/String;
    const-string v4, "call_forward_key"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 274
    iget-object v4, p0, Lcom/android/settings/simmanager/MSimCallForwardingManager;->mCallForwardScreen:Lcom/android/settings/simmanager/MSimCallForwardingPreferenceScreen;

    invoke-virtual {v4}, Lcom/android/settings/simmanager/MSimCallForwardingPreferenceScreen;->getSwitchOn()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 275
    iget-object v4, p0, Lcom/android/settings/simmanager/MSimCallForwardingManager;->activity:Landroid/preference/PreferenceActivity;

    invoke-virtual {v4}, Landroid/preference/PreferenceActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "call_forwarding_sim1Number"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 276
    .local v2, "storedSim1Number":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings/simmanager/MSimCallForwardingManager;->activity:Landroid/preference/PreferenceActivity;

    invoke-virtual {v4}, Landroid/preference/PreferenceActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "call_forwarding_sim2Number"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 277
    .local v3, "storedSim2Number":Ljava/lang/String;
    if-eqz v2, :cond_0

    if-nez v3, :cond_1

    .line 291
    .end local v2    # "storedSim1Number":Ljava/lang/String;
    .end local v3    # "storedSim2Number":Ljava/lang/String;
    :cond_0
    :goto_0
    return v7

    .line 278
    .restart local v2    # "storedSim1Number":Ljava/lang/String;
    .restart local v3    # "storedSim2Number":Ljava/lang/String;
    :cond_1
    const-string v4, "MSimCallForwardingManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/settings/simmanager/MSimCallForwardingManager;->sim1Number:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/simmanager/MSimCallForwardingManager;->sim2Number:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    const-string v4, "MSimCallForwardingManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    const/4 v0, 0x0

    .line 281
    .local v0, "flag":I
    iget-object v4, p0, Lcom/android/settings/simmanager/MSimCallForwardingManager;->sim1Number:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 282
    const/4 v0, 0x1

    .line 284
    :cond_2
    iget-object v4, p0, Lcom/android/settings/simmanager/MSimCallForwardingManager;->sim2Number:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 285
    add-int/lit8 v0, v0, 0x2

    .line 288
    :cond_3
    const-string v4, "STORED_NUMBER"

    invoke-direct {p0, v2, v3, v0, v4}, Lcom/android/settings/simmanager/MSimCallForwardingManager;->showInputDialog(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 250
    iget-object v1, p0, Lcom/android/settings/simmanager/MSimCallForwardingManager;->activity:Landroid/preference/PreferenceActivity;

    invoke-virtual {v1}, Landroid/preference/PreferenceActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "call_forward_state"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 251
    .local v0, "onOff":Ljava/lang/String;
    const-string v1, "off"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 252
    iget-object v1, p0, Lcom/android/settings/simmanager/MSimCallForwardingManager;->mCallForwardScreen:Lcom/android/settings/simmanager/MSimCallForwardingPreferenceScreen;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/settings/simmanager/MSimCallForwardingPreferenceScreen;->setSwitchOn(Z)V

    .line 256
    :goto_0
    return-void

    .line 254
    :cond_0
    iget-object v1, p0, Lcom/android/settings/simmanager/MSimCallForwardingManager;->mCallForwardScreen:Lcom/android/settings/simmanager/MSimCallForwardingPreferenceScreen;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/settings/simmanager/MSimCallForwardingPreferenceScreen;->setSwitchOn(Z)V

    goto :goto_0
.end method

.method public showCallForwardSettingPreogress(Landroid/content/Context;I)V
    .locals 4

    .prologue
    const/16 v3, 0x3e8

    .line 295
    if-nez p2, :cond_1

    .line 296
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/simmanager/MSimCallForwardingManager;->activity:Landroid/preference/PreferenceActivity;

    const-class v2, Lcom/android/settings/simmanager/MSimCallForwardingProgressActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 297
    const-string v1, "flag"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 298
    iget-object v1, p0, Lcom/android/settings/simmanager/MSimCallForwardingManager;->activity:Landroid/preference/PreferenceActivity;

    invoke-virtual {v1, v0, v3}, Landroid/preference/PreferenceActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 308
    :cond_0
    :goto_0
    return-void

    .line 299
    :cond_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    .line 300
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/simmanager/MSimCallForwardingManager;->activity:Landroid/preference/PreferenceActivity;

    const-class v2, Lcom/android/settings/simmanager/MSimCallForwardingProgressActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 301
    const-string v1, "flag"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 302
    iget-object v1, p0, Lcom/android/settings/simmanager/MSimCallForwardingManager;->activity:Landroid/preference/PreferenceActivity;

    invoke-virtual {v1, v0, v3}, Landroid/preference/PreferenceActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 303
    :cond_2
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 304
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/simmanager/MSimCallForwardingManager;->activity:Landroid/preference/PreferenceActivity;

    const-class v2, Lcom/android/settings/simmanager/MSimCallForwardingProgressActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 305
    const-string v1, "flag"

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 306
    iget-object v1, p0, Lcom/android/settings/simmanager/MSimCallForwardingManager;->activity:Landroid/preference/PreferenceActivity;

    invoke-virtual {v1, v0, v3}, Landroid/preference/PreferenceActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
