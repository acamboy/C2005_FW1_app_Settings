.class Lcom/sonyericsson/settings/smscounter/SmsCounterSettings$4;
.super Ljava/lang/Object;
.source "SmsCounterSettings.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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
    .line 293
    iput-object p1, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings$4;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 7
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 296
    iget-object v2, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings$4;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;

    # getter for: Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mFlightMode:Z
    invoke-static {v2}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->access$900(Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 298
    const-string v2, "Dcm Sms CounterDSDS"

    const-string v3, "Phone is in flight mode"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    iget-object v2, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings$4;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;

    # getter for: Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mOnOffSwitch:Landroid/widget/Switch;
    invoke-static {v2}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->access$1000(Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;)Landroid/widget/Switch;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/Switch;->setChecked(Z)V

    .line 301
    iget-object v2, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings$4;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;

    # getter for: Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mOnOffSwitch:Landroid/widget/Switch;
    invoke-static {v2}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->access$1000(Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;)Landroid/widget/Switch;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 302
    iget-object v2, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings$4;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;

    const v3, 0x7f07008a

    # invokes: Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->addMessagePreference(I)V
    invoke-static {v2, v3}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->access$1100(Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;I)V

    .line 354
    :goto_0
    return-void

    .line 303
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings$4;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;

    # getter for: Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mSimStatus:Z
    invoke-static {v2}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->access$1200(Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 305
    const-string v2, "Dcm Sms CounterDSDS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SIM"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings$4;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;

    # getter for: Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mSim:I
    invoke-static {v4}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->access$000(Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not inserted"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    iget-object v2, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings$4;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;

    # getter for: Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mOnOffSwitch:Landroid/widget/Switch;
    invoke-static {v2}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->access$1000(Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;)Landroid/widget/Switch;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/Switch;->setChecked(Z)V

    .line 308
    iget-object v2, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings$4;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;

    # getter for: Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mOnOffSwitch:Landroid/widget/Switch;
    invoke-static {v2}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->access$1000(Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;)Landroid/widget/Switch;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 309
    iget-object v2, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings$4;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;

    const v3, 0x7f07008b

    # invokes: Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->addMessagePreference(I)V
    invoke-static {v2, v3}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->access$1100(Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;I)V

    goto :goto_0

    .line 320
    :cond_1
    if-eqz p2, :cond_3

    .line 322
    const-string v2, "Dcm Sms CounterDSDS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SMS Counter for SIM"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings$4;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;

    # getter for: Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mSim:I
    invoke-static {v4}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->access$000(Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is enabled"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    iget-object v2, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings$4;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;

    # getter for: Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mOnOffSwitch:Landroid/widget/Switch;
    invoke-static {v2}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->access$1000(Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;)Landroid/widget/Switch;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/Switch;->setChecked(Z)V

    .line 325
    iget-object v2, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings$4;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;

    # getter for: Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mOnOffSwitch:Landroid/widget/Switch;
    invoke-static {v2}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->access$1000(Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;)Landroid/widget/Switch;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 326
    iget-object v2, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings$4;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;

    invoke-virtual {v2}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings$4;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;

    # getter for: Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mSummaryBar:Lcom/sonyericsson/settings/smscounter/SmsCounterBarPreference;
    invoke-static {v3}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->access$1300(Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;)Lcom/sonyericsson/settings/smscounter/SmsCounterBarPreference;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 327
    iget-object v2, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings$4;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;

    invoke-virtual {v2}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings$4;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;

    # getter for: Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mMessage:Lcom/sonyericsson/settings/smscounter/SmsCounterMessagePreference;
    invoke-static {v3}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->access$1400(Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;)Lcom/sonyericsson/settings/smscounter/SmsCounterMessagePreference;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 328
    iget-object v2, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings$4;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;

    invoke-virtual {v2}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings$4;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;

    # getter for: Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mWarningPreference:Landroid/preference/EditTextPreference;
    invoke-static {v3}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->access$600(Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;)Landroid/preference/EditTextPreference;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 329
    iget-object v2, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings$4;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;

    invoke-virtual {v2}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings$4;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;

    # getter for: Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mLimitPreference:Landroid/preference/EditTextPreference;
    invoke-static {v3}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->access$700(Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;)Landroid/preference/EditTextPreference;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 330
    iget-object v2, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings$4;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;

    invoke-virtual {v2}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings$4;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;

    # getter for: Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mCyclePreference:Landroid/preference/ListPreference;
    invoke-static {v3}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->access$1500(Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;)Landroid/preference/ListPreference;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 331
    iget-object v2, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings$4;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;

    # getter for: Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mSettings:Landroid/content/SharedPreferences;
    invoke-static {v2}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->access$1600(Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;)Landroid/content/SharedPreferences;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sms_counter_cycle"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings$4;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;

    # getter for: Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mSim:I
    invoke-static {v4}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->access$000(Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 332
    .local v0, "cycle":Ljava/lang/String;
    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 333
    iget-object v2, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings$4;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;

    invoke-virtual {v2}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings$4;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;

    # getter for: Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mStartDayPreference:Landroid/preference/Preference;
    invoke-static {v3}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->access$1700(Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 338
    :goto_1
    iget-object v2, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings$4;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;

    # getter for: Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mUtil:Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;
    invoke-static {v2}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->access$200(Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;)Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings$4;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;

    # getter for: Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mPrefs:Landroid/content/SharedPreferences;
    invoke-static {v3}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->access$100(Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-virtual {v2, v3, v5}, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->setSmsCounterStatus(Landroid/content/SharedPreferences;Z)V

    .line 341
    iget-object v2, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings$4;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;

    # setter for: Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mUpdateStatus:Z
    invoke-static {v2, v5}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->access$502(Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;Z)Z

    .line 342
    iget-object v2, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings$4;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;

    # invokes: Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->asyncUpdateSMSCount()V
    invoke-static {v2}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->access$1900(Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;)V

    goto/16 :goto_0

    .line 335
    :cond_2
    iget-object v2, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings$4;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;

    invoke-virtual {v2}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings$4;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;

    # getter for: Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mStartWeekPreference:Landroid/preference/ListPreference;
    invoke-static {v3}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->access$1800(Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;)Landroid/preference/ListPreference;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_1

    .line 344
    .end local v0    # "cycle":Ljava/lang/String;
    :cond_3
    const-string v2, "Dcm Sms CounterDSDS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SMS Counter for SIM"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings$4;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;

    # getter for: Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mSim:I
    invoke-static {v4}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->access$000(Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is diabled"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/MSimTelephonyManager;->getDefaultSubscription()I

    move-result v1

    .line 347
    .local v1, "mPrefDefaultSim":I
    iget-object v2, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings$4;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;

    # getter for: Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mOnOffSwitch:Landroid/widget/Switch;
    invoke-static {v2}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->access$1000(Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;)Landroid/widget/Switch;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/Switch;->setChecked(Z)V

    .line 348
    iget-object v2, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings$4;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;

    # getter for: Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mOnOffSwitch:Landroid/widget/Switch;
    invoke-static {v2}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->access$1000(Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;)Landroid/widget/Switch;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 349
    iget-object v2, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings$4;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;

    const v3, 0x7f07008d

    # invokes: Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->addMessagePreference(I)V
    invoke-static {v2, v3}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->access$1100(Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;I)V

    .line 350
    iget-object v2, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings$4;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;

    # getter for: Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mUtil:Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;
    invoke-static {v2}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->access$200(Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;)Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings$4;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;

    # getter for: Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mPrefs:Landroid/content/SharedPreferences;
    invoke-static {v3}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->access$100(Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-virtual {v2, v3, v6}, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->setSmsCounterStatus(Landroid/content/SharedPreferences;Z)V

    .line 351
    iget-object v2, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings$4;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;

    # getter for: Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mUtil:Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;
    invoke-static {v2}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->access$200(Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;)Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings$4;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;

    # getter for: Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mSim:I
    invoke-static {v3}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->access$000(Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->cancelNotification(I)V

    .line 352
    iget-object v2, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings$4;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;

    # getter for: Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mUtil:Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;
    invoke-static {v2}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->access$200(Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;)Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings$4;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;

    invoke-virtual {v3}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings$4;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;

    # getter for: Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mPrefs:Landroid/content/SharedPreferences;
    invoke-static {v4}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->access$100(Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;)Landroid/content/SharedPreferences;

    move-result-object v4

    iget-object v5, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings$4;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;

    # getter for: Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mSim:I
    invoke-static {v5}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->access$000(Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;)I

    move-result v5

    invoke-virtual {v2, v3, v4, v6, v5}, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->updateWidget(Landroid/content/Context;Landroid/content/SharedPreferences;II)V

    goto/16 :goto_0
.end method
