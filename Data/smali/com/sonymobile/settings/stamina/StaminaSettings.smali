.class public Lcom/sonymobile/settings/stamina/StaminaSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "StaminaSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/settings/stamina/StaminaSettings$PowersaveEnableObserver;,
        Lcom/sonymobile/settings/stamina/StaminaSettings$XssmEnableObserver;
    }
.end annotation


# static fields
.field private static final CONTENT_URI_LBW_SETTINGS_STATE:Landroid/net/Uri;

.field private static final LBW_DISABLE_INTENT:Landroid/content/Intent;

.field private static final LBW_ENABLE_INTENT:Landroid/content/Intent;


# instance fields
.field private mBTAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBatteryPercentagePreference:Landroid/preference/CheckBoxPreference;

.field private mEstimationPreference:Lcom/sonymobile/settings/stamina/EstimationPreference;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mLBWEnableListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mLBWPreference:Lcom/sonymobile/settings/stamina/SwitchPreference;

.field private mPowerSavePreference:Lcom/sonymobile/settings/stamina/SwitchPreference;

.field private mPowersaveEnableObserver:Lcom/sonymobile/settings/stamina/StaminaSettings$PowersaveEnableObserver;

.field private mPowersaverEnableListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mStaminaSwitchPreference:Lcom/sonymobile/settings/stamina/SwitchPreference;

.field private mXssmEnableListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mXssmEnableObserver:Lcom/sonymobile/settings/stamina/StaminaSettings$XssmEnableObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 34
    const-string v0, "content://com.sonyericsson.android.locationbasedwifi.settingsprovider/lbw_state"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/settings/stamina/StaminaSettings;->CONTENT_URI_LBW_SETTINGS_STATE:Landroid/net/Uri;

    .line 39
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sonyericsson.android.locationbasedwifi.ACTION_ENABLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sonymobile/settings/stamina/StaminaSettings;->LBW_ENABLE_INTENT:Landroid/content/Intent;

    .line 42
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sonyericsson.android.locationbasedwifi.ACTION_DISABLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sonymobile/settings/stamina/StaminaSettings;->LBW_DISABLE_INTENT:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 65
    new-instance v0, Lcom/sonymobile/settings/stamina/StaminaSettings$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/settings/stamina/StaminaSettings$1;-><init>(Lcom/sonymobile/settings/stamina/StaminaSettings;)V

    iput-object v0, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mXssmEnableListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 72
    new-instance v0, Lcom/sonymobile/settings/stamina/StaminaSettings$2;

    invoke-direct {v0, p0}, Lcom/sonymobile/settings/stamina/StaminaSettings$2;-><init>(Lcom/sonymobile/settings/stamina/StaminaSettings;)V

    iput-object v0, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mPowersaverEnableListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 79
    new-instance v0, Lcom/sonymobile/settings/stamina/StaminaSettings$3;

    invoke-direct {v0, p0}, Lcom/sonymobile/settings/stamina/StaminaSettings$3;-><init>(Lcom/sonymobile/settings/stamina/StaminaSettings;)V

    iput-object v0, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mLBWEnableListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 114
    new-instance v0, Lcom/sonymobile/settings/stamina/StaminaSettings$5;

    invoke-direct {v0, p0}, Lcom/sonymobile/settings/stamina/StaminaSettings$5;-><init>(Lcom/sonymobile/settings/stamina/StaminaSettings;)V

    iput-object v0, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 33
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/settings/stamina/StaminaSettings;)Lcom/sonymobile/settings/stamina/SwitchPreference;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/settings/stamina/StaminaSettings;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mLBWPreference:Lcom/sonymobile/settings/stamina/SwitchPreference;

    return-object v0
.end method

.method static synthetic access$100()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/sonymobile/settings/stamina/StaminaSettings;->LBW_ENABLE_INTENT:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$200()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/sonymobile/settings/stamina/StaminaSettings;->LBW_DISABLE_INTENT:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sonymobile/settings/stamina/StaminaSettings;)Landroid/bluetooth/BluetoothAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/settings/stamina/StaminaSettings;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mBTAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method static synthetic access$302(Lcom/sonymobile/settings/stamina/StaminaSettings;Landroid/bluetooth/BluetoothAdapter;)Landroid/bluetooth/BluetoothAdapter;
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/settings/stamina/StaminaSettings;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothAdapter;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mBTAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object p1
.end method

