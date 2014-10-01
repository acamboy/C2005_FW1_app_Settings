.class public Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SmsCounterSettings.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/settings/smscounter/SmsCounterSettings$DBQueryThread;
    }
.end annotation


# instance fields
.field private mCyclePreference:Landroid/preference/ListPreference;

.field private mDBHandler:Landroid/os/Handler;

.field private mDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mEmptyView:Landroid/widget/TextView;

.field private mFlightMode:Z

.field private mLimitPreference:Landroid/preference/EditTextPreference;

.field mLimitationTextWatcher:Landroid/text/TextWatcher;

.field private mMaximun:Ljava/lang/String;

.field private mMessage:Lcom/sonyericsson/settings/smscounter/SmsCounterMessagePreference;

.field private mOnOffSwitch:Landroid/widget/Switch;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mScreenWidth:I

.field private mSettings:Landroid/content/SharedPreferences;

.field private mSim:I

.field private mSimStatus:Z

.field private mStartDayPreference:Landroid/preference/Preference;

.field private mStartWeekPreference:Landroid/preference/ListPreference;

.field private mSummaryBar:Lcom/sonyericsson/settings/smscounter/SmsCounterBarPreference;

.field private mUpdateStatus:Z

.field private mUtil:Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;

.field private mWarning:Ljava/lang/String;

.field private mWarningPreference:Landroid/preference/EditTextPreference;

.field mWarningTextWatcher:Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 72
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 102
    const-string v0, "50"

    iput-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mWarning:Ljava/lang/String;

    .line 104
    const-string v0, "100"

    iput-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mMaximun:Ljava/lang/String;

    .line 106
    iput-object v1, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mUtil:Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;

    .line 108
    iput-boolean v2, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mUpdateStatus:Z

    .line 110
    iput-object v1, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 112
    iput-object v1, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mDBHandler:Landroid/os/Handler;

    .line 114
    const/16 v0, 0x140

    iput v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mScreenWidth:I

    .line 116
    iput-object v1, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 124
    iput v2, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mSim:I

    .line 152
    new-instance v0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings$1;-><init>(Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;)V

    iput-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mWarningTextWatcher:Landroid/text/TextWatcher;

    .line 179
    new-instance v0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings$2;

    invoke-direct {v0, p0}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings$2;-><init>(Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;)V

    iput-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mLimitationTextWatcher:Landroid/text/TextWatcher;

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;

    .prologue
    .line 72
    iget v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mSim:I

    return v0
.end method

.method static synthetic access$100(Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mPrefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;)Landroid/widget/Switch;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mOnOffSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;
    .param p1, "x1"    # I

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->addMessagePreference(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mSimStatus:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;)Lcom/sonyericsson/settings/smscounter/SmsCounterBarPreference;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mSummaryBar:Lcom/sonyericsson/settings/smscounter/SmsCounterBarPreference;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;)Lcom/sonyericsson/settings/smscounter/SmsCounterMessagePreference;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mMessage:Lcom/sonyericsson/settings/smscounter/SmsCounterMessagePreference;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;)Landroid/preference/ListPreference;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mCyclePreference:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mSettings:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mStartDayPreference:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;)Landroid/preference/ListPreference;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mStartWeekPreference:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->asyncUpdateSMSCount()V

    return-void
.end method

.method static synthetic access$200(Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;)Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mUtil:Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mDBHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$502(Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mUpdateStatus:Z

    return p1
.end method

.method static synthetic access$600(Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;)Landroid/preference/EditTextPreference;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mWarningPreference:Landroid/preference/EditTextPreference;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;)Landroid/preference/EditTextPreference;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mLimitPreference:Landroid/preference/EditTextPreference;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;II)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->updateMessageUIState(II)V

    return-void
.end method