.method static synthetic access$400(Lcom/sonymobile/settings/stamina/StaminaSettings;)Lcom/sonymobile/settings/stamina/SwitchPreference;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/settings/stamina/StaminaSettings;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mStaminaSwitchPreference:Lcom/sonymobile/settings/stamina/SwitchPreference;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sonymobile/settings/stamina/StaminaSettings;)Landroid/widget/CompoundButton$OnCheckedChangeListener;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/settings/stamina/StaminaSettings;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mXssmEnableListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sonymobile/settings/stamina/StaminaSettings;)Lcom/sonymobile/settings/stamina/EstimationPreference;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/settings/stamina/StaminaSettings;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mEstimationPreference:Lcom/sonymobile/settings/stamina/EstimationPreference;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sonymobile/settings/stamina/StaminaSettings;)Lcom/sonymobile/settings/stamina/SwitchPreference;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/settings/stamina/StaminaSettings;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mPowerSavePreference:Lcom/sonymobile/settings/stamina/SwitchPreference;

    return-object v0
.end method

.method private initLBWifiHeader(Lcom/sonymobile/settings/stamina/SwitchPreference;)V
    .locals 8
    .param p1, "preference"    # Lcom/sonymobile/settings/stamina/SwitchPreference;

    .prologue
    const/4 v2, 0x0

    .line 176
    const/4 v6, 0x0

    .line 179
    .local v6, "cursor":Landroid/database/Cursor;
    invoke-static {}, Lcom/sonymobile/settings/stamina/Utils;->isPrimaryUser()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/StaminaSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/settings/stamina/StaminaSettings;->CONTENT_URI_LBW_SETTINGS_STATE:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 183
    :cond_0
    if-eqz v6, :cond_3

    .line 185
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 186
    const-string v0, "lbw_enabled"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 187
    .local v7, "isEnabled":I
    if-eqz v7, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Lcom/sonymobile/settings/stamina/SwitchPreference;->setChecked(Z)V

    .line 189
    .end local v7    # "isEnabled":I
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mLBWEnableListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {p1, v0}, Lcom/sonymobile/settings/stamina/SwitchPreference;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 197
    :goto_1
    return-void

    .line 187
    .restart local v7    # "isEnabled":I
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 191
    .end local v7    # "isEnabled":I
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 195
    :cond_3
    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/StaminaSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mLBWPreference:Lcom/sonymobile/settings/stamina/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1
.end method