.method static synthetic access$900(Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mFlightMode:Z

    return v0
.end method

.method private addMessagePreference(I)V
    .locals 1
    .param p1, "messageId"    # I

    .prologue
    .line 916
    iget-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mEmptyView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 917
    iget-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 918
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 919
    return-void
.end method

.method private asyncUpdateSMSCount()V
    .locals 2

    .prologue
    .line 498
    const-string v0, "Dcm Sms CounterDSDS"

    const-string v1, "Go to async sms count"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    :try_start_0
    new-instance v0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings$DBQueryThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings$DBQueryThread;-><init>(Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;Lcom/sonyericsson/settings/smscounter/SmsCounterSettings$1;)V

    invoke-virtual {v0}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings$DBQueryThread;->start()V
    :try_end_0
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 512
    :goto_0
    return-void

    .line 505
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private checkInputNumber()Z
    .locals 7

    .prologue
    .line 800
    iget-object v4, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mSettings:Landroid/content/SharedPreferences;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sms_counter_warning_level"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mSim:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "50"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 802
    .local v2, "text1":Ljava/lang/String;
    const-string v4, "50"

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 803
    .local v0, "a":I
    const-string v4, "100"

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 804
    .local v1, "b":I
    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 805
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 807
    :cond_0
    iget-object v4, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mSettings:Landroid/content/SharedPreferences;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sms_counter_limit_level"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mSim:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "100"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 809
    .local v3, "text2":Ljava/lang/String;
    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 810
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 812
    :cond_1
    if-ge v0, v1, :cond_2

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private startSmsCounterService(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 922
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sonyericsson/settings/smscounter/SmsCounterService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 923
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 924
    return-void
.end method

.method private updateCycleSummary(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 816
    const-string v1, "Monthly"

    .line 817
    .local v1, "result":Ljava/lang/String;
    iget-object v2, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mCyclePreference:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 819
    .local v0, "entries":[Ljava/lang/CharSequence;
    const-string v2, "0"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 820
    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 826
    :cond_0
    :goto_0
    return-object v1

    .line 822
    :cond_1
    const-string v2, "1"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 823
    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private updateDateRange(I)V
    .locals 36
    .param p1, "selected"    # I

    .prologue
    .line 830
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v27

    .line 831
    .local v27, "cal":Ljava/util/Calendar;
    const/4 v3, 0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 832
    .local v8, "year":I
    const/4 v3, 0x2

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 833
    .local v7, "month":I
    const-string v30, ""

    .line 834
    .local v30, "item":Ljava/lang/String;
    const-wide/16 v16, 0x0

    .line 835
    .local v16, "start":J
    const-wide/16 v18, 0x0

    .line 836
    .local v18, "end":J
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    .line 837
    .local v2, "time":Landroid/text/format/Time;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mSettings:Landroid/content/SharedPreferences;

    const-string v4, "sms_counter_cycle"

    const-string v5, "0"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    .line 839
    .local v35, "value":Ljava/lang/String;
    const-string v3, "0"

    move-object/from16 v0, v35

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 840
    const/4 v3, 0x5

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v28

    .line 842
    .local v28, "current":I
    move/from16 v0, p1

    move/from16 v1, v28

    if-gt v0, v1, :cond_4

    .line 843
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move/from16 v6, p1

    invoke-virtual/range {v2 .. v8}, Landroid/text/format/Time;->set(IIIIII)V

    .line 844
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v33

    .line 845
    .end local v16    # "start":J
    .local v33, "start":J
    const/16 v3, 0xb

    if-eq v7, v3, :cond_1

    .line 846
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    add-int/lit8 v14, v7, 0x1

    move-object v9, v2

    move v15, v8

    invoke-virtual/range {v9 .. v15}, Landroid/text/format/Time;->set(IIIIII)V

    .line 851
    :goto_0
    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->getActualMaximum(I)I

    move-result v13

    .line 852
    .local v13, "nextMax":I
    add-int/lit8 v3, p1, -0x1

    if-le v3, v13, :cond_2

    .line 853
    const/16 v10, 0x3b

    const/16 v11, 0x3b

    const/16 v12, 0x17

    add-int/lit8 v14, v7, 0x1

    move-object v9, v2

    move v15, v8

    invoke-virtual/range {v9 .. v15}, Landroid/text/format/Time;->set(IIIIII)V

    .line 861
    .end local v18    # "end":J
    :goto_1
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v18

    .line 862
    .restart local v18    # "end":J
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mUtil:Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;

    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v15

    const/16 v20, 0x0

    move-wide/from16 v16, v33

    invoke-virtual/range {v14 .. v20}, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->formatDateRange(Landroid/content/Context;JJZ)Ljava/lang/String;

    move-result-object v30

    .line 863
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mStartDayPreference:Landroid/preference/Preference;

    move-object/from16 v0, v30

    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    move-wide/from16 v16, v33

    .line 911
    .end local v13    # "nextMax":I
    .end local v28    # "current":I
    .end local v33    # "start":J
    .restart local v16    # "start":J
    :cond_0
    :goto_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mUtil:Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mPrefs:Landroid/content/SharedPreferences;

    move-object/from16 v20, v0

    invoke-virtual/range {v15 .. v20}, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->saveDateRangeToPreference(JJLandroid/content/SharedPreferences;)V

    .line 912
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mUtil:Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;

    move-wide/from16 v0, v18

    invoke-virtual {v3, v0, v1}, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->setAlarmManager(J)V

    .line 913
    return-void

    .line 848
    .end local v16    # "start":J
    .restart local v28    # "current":I
    .restart local v33    # "start":J
    :cond_1
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    add-int/lit8 v15, v8, 0x1

    move-object v9, v2

    invoke-virtual/range {v9 .. v15}, Landroid/text/format/Time;->set(IIIIII)V

    goto :goto_0

    .line 855
    .restart local v13    # "nextMax":I
    :cond_2
    const/16 v3, 0xb

    if-ne v7, v3, :cond_3

    .line 856
    const/16 v15, 0x3b

    const/16 v16, 0x3b

    const/16 v17, 0x17

    add-int/lit8 v18, p1, -0x1

    const/16 v19, 0x0

    add-int/lit8 v20, v8, 0x1

    move-object v14, v2

    invoke-virtual/range {v14 .. v20}, Landroid/text/format/Time;->set(IIIIII)V

    goto :goto_1

    .line 858
    :cond_3
    const/16 v15, 0x3b

    const/16 v16, 0x3b

    const/16 v17, 0x17

    add-int/lit8 v18, p1, -0x1

    add-int/lit8 v19, v7, 0x1

    move-object v14, v2

    move/from16 v20, v8

    invoke-virtual/range {v14 .. v20}, Landroid/text/format/Time;->set(IIIIII)V

    goto :goto_1

    .line 864
    .end local v13    # "nextMax":I
    .end local v33    # "start":J
    .restart local v16    # "start":J
    :cond_4
    move/from16 v0, p1

    move/from16 v1, v28

    if-le v0, v1, :cond_0

    .line 865
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual/range {v2 .. v8}, Landroid/text/format/Time;->set(IIIIII)V

    .line 866
    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->getActualMaximum(I)I

    move-result v6

    .line 867
    .local v6, "maxDate":I
    add-int/lit8 v3, p1, -0x1

    if-le v3, v6, :cond_5

    .line 868
    const/16 v3, 0x3b

    const/16 v4, 0x3b

    const/16 v5, 0x17

    invoke-virtual/range {v2 .. v8}, Landroid/text/format/Time;->set(IIIIII)V

    .line 872
    :goto_3
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v18

    .line 873
    if-eqz v7, :cond_7

    .line 874
    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x1

    add-int/lit8 v25, v7, -0x1

    move-object/from16 v20, v2

    move/from16 v26, v8

    invoke-virtual/range {v20 .. v26}, Landroid/text/format/Time;->set(IIIIII)V

    .line 875
    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->getActualMaximum(I)I

    move-result v6

    .line 876
    move/from16 v0, p1

    if-le v0, v6, :cond_6

    .line 877
    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x1

    move-object/from16 v20, v2

    move/from16 v25, v7

    move/from16 v26, v8

    invoke-virtual/range {v20 .. v26}, Landroid/text/format/Time;->set(IIIIII)V

    .line 884
    :goto_4
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v16

    .line 886
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mUtil:Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;

    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v15

    const/16 v20, 0x0

    invoke-virtual/range {v14 .. v20}, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->formatDateRange(Landroid/content/Context;JJZ)Ljava/lang/String;

    move-result-object v30

    .line 887
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mStartDayPreference:Landroid/preference/Preference;

    move-object/from16 v0, v30

    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 870
    :cond_5
    const/16 v21, 0x3b

    const/16 v22, 0x3b

    const/16 v23, 0x17

    add-int/lit8 v24, p1, -0x1

    move-object/from16 v20, v2

    move/from16 v25, v7

    move/from16 v26, v8

    invoke-virtual/range {v20 .. v26}, Landroid/text/format/Time;->set(IIIIII)V

    goto :goto_3

    .line 879
    :cond_6
    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    add-int/lit8 v25, v7, -0x1

    move-object/from16 v20, v2

    move/from16 v24, p1

    move/from16 v26, v8

    invoke-virtual/range {v20 .. v26}, Landroid/text/format/Time;->set(IIIIII)V

    goto :goto_4

    .line 882
    :cond_7
    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v25, 0xb

    add-int/lit8 v26, v8, -0x1

    move-object/from16 v20, v2

    move/from16 v24, p1

    invoke-virtual/range {v20 .. v26}, Landroid/text/format/Time;->set(IIIIII)V

    goto :goto_4

    .line 889
    .end local v6    # "maxDate":I
    .end local v28    # "current":I
    :cond_8
    const-string v3, "1"

    move-object/from16 v0, v35

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 890
    const/4 v3, 0x7

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/lit8 v29, v3, -0x1

    .line 891
    .local v29, "currentWeek":I
    if-nez v29, :cond_9

    .line 892
    const/16 v29, 0x7

    .line 894
    :cond_9
    const/4 v3, 0x5

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v24

    .line 895
    .local v24, "day":I
    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v20, v2

    move/from16 v25, v7

    move/from16 v26, v8

    invoke-virtual/range {v20 .. v26}, Landroid/text/format/Time;->set(IIIIII)V

    .line 896
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v31

    .line 897
    .local v31, "now":J
    move/from16 v0, p1

    move/from16 v1, v29

    if-gt v0, v1, :cond_a

    .line 898
    const-wide/32 v3, 0x5265c00

    sub-int v5, v29, p1

    int-to-long v9, v5

    mul-long/2addr v3, v9

    sub-long v16, v31, v3

    .line 899
    const-wide/32 v3, 0x240c8400

    add-long v3, v3, v16

    const-wide/16 v9, 0x3e8

    sub-long v18, v3, v9

    .line 900
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mUtil:Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;

    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v15

    const/16 v20, 0x0

    invoke-virtual/range {v14 .. v20}, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->formatDateRange(Landroid/content/Context;JJZ)Ljava/lang/String;

    move-result-object v30

    .line 901
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mStartWeekPreference:Landroid/preference/ListPreference;

    move-object/from16 v0, v30

    invoke-virtual {v3, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 902
    :cond_a
    move/from16 v0, p1

    move/from16 v1, v29

    if-le v0, v1, :cond_0

    .line 903
    const-wide/32 v3, 0x5265c00

    sub-int v5, p1, v29

    int-to-long v9, v5

    mul-long/2addr v3, v9

    add-long v18, v31, v3

    .line 904
    const-wide/32 v3, 0x240c8400

    sub-long v16, v18, v3

    .line 905
    const-wide/16 v3, 0x3e8

    sub-long v18, v18, v3

    .line 906
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mUtil:Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;

    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v15

    const/16 v20, 0x0

    invoke-virtual/range {v14 .. v20}, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->formatDateRange(Landroid/content/Context;JJZ)Ljava/lang/String;

    move-result-object v30

    .line 907
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mStartWeekPreference:Landroid/preference/ListPreference;

    move-object/from16 v0, v30

    invoke-virtual {v3, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_2
.end method

.method private updateMessageUIState(II)V
    .locals 17
    .param p1, "messageCount"    # I
    .param p2, "slotIndex"    # I

    .prologue
    .line 515
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mSettings:Landroid/content/SharedPreferences;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "sms_counter_warning_level"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mSim:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "50"

    invoke-interface {v2, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mWarning:Ljava/lang/String;

    .line 517
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mSettings:Landroid/content/SharedPreferences;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "sms_counter_limit_level"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mSim:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "100"

    invoke-interface {v2, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mMaximun:Ljava/lang/String;

    .line 519
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mWarning:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 520
    .local v13, "warningValue":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mMaximun:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 521
    .local v14, "quotaValue":I
    move/from16 v7, p1

    .line 522
    .local v7, "count":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mUtil:Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mPrefs:Landroid/content/SharedPreferences;

    invoke-virtual {v2, v10}, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->getStartTimeSettings(Landroid/content/SharedPreferences;)J

    move-result-wide v3

    .line 523
    .local v3, "start":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mUtil:Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mPrefs:Landroid/content/SharedPreferences;

    invoke-virtual {v2, v10}, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->getEndTimeSettings(Landroid/content/SharedPreferences;)J

    move-result-wide v5

    .line 524
    .local v5, "end":J
    const/4 v8, 0x0

    .line 525
    .local v8, "ex":I
    const/4 v9, 0x0

    .line 535
    .local v9, "exM":I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mSimStatus:Z

    if-eqz v2, :cond_0

    .line 536
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v13, v14, v1}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->updateSummaryEntry(III)V

    .line 540
    :cond_0
    move/from16 v0, p1

    if-lt v0, v13, :cond_1

    .line 541
    sub-int v8, p1, v13

    .line 543
    :cond_1
    move/from16 v0, p1

    if-lt v0, v14, :cond_2

    .line 544
    sub-int v9, p1, v14

    .line 546
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mMessage:Lcom/sonyericsson/settings/smscounter/SmsCounterMessagePreference;

    invoke-virtual/range {v2 .. v9}, Lcom/sonyericsson/settings/smscounter/SmsCounterMessagePreference;->setRange(JJIII)V

    .line 549
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mUpdateStatus:Z

    if-eqz v2, :cond_3

    .line 550
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mUtil:Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mPrefs:Landroid/content/SharedPreferences;

    const/4 v15, 0x1

    move/from16 v12, p1

    move/from16 v16, p2

    invoke-virtual/range {v10 .. v16}, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->checkWarningStatus(Landroid/content/SharedPreferences;IIIZI)V

    .line 551
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mUpdateStatus:Z

    .line 555
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->updateUIView()V

    .line 556
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mUtil:Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;

    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mPrefs:Landroid/content/SharedPreferences;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mSim:I

    invoke-virtual {v2, v10, v11, v7, v12}, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->updateWidget(Landroid/content/Context;Landroid/content/SharedPreferences;II)V

    .line 557
    return-void
.end method

.method private updateSummaryEntry(III)V
    .locals 8
    .param p1, "warningValue"    # I
    .param p2, "quotaValue"    # I
    .param p3, "count"    # I

    .prologue
    .line 457
    const-string v1, "Dcm Sms CounterDSDS"

    const-string v2, "Go to update summary entry"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    const/16 v1, 0x33

    const/16 v2, 0x33

    const/16 v3, 0x33

    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    .line 461
    .local v0, "barColor":I
    iget-object v1, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mSummaryBar:Lcom/sonyericsson/settings/smscounter/SmsCounterBarPreference;

    invoke-virtual {v1}, Lcom/sonyericsson/settings/smscounter/SmsCounterBarPreference;->clear()V

    .line 462
    if-gt p3, p1, :cond_1

    if-ltz p3, :cond_1

    .line 463
    iget-object v1, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mSummaryBar:Lcom/sonyericsson/settings/smscounter/SmsCounterBarPreference;

    int-to-double v2, p3

    int-to-double v4, p2

    const-wide/high16 v6, 0x3ff8000000000000L

    mul-double/2addr v4, v6

    div-double/2addr v2, v4

    double-to-float v2, v2

    const v3, -0xff0100

    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/settings/smscounter/SmsCounterBarPreference;->addEntry(FI)V

    .line 465
    iget-object v1, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mSummaryBar:Lcom/sonyericsson/settings/smscounter/SmsCounterBarPreference;

    sub-int v2, p1, p3

    int-to-double v2, v2

    int-to-double v4, p2

    const-wide/high16 v6, 0x3ff8000000000000L

    mul-double/2addr v4, v6

    div-double/2addr v2, v4

    double-to-float v2, v2

    invoke-virtual {v1, v2, v0}, Lcom/sonyericsson/settings/smscounter/SmsCounterBarPreference;->addEntry(FI)V

    .line 467
    iget-object v1, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mSummaryBar:Lcom/sonyericsson/settings/smscounter/SmsCounterBarPreference;

    const-wide/high16 v2, 0x3ff0000000000000L

    iget v4, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mScreenWidth:I

    int-to-double v4, v4

    div-double/2addr v2, v4

    double-to-float v2, v2

    const/16 v3, 0xff

    const/16 v4, 0xff

    const/16 v5, 0xa5

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/settings/smscounter/SmsCounterBarPreference;->addEntry(FI)V

    .line 468
    iget-object v1, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mSummaryBar:Lcom/sonyericsson/settings/smscounter/SmsCounterBarPreference;

    sub-int v2, p2, p1

    int-to-double v2, v2

    int-to-double v4, p2

    const-wide/high16 v6, 0x3ff8000000000000L

    mul-double/2addr v4, v6

    div-double/2addr v2, v4

    const-wide/high16 v4, 0x3ff0000000000000L

    iget v6, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mScreenWidth:I

    int-to-double v6, v6

    div-double/2addr v4, v6

    double-to-float v4, v4

    float-to-double v4, v4

    sub-double/2addr v2, v4

    double-to-float v2, v2

    invoke-virtual {v1, v2, v0}, Lcom/sonyericsson/settings/smscounter/SmsCounterBarPreference;->addEntry(FI)V

    .line 470
    iget-object v1, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mSummaryBar:Lcom/sonyericsson/settings/smscounter/SmsCounterBarPreference;

    const-wide/high16 v2, 0x3ff0000000000000L

    iget v4, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mScreenWidth:I

    int-to-double v4, v4

    div-double/2addr v2, v4

    double-to-float v2, v2

    const/high16 v3, -0x10000

    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/settings/smscounter/SmsCounterBarPreference;->addEntry(FI)V

    .line 494
    :cond_0
    :goto_0
    return-void

    .line 471
    :cond_1
    if-le p3, p1, :cond_2

    if-gt p3, p2, :cond_2

    .line 472
    iget-object v1, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mSummaryBar:Lcom/sonyericsson/settings/smscounter/SmsCounterBarPreference;

    int-to-double v2, p1

    int-to-double v4, p2

    const-wide/high16 v6, 0x3ff8000000000000L

    mul-double/2addr v4, v6

    div-double/2addr v2, v4

    double-to-float v2, v2

    const v3, -0xff0100

    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/settings/smscounter/SmsCounterBarPreference;->addEntry(FI)V

    .line 474
    iget-object v1, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mSummaryBar:Lcom/sonyericsson/settings/smscounter/SmsCounterBarPreference;

    sub-int v2, p3, p1

    int-to-double v2, v2

    int-to-double v4, p2

    const-wide/high16 v6, 0x3ff8000000000000L

    mul-double/2addr v4, v6

    div-double/2addr v2, v4

    double-to-float v2, v2

    const/16 v3, 0xff

    const/16 v4, 0xff

    const/16 v5, 0xa5

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/settings/smscounter/SmsCounterBarPreference;->addEntry(FI)V

    .line 476
    iget-object v1, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mSummaryBar:Lcom/sonyericsson/settings/smscounter/SmsCounterBarPreference;

    sub-int v2, p2, p3

    int-to-double v2, v2

    int-to-double v4, p2

    const-wide/high16 v6, 0x3ff8000000000000L

    mul-double/2addr v4, v6

    div-double/2addr v2, v4

    double-to-float v2, v2

    invoke-virtual {v1, v2, v0}, Lcom/sonyericsson/settings/smscounter/SmsCounterBarPreference;->addEntry(FI)V

    .line 478
    iget-object v1, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mSummaryBar:Lcom/sonyericsson/settings/smscounter/SmsCounterBarPreference;

    const-wide/high16 v2, 0x3ff0000000000000L

    iget v4, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mScreenWidth:I

    int-to-double v4, v4

    div-double/2addr v2, v4

    double-to-float v2, v2

    const/high16 v3, -0x10000

    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/settings/smscounter/SmsCounterBarPreference;->addEntry(FI)V

    goto :goto_0

    .line 479
    :cond_2
    if-le p3, p2, :cond_3

    int-to-double v1, p3

    int-to-double v3, p2

    const-wide/high16 v5, 0x3ff8000000000000L

    mul-double/2addr v3, v5

    cmpg-double v1, v1, v3

    if-gtz v1, :cond_3

    .line 480
    iget-object v1, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mSummaryBar:Lcom/sonyericsson/settings/smscounter/SmsCounterBarPreference;

    int-to-double v2, p1

    int-to-double v4, p2

    const-wide/high16 v6, 0x3ff8000000000000L

    mul-double/2addr v4, v6

    div-double/2addr v2, v4

    double-to-float v2, v2

    const v3, -0xff0100

    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/settings/smscounter/SmsCounterBarPreference;->addEntry(FI)V

    .line 482
    iget-object v1, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mSummaryBar:Lcom/sonyericsson/settings/smscounter/SmsCounterBarPreference;

    sub-int v2, p2, p1

    int-to-double v2, v2

    int-to-double v4, p2

    const-wide/high16 v6, 0x3ff8000000000000L

    mul-double/2addr v4, v6

    div-double/2addr v2, v4

    double-to-float v2, v2

    const/16 v3, 0xff

    const/16 v4, 0xff

    const/16 v5, 0xa5

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/settings/smscounter/SmsCounterBarPreference;->addEntry(FI)V

    .line 484
    iget-object v1, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mSummaryBar:Lcom/sonyericsson/settings/smscounter/SmsCounterBarPreference;

    sub-int v2, p3, p2

    int-to-double v2, v2

    int-to-double v4, p2

    const-wide/high16 v6, 0x3ff8000000000000L

    mul-double/2addr v4, v6

    div-double/2addr v2, v4

    double-to-float v2, v2

    const/high16 v3, -0x10000

    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/settings/smscounter/SmsCounterBarPreference;->addEntry(FI)V

    goto/16 :goto_0

    .line 486
    :cond_3
    int-to-double v1, p3

    int-to-double v3, p2

    const-wide/high16 v5, 0x3ff8000000000000L

    mul-double/2addr v3, v5

    cmpl-double v1, v1, v3

    if-lez v1, :cond_0

    .line 487
    iget-object v1, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mSummaryBar:Lcom/sonyericsson/settings/smscounter/SmsCounterBarPreference;

    int-to-double v2, p1

    int-to-double v4, p2

    const-wide/high16 v6, 0x3ff8000000000000L

    mul-double/2addr v4, v6

    div-double/2addr v2, v4

    double-to-float v2, v2

    const v3, -0xff0100

    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/settings/smscounter/SmsCounterBarPreference;->addEntry(FI)V

    .line 489
    iget-object v1, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mSummaryBar:Lcom/sonyericsson/settings/smscounter/SmsCounterBarPreference;

    sub-int v2, p2, p1

    int-to-double v2, v2

    int-to-double v4, p2

    const-wide/high16 v6, 0x3ff8000000000000L

    mul-double/2addr v4, v6

    div-double/2addr v2, v4

    double-to-float v2, v2

    const/16 v3, 0xff

    const/16 v4, 0xff

    const/16 v5, 0xa5

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/settings/smscounter/SmsCounterBarPreference;->addEntry(FI)V

    .line 491
    iget-object v1, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mSummaryBar:Lcom/sonyericsson/settings/smscounter/SmsCounterBarPreference;

    const-wide/high16 v2, 0x3fe0000000000000L

    int-to-double v4, p2

    mul-double/2addr v2, v4

    int-to-double v4, p2

    const-wide/high16 v6, 0x3ff8000000000000L

    mul-double/2addr v4, v6

    div-double/2addr v2, v4

    double-to-float v2, v2

    const/high16 v3, -0x10000

    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/settings/smscounter/SmsCounterBarPreference;->addEntry(FI)V

    goto/16 :goto_0
.end method

.method private updateUIView()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 561
    const-string v4, "Dcm Sms CounterDSDS"

    const-string v5, "Go to update UI view"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    invoke-virtual {p0}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->getView()Landroid/view/View;

    move-result-object v3

    .line 564
    .local v3, "view":Landroid/view/View;
    if-eqz v3, :cond_0

    .line 565
    const v4, 0x1020004

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mEmptyView:Landroid/widget/TextView;

    .line 566
    invoke-virtual {p0}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->getListView()Landroid/widget/ListView;

    move-result-object v4

    iget-object v5, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 567
    iget-object v4, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mUtil:Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;

    iget-object v5, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mPrefs:Landroid/content/SharedPreferences;

    iget v6, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mSim:I

    invoke-virtual {v4, v5, v6}, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->getSmsCounterStatus(Landroid/content/SharedPreferences;I)Z

    move-result v1

    .line 568
    .local v1, "status":Z
    iget-object v4, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mUtil:Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;

    invoke-virtual {v4}, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->isAirplaneModeOn()Z

    move-result v4

    iput-boolean v4, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mFlightMode:Z

    .line 570
    iget-boolean v4, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mFlightMode:Z

    if-eqz v4, :cond_1

    .line 571
    iget-object v4, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mOnOffSwitch:Landroid/widget/Switch;

    invoke-virtual {v4, v7}, Landroid/widget/Switch;->setChecked(Z)V

    .line 572
    iget-object v4, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mOnOffSwitch:Landroid/widget/Switch;

    invoke-virtual {v4, v7}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 573
    const v4, 0x7f07008a

    invoke-direct {p0, v4}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->addMessagePreference(I)V

    .line 617
    .end local v1    # "status":Z
    :cond_0
    :goto_0
    return-void

    .line 574
    .restart local v1    # "status":Z
    :cond_1
    iget-boolean v4, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mSimStatus:Z

    if-nez v4, :cond_2

    .line 575
    iget-object v4, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mOnOffSwitch:Landroid/widget/Switch;

    invoke-virtual {v4, v7}, Landroid/widget/Switch;->setChecked(Z)V

    .line 576
    iget-object v4, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mOnOffSwitch:Landroid/widget/Switch;

    invoke-virtual {v4, v7}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 577
    const v4, 0x7f07008b

    invoke-direct {p0, v4}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->addMessagePreference(I)V

    goto :goto_0

    .line 586
    :cond_2
    if-eqz v1, :cond_4

    .line 587
    iget-object v4, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mOnOffSwitch:Landroid/widget/Switch;

    invoke-virtual {v4, v8}, Landroid/widget/Switch;->setChecked(Z)V

    .line 588
    iget-object v4, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mOnOffSwitch:Landroid/widget/Switch;

    invoke-virtual {v4, v8}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 589
    invoke-virtual {p0}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 590
    invoke-virtual {p0}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v5, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mSummaryBar:Lcom/sonyericsson/settings/smscounter/SmsCounterBarPreference;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 591
    invoke-virtual {p0}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v5, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mMessage:Lcom/sonyericsson/settings/smscounter/SmsCounterMessagePreference;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 592
    invoke-virtual {p0}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v5, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mWarningPreference:Landroid/preference/EditTextPreference;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 593
    invoke-virtual {p0}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v5, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mLimitPreference:Landroid/preference/EditTextPreference;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 594
    invoke-virtual {p0}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v5, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mCyclePreference:Landroid/preference/ListPreference;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 595
    iget-object v4, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mSettings:Landroid/content/SharedPreferences;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sms_counter_cycle"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mSim:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "0"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 596
    .local v0, "cycle":Ljava/lang/String;
    const/4 v2, 0x0

    .line 598
    .local v2, "value":Ljava/lang/String;
    const-string v4, "0"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 599
    invoke-virtual {p0}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v5, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mStartDayPreference:Landroid/preference/Preference;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 600
    iget-object v4, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mSettings:Landroid/content/SharedPreferences;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sms_counter_startDay"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mSim:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "1"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 601
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {p0, v4}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->updateDateRange(I)V

    goto/16 :goto_0

    .line 602
    :cond_3
    const-string v4, "1"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 603
    invoke-virtual {p0}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v5, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mStartWeekPreference:Landroid/preference/ListPreference;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 604
    iget-object v4, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mSettings:Landroid/content/SharedPreferences;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sms_counter_startWeek"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mSim:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "1"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 605
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {p0, v4}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->updateDateRange(I)V

    goto/16 :goto_0

    .line 608
    .end local v0    # "cycle":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/String;
    :cond_4
    iget-object v4, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mOnOffSwitch:Landroid/widget/Switch;

    invoke-virtual {v4, v7}, Landroid/widget/Switch;->setChecked(Z)V

    .line 609
    iget-object v4, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mOnOffSwitch:Landroid/widget/Switch;

    invoke-virtual {v4, v8}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 610
    const v4, 0x7f07008d

    invoke-direct {p0, v4}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->addMessagePreference(I)V

    goto/16 :goto_0
.end method

.method private verifyUserInput(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 796
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 403
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 407
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v11, 0x4

    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 221
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 222
    invoke-virtual {p0}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 224
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {p0}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 226
    .local v2, "intent":Landroid/content/Intent;
    const-string v9, "com.android.settings.SmsCounterSettingsActivity.Sim1"

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 227
    iput v12, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mSim:I

    .line 228
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v9

    const-string v10, "SIM1"

    invoke-virtual {v9, v10}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 234
    :cond_0
    :goto_0
    const v9, 0x7f05002c

    invoke-virtual {p0, v9}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->addPreferencesFromResource(I)V

    .line 237
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v9

    invoke-virtual {v9, v11, v11}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 238
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v9

    invoke-virtual {v9, v13}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 239
    invoke-virtual {p0, v13}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->setHasOptionsMenu(Z)V

    .line 245
    const-string v9, "Dcm Sms CounterDSDS"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SMS Counter Setting for SIM"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mSim:I

    add-int/lit8 v11, v11, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " opened"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    new-instance v9, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings$3;

    invoke-direct {v9, p0}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings$3;-><init>(Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;)V

    iput-object v9, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mDBHandler:Landroid/os/Handler;

    .line 261
    new-instance v9, Landroid/util/DisplayMetrics;

    invoke-direct {v9}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v9, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 264
    new-instance v9, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;

    invoke-direct {v9, v0}, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mUtil:Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;

    .line 265
    iget-object v9, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mUtil:Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;

    invoke-virtual {v9}, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->isAirplaneModeOn()Z

    move-result v9

    iput-boolean v9, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mFlightMode:Z

    .line 266
    iget-boolean v9, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mFlightMode:Z

    if-nez v9, :cond_1

    .line 267
    invoke-direct {p0, v0}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->startSmsCounterService(Landroid/content/Context;)V

    .line 270
    :cond_1
    invoke-static {v0}, Lcom/sonyericsson/settings/smscounter/SmsDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/sonyericsson/settings/smscounter/SmsDatabaseHelper;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sonyericsson/settings/smscounter/SmsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v9

    iput-object v9, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 272
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "sms_counter_preference_file_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mSim:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9, v12}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    iput-object v9, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mPrefs:Landroid/content/SharedPreferences;

    .line 275
    iget-object v9, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mUtil:Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;

    iget v10, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mSim:I

    invoke-virtual {v9, v10}, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->getSimState(I)I

    move-result v4

    .line 276
    .local v4, "state":I
    if-ne v4, v13, :cond_4

    .line 277
    iput-boolean v12, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mSimStatus:Z

    .line 281
    :goto_1
    invoke-virtual {p0}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    invoke-virtual {v9}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v9

    iput-object v9, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mSettings:Landroid/content/SharedPreferences;

    .line 283
    new-instance v9, Landroid/widget/Switch;

    invoke-direct {v9, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mOnOffSwitch:Landroid/widget/Switch;

    .line 284
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0d0002

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 286
    .local v3, "padding":I
    iget-object v9, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mOnOffSwitch:Landroid/widget/Switch;

    invoke-virtual {v9, v12, v12, v3, v12}, Landroid/widget/Switch;->setPadding(IIII)V

    .line 287
    iget-object v9, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mUtil:Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;

    iget-object v10, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mPrefs:Landroid/content/SharedPreferences;

    iget v11, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mSim:I

    invoke-virtual {v9, v10, v11}, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->getSmsCounterStatus(Landroid/content/SharedPreferences;I)Z

    move-result v5

    .line 288
    .local v5, "status":Z
    iget-boolean v9, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mSimStatus:Z

    if-eqz v9, :cond_5

    if-eqz v5, :cond_5

    .line 289
    iget-object v9, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mOnOffSwitch:Landroid/widget/Switch;

    invoke-virtual {v9, v13}, Landroid/widget/Switch;->setChecked(Z)V

    .line 293
    :goto_2
    iget-object v9, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mOnOffSwitch:Landroid/widget/Switch;

    new-instance v10, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings$4;

    invoke-direct {v10, p0}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings$4;-><init>(Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;)V

    invoke-virtual {v9, v10}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 360
    const-string v9, "sms_counter_summary_bar"

    invoke-virtual {p0, v9}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Lcom/sonyericsson/settings/smscounter/SmsCounterBarPreference;

    iput-object v9, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mSummaryBar:Lcom/sonyericsson/settings/smscounter/SmsCounterBarPreference;

    .line 361
    const-string v9, "sms_counter_message"

    invoke-virtual {p0, v9}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Lcom/sonyericsson/settings/smscounter/SmsCounterMessagePreference;

    iput-object v9, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mMessage:Lcom/sonyericsson/settings/smscounter/SmsCounterMessagePreference;

    .line 363
    const-string v9, "sms_counter_warning_level"

    invoke-virtual {p0, v9}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/EditTextPreference;

    iput-object v9, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mWarningPreference:Landroid/preference/EditTextPreference;

    .line 364
    iget-object v9, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mWarningPreference:Landroid/preference/EditTextPreference;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "sms_counter_warning_level"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mSim:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/EditTextPreference;->setKey(Ljava/lang/String;)V

    .line 365
    iget-object v9, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mSettings:Landroid/content/SharedPreferences;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "sms_counter_warning_level"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mSim:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "50"

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 366
    .local v6, "text1":Ljava/lang/String;
    iget-object v9, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mWarningPreference:Landroid/preference/EditTextPreference;

    invoke-virtual {v9, v6}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 367
    iget-object v9, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mWarningPreference:Landroid/preference/EditTextPreference;

    invoke-virtual {v9}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v9

    iget-object v10, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mWarningTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 369
    const-string v9, "sms_counter_limit_level"

    invoke-virtual {p0, v9}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/EditTextPreference;

    iput-object v9, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mLimitPreference:Landroid/preference/EditTextPreference;

    .line 370
    iget-object v9, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mLimitPreference:Landroid/preference/EditTextPreference;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "sms_counter_limit_level"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mSim:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/EditTextPreference;->setKey(Ljava/lang/String;)V

    .line 371
    iget-object v9, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mSettings:Landroid/content/SharedPreferences;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "sms_counter_limit_level"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mSim:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "100"

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 373
    .local v7, "text2":Ljava/lang/String;
    iget-object v9, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mLimitPreference:Landroid/preference/EditTextPreference;

    invoke-virtual {v9, v7}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 374
    iget-object v9, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mLimitPreference:Landroid/preference/EditTextPreference;

    invoke-virtual {v9}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v9

    iget-object v10, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mLimitationTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 376
    const-string v9, "sms_counter_cycle"

    invoke-virtual {p0, v9}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/ListPreference;

    iput-object v9, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mCyclePreference:Landroid/preference/ListPreference;

    .line 377
    iget-object v9, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mSettings:Landroid/content/SharedPreferences;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "sms_counter_cycle"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mSim:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "0"

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 378
    .local v8, "value":Ljava/lang/String;
    move-object v1, v8

    .line 379
    .local v1, "currentCycle":Ljava/lang/String;
    iget-object v9, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mCyclePreference:Landroid/preference/ListPreference;

    invoke-virtual {v9, v8}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 380
    iget-object v9, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mCyclePreference:Landroid/preference/ListPreference;

    invoke-direct {p0, v8}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->updateCycleSummary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 382
    const-string v9, "sms_counter_startDay"

    invoke-virtual {p0, v9}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    iput-object v9, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mStartDayPreference:Landroid/preference/Preference;

    .line 383
    iget-object v9, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mStartDayPreference:Landroid/preference/Preference;

    const-string v10, "1"

    invoke-virtual {v9, v10}, Landroid/preference/Preference;->setDefaultValue(Ljava/lang/Object;)V

    .line 385
    const-string v9, "sms_counter_startWeek"

    invoke-virtual {p0, v9}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/ListPreference;

    iput-object v9, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mStartWeekPreference:Landroid/preference/ListPreference;

    .line 386
    iget-object v9, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mStartWeekPreference:Landroid/preference/ListPreference;

    const-string v10, "1"

    invoke-virtual {v9, v10}, Landroid/preference/ListPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 388
    const-string v9, "0"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 389
    invoke-virtual {p0}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    iget-object v10, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mStartWeekPreference:Landroid/preference/ListPreference;

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 390
    iget-object v9, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mSettings:Landroid/content/SharedPreferences;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "sms_counter_startDay"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mSim:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "1"

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 391
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-direct {p0, v9}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->updateDateRange(I)V

    .line 399
    :cond_2
    :goto_3
    return-void

    .line 229
    .end local v1    # "currentCycle":Ljava/lang/String;
    .end local v3    # "padding":I
    .end local v4    # "state":I
    .end local v5    # "status":Z
    .end local v6    # "text1":Ljava/lang/String;
    .end local v7    # "text2":Ljava/lang/String;
    .end local v8    # "value":Ljava/lang/String;
    :cond_3
    const-string v9, "com.android.settings.SmsCounterSettingsActivity.Sim2"

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 230
    iput v13, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mSim:I

    .line 231
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v9

    const-string v10, "SIM2"

    invoke-virtual {v9, v10}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 279
    .restart local v4    # "state":I
    :cond_4
    iput-boolean v13, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mSimStatus:Z

    goto/16 :goto_1

    .line 291
    .restart local v3    # "padding":I
    .restart local v5    # "status":Z
    :cond_5
    iget-object v9, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mOnOffSwitch:Landroid/widget/Switch;

    invoke-virtual {v9, v12}, Landroid/widget/Switch;->setChecked(Z)V

    goto/16 :goto_2

    .line 393
    .restart local v1    # "currentCycle":Ljava/lang/String;
    .restart local v6    # "text1":Ljava/lang/String;
    .restart local v7    # "text2":Ljava/lang/String;
    .restart local v8    # "value":Ljava/lang/String;
    :cond_6
    const-string v9, "1"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 394
    invoke-virtual {p0}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    iget-object v10, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mStartDayPreference:Landroid/preference/Preference;

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 395
    iget-object v9, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mSettings:Landroid/content/SharedPreferences;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "sms_counter_startWeek"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mSim:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "1"

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 396
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-direct {p0, v9}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->updateDateRange(I)V

    goto :goto_3
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 11
    .param p1, "dialogId"    # I

    .prologue
    const/4 v10, 0x1

    .line 639
    invoke-virtual {p0}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 640
    .local v1, "context":Landroid/content/Context;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 641
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    .line 643
    .local v4, "dialogInflater":Landroid/view/LayoutInflater;
    packed-switch p1, :pswitch_data_0

    .line 685
    :goto_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    return-object v7

    .line 646
    :pswitch_0
    const v7, 0x7f04007f

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v4, v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 648
    .local v6, "view":Landroid/view/View;
    const v7, 0x7f090052

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/NumberPicker;

    .line 649
    .local v3, "cycleDayPicker":Landroid/widget/NumberPicker;
    iget-object v7, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mSettings:Landroid/content/SharedPreferences;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sms_counter_startDay"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mSim:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "1"

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 650
    .local v5, "value":Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 652
    .local v2, "cycleDay":I
    invoke-virtual {v3, v10}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 653
    const/16 v7, 0x1f

    invoke-virtual {v3, v7}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 654
    invoke-virtual {v3, v2}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 655
    invoke-virtual {v3, v10}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 657
    const v7, 0x7f07008e

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 658
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 660
    const v7, 0x104000a

    new-instance v8, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings$5;

    invoke-direct {v8, p0, v3}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings$5;-><init>(Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;Landroid/widget/NumberPicker;)V

    invoke-virtual {v0, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 643
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 452
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 453
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 209
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 216
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 211
    :pswitch_0
    invoke-virtual {p0}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->finish()V

    .line 212
    const/4 v0, 0x1

    goto :goto_0

    .line 209
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 438
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 439
    iget-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mSettings:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 440
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 621
    iget-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mWarningPreference:Landroid/preference/EditTextPreference;

    if-ne p2, v0, :cond_0

    .line 622
    iget-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mSettings:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sms_counter_warning_level"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mSim:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "50"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mWarning:Ljava/lang/String;

    .line 624
    iget-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mWarningPreference:Landroid/preference/EditTextPreference;

    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mWarning:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 626
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mLimitPreference:Landroid/preference/EditTextPreference;

    if-ne p2, v0, :cond_1

    .line 627
    iget-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mSettings:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sms_counter_limit_level"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mSim:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "100"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mMaximun:Ljava/lang/String;

    .line 629
    iget-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mLimitPreference:Landroid/preference/EditTextPreference;

    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mMaximun:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 631
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mStartDayPreference:Landroid/preference/Preference;

    if-ne p2, v0, :cond_2

    .line 632
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->showDialog(I)V

    .line 634
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 431
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 432
    iget-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mSettings:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 433
    iget-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mUtil:Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;

    invoke-virtual {v0}, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->isAirplaneModeOn()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mFlightMode:Z

    .line 434
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 9
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    .line 689
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 692
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sms_counter_warning_level"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mSim:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 697
    const-string v5, "50"

    invoke-interface {p1, p2, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 698
    .local v3, "summary":Ljava/lang/String;
    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-gtz v5, :cond_1

    .line 699
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sms_counter_warning_level"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mSim:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mWarning:Ljava/lang/String;

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 700
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 701
    iget-object v3, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mWarning:Ljava/lang/String;

    .line 704
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->checkInputNumber()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 705
    invoke-direct {p0, v3}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->verifyUserInput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 706
    .local v1, "result":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sms_counter_warning_level"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mSim:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 707
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 708
    iget-object v5, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mWarningPreference:Landroid/preference/EditTextPreference;

    invoke-virtual {v5, v1}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 714
    .end local v1    # "result":Ljava/lang/String;
    :goto_0
    iput-boolean v8, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mUpdateStatus:Z

    .line 715
    invoke-direct {p0}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->asyncUpdateSMSCount()V

    .line 717
    .end local v3    # "summary":Ljava/lang/String;
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sms_counter_limit_level"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mSim:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 722
    const-string v5, "100"

    invoke-interface {p1, p2, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 723
    .restart local v3    # "summary":Ljava/lang/String;
    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 724
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sms_counter_limit_level"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mSim:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mMaximun:Ljava/lang/String;

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 725
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 726
    iget-object v3, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mMaximun:Ljava/lang/String;

    .line 729
    :cond_3
    invoke-direct {p0}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->checkInputNumber()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 730
    invoke-direct {p0, v3}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->verifyUserInput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 731
    .restart local v1    # "result":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sms_counter_limit_level"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mSim:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 732
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 733
    iget-object v5, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mLimitPreference:Landroid/preference/EditTextPreference;

    invoke-virtual {v5, v1}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 740
    .end local v1    # "result":Ljava/lang/String;
    :goto_1
    iput-boolean v8, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mUpdateStatus:Z

    .line 741
    invoke-direct {p0}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->asyncUpdateSMSCount()V

    .line 743
    .end local v3    # "summary":Ljava/lang/String;
    :cond_4
    const-string v5, "sms_counter_cycle"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 748
    const-string v5, "0"

    invoke-interface {p1, p2, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 749
    .local v4, "value":Ljava/lang/String;
    iget-object v5, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mCyclePreference:Landroid/preference/ListPreference;

    invoke-direct {p0, v4}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->updateCycleSummary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 750
    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 751
    invoke-virtual {p0}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    iget-object v6, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mStartWeekPreference:Landroid/preference/ListPreference;

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 752
    invoke-virtual {p0}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    iget-object v6, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mStartDayPreference:Landroid/preference/Preference;

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 753
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sms_counter_cycle"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mSim:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "0"

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 754
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sms_counter_startDay"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mSim:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "1"

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 755
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 764
    :goto_2
    invoke-direct {p0, v8}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->updateDateRange(I)V

    .line 765
    iput-boolean v8, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mUpdateStatus:Z

    .line 766
    invoke-direct {p0}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->asyncUpdateSMSCount()V

    .line 768
    .end local v4    # "value":Ljava/lang/String;
    :cond_5
    const-string v5, "sms_counter_startDay"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 773
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mSim:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "1"

    invoke-interface {p1, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 774
    .restart local v4    # "value":Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 775
    .local v2, "selected":I
    invoke-direct {p0, v2}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->updateDateRange(I)V

    .line 776
    iput-boolean v8, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mUpdateStatus:Z

    .line 777
    invoke-direct {p0}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->asyncUpdateSMSCount()V

    .line 779
    .end local v2    # "selected":I
    .end local v4    # "value":Ljava/lang/String;
    :cond_6
    const-string v5, "sms_counter_startWeek"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 784
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sms_counter_startWeek"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mSim:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mStartWeekPreference:Landroid/preference/ListPreference;

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 785
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 786
    const-string v5, "Dcm Sms CounterDSDS"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "START WEEK was set for SIM"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mSim:I

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to be "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mStartWeekPreference:Landroid/preference/ListPreference;

    invoke-virtual {v7}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    iget-object v5, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mStartWeekPreference:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {p0, v5}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->updateDateRange(I)V

    .line 789
    iput-boolean v8, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mUpdateStatus:Z

    .line 790
    invoke-direct {p0}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->asyncUpdateSMSCount()V

    .line 792
    :cond_7
    return-void

    .line 710
    .restart local v3    # "summary":Ljava/lang/String;
    :cond_8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sms_counter_warning_level"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mSim:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mWarning:Ljava/lang/String;

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 711
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 712
    invoke-virtual {p0}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f07008f

    invoke-static {v5, v6, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 735
    :cond_9
    iget-object v5, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mLimitPreference:Landroid/preference/EditTextPreference;

    invoke-virtual {v5}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v5

    iget-object v6, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mMaximun:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 736
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sms_counter_limit_level"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mSim:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mMaximun:Ljava/lang/String;

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 737
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 738
    invoke-virtual {p0}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f070090

    invoke-static {v5, v6, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 757
    .end local v3    # "summary":Ljava/lang/String;
    .restart local v4    # "value":Ljava/lang/String;
    :cond_a
    invoke-virtual {p0}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    iget-object v6, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mStartDayPreference:Landroid/preference/Preference;

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 758
    invoke-virtual {p0}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    iget-object v6, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mStartWeekPreference:Landroid/preference/ListPreference;

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 759
    iget-object v5, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mStartWeekPreference:Landroid/preference/ListPreference;

    const-string v6, "1"

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 760
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sms_counter_cycle"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mSim:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "1"

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 761
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sms_counter_startWeek"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mSim:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "1"

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 762
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_2
.end method

.method public onStart()V
    .locals 6

    .prologue
    const/16 v2, 0x10

    const/4 v5, -0x2

    .line 411
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStart()V

    .line 415
    invoke-virtual {p0}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 416
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v2, v2}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 418
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mOnOffSwitch:Landroid/widget/Switch;

    new-instance v3, Landroid/app/ActionBar$LayoutParams;

    const/16 v4, 0x15

    invoke-direct {v3, v5, v5, v4}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v2, v3}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 423
    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v1, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 424
    iget-object v1, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mScreenWidth:I

    .line 425
    invoke-direct {p0}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->updateUIView()V

    .line 426
    invoke-direct {p0}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->asyncUpdateSMSCount()V

    .line 427
    return-void
.end method

.method public onStop()V
    .locals 4

    .prologue
    .line 444
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    .line 445
    invoke-virtual {p0}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 446
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x10

    invoke-virtual {v1, v2, v3}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 447
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 448
    return-void
.end method