# virtual methods
.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 172
    const v0, 0x7f070802

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 89
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 91
    const v1, 0x7f050048

    invoke-virtual {p0, v1}, Lcom/sonymobile/settings/stamina/StaminaSettings;->addPreferencesFromResource(I)V

    .line 92
    const-string v1, "stamina"

    invoke-virtual {p0, v1}, Lcom/sonymobile/settings/stamina/StaminaSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/settings/stamina/SwitchPreference;

    iput-object v1, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mStaminaSwitchPreference:Lcom/sonymobile/settings/stamina/SwitchPreference;

    .line 93
    const-string v1, "estimation"

    invoke-virtual {p0, v1}, Lcom/sonymobile/settings/stamina/StaminaSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/settings/stamina/EstimationPreference;

    iput-object v1, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mEstimationPreference:Lcom/sonymobile/settings/stamina/EstimationPreference;

    .line 94
    const-string v1, "lbw"

    invoke-virtual {p0, v1}, Lcom/sonymobile/settings/stamina/StaminaSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/settings/stamina/SwitchPreference;

    iput-object v1, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mLBWPreference:Lcom/sonymobile/settings/stamina/SwitchPreference;

    .line 95
    const-string v1, "powersave"

    invoke-virtual {p0, v1}, Lcom/sonymobile/settings/stamina/StaminaSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/settings/stamina/SwitchPreference;

    iput-object v1, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mPowerSavePreference:Lcom/sonymobile/settings/stamina/SwitchPreference;

    .line 97
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 98
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lcom/sonymobile/settings/stamina/StaminaSettings$XssmEnableObserver;

    invoke-direct {v1, p0, v0}, Lcom/sonymobile/settings/stamina/StaminaSettings$XssmEnableObserver;-><init>(Lcom/sonymobile/settings/stamina/StaminaSettings;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mXssmEnableObserver:Lcom/sonymobile/settings/stamina/StaminaSettings$XssmEnableObserver;

    .line 99
    new-instance v1, Lcom/sonymobile/settings/stamina/StaminaSettings$PowersaveEnableObserver;

    invoke-direct {v1, p0, v0}, Lcom/sonymobile/settings/stamina/StaminaSettings$PowersaveEnableObserver;-><init>(Lcom/sonymobile/settings/stamina/StaminaSettings;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mPowersaveEnableObserver:Lcom/sonymobile/settings/stamina/StaminaSettings$PowersaveEnableObserver;

    .line 100
    const-string v1, "battery_perc"

    invoke-virtual {p0, v1}, Lcom/sonymobile/settings/stamina/StaminaSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mBatteryPercentagePreference:Landroid/preference/CheckBoxPreference;

    .line 101
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mBatteryPercentagePreference:Landroid/preference/CheckBoxPreference;

    new-instance v2, Lcom/sonymobile/settings/stamina/StaminaSettings$4;

    invoke-direct {v2, p0}, Lcom/sonymobile/settings/stamina/StaminaSettings$4;-><init>(Lcom/sonymobile/settings/stamina/StaminaSettings;)V

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 109
    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/StaminaSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mXssmEnableObserver:Lcom/sonymobile/settings/stamina/StaminaSettings$XssmEnableObserver;

    invoke-static {v1, v2}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->registerXssmEnableObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V

    .line 110
    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/StaminaSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mPowersaveEnableObserver:Lcom/sonymobile/settings/stamina/StaminaSettings$PowersaveEnableObserver;

    invoke-static {v1, v2}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->registerPowersaveEnableObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V

    .line 112
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mBatteryPercentagePreference:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 163
    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/StaminaSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mXssmEnableObserver:Lcom/sonymobile/settings/stamina/StaminaSettings$XssmEnableObserver;

    invoke-static {v0, v1}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->unregisterObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V

    .line 164
    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/StaminaSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mPowersaveEnableObserver:Lcom/sonymobile/settings/stamina/StaminaSettings$PowersaveEnableObserver;

    invoke-static {v0, v1}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->unRegisterPowersaveEnableObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V

    .line 166
    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/StaminaSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 167
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 168
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 154
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mStaminaSwitchPreference:Lcom/sonymobile/settings/stamina/SwitchPreference;

    invoke-virtual {v0, v1}, Lcom/sonymobile/settings/stamina/SwitchPreference;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 155
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mPowerSavePreference:Lcom/sonymobile/settings/stamina/SwitchPreference;

    invoke-virtual {v0, v1}, Lcom/sonymobile/settings/stamina/SwitchPreference;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 156
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mLBWPreference:Lcom/sonymobile/settings/stamina/SwitchPreference;

    invoke-virtual {v0, v1}, Lcom/sonymobile/settings/stamina/SwitchPreference;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 157
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 158
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 129
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 130
    invoke-static {}, Lcom/sonymobile/settings/stamina/Utils;->isPrimaryUser()Z

    move-result v0

    .line 131
    .local v0, "primaryUser":Z
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mStaminaSwitchPreference:Lcom/sonymobile/settings/stamina/SwitchPreference;

    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/StaminaSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->isXssmEnabled(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/settings/stamina/SwitchPreference;->setChecked(Z)V

    .line 132
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mBatteryPercentagePreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/StaminaSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->isBatteryShown(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 134
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mPowerSavePreference:Lcom/sonymobile/settings/stamina/SwitchPreference;

    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/StaminaSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->isPowerSaverEnabled(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/settings/stamina/SwitchPreference;->setChecked(Z)V

    .line 136
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mStaminaSwitchPreference:Lcom/sonymobile/settings/stamina/SwitchPreference;

    iget-object v2, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mXssmEnableListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v1, v2}, Lcom/sonymobile/settings/stamina/SwitchPreference;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 137
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mPowerSavePreference:Lcom/sonymobile/settings/stamina/SwitchPreference;

    iget-object v2, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mPowersaverEnableListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v1, v2}, Lcom/sonymobile/settings/stamina/SwitchPreference;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 140
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mPowerSavePreference:Lcom/sonymobile/settings/stamina/SwitchPreference;

    invoke-virtual {v1, v0}, Lcom/sonymobile/settings/stamina/SwitchPreference;->setSelectable(Z)V

    .line 141
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mPowerSavePreference:Lcom/sonymobile/settings/stamina/SwitchPreference;

    invoke-virtual {v1, v0}, Lcom/sonymobile/settings/stamina/SwitchPreference;->setEnabled(Z)V

    .line 142
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mLBWPreference:Lcom/sonymobile/settings/stamina/SwitchPreference;

    invoke-virtual {v1, v0}, Lcom/sonymobile/settings/stamina/SwitchPreference;->setSelectable(Z)V

    .line 143
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mLBWPreference:Lcom/sonymobile/settings/stamina/SwitchPreference;

    invoke-virtual {v1, v0}, Lcom/sonymobile/settings/stamina/SwitchPreference;->setEnabled(Z)V

    .line 144
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mBatteryPercentagePreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setSelectable(Z)V

    .line 145
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mBatteryPercentagePreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 146
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com,android.settings.intent.ACTION_BT_SWITCH"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mIntentFilter:Landroid/content/IntentFilter;

    .line 147
    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/StaminaSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 149
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mLBWPreference:Lcom/sonymobile/settings/stamina/SwitchPreference;

    invoke-direct {p0, v1}, Lcom/sonymobile/settings/stamina/StaminaSettings;->initLBWifiHeader(Lcom/sonymobile/settings/stamina/SwitchPreference;)V

    .line 150
    return-void
.end method
