.class public Lcom/android/settings/WirelessSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "WirelessSettings.java"


# instance fields
.field private mAirplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

.field private mAirplaneModePreference:Landroid/preference/CheckBoxPreference;

.field private mCm:Landroid/net/ConnectivityManager;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mManageMobilePlanMessage:Ljava/lang/String;

.field private mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

.field private mNsdEnabler:Lcom/android/settings/NsdEnabler;

.field private mTm:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 200
    new-instance v0, Lcom/android/settings/WirelessSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/WirelessSettings$2;-><init>(Lcom/android/settings/WirelessSettings;)V

    iput-object v0, p0, Lcom/android/settings/WirelessSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/WirelessSettings;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/WirelessSettings;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/android/settings/WirelessSettings;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/settings/WirelessSettings;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/WirelessSettings;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/android/settings/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/settings/WirelessSettings;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/WirelessSettings;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/android/settings/WirelessSettings;->updateSimState(Landroid/content/Intent;)V

    return-void
.end method

.method public static isRadioAllowed(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 190
    invoke-static {p0}, Lcom/android/settings/AirplaneModeEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 196
    :cond_0
    :goto_0
    return v1

    .line 194
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_toggleable_radios"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 196
    .local v0, "toggleable":Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 186
    const-string v0, "WirelessSettings"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    return-void
.end method

.method private final updateSimState(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 212
    const-string v3, "ss"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 215
    .local v1, "stateExtra":Ljava/lang/String;
    const-string v3, "subscription"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 216
    .local v2, "sub":I
    const-string v3, "WirelessSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateSimState for subscription :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "stateExtra="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    const-string v3, "READY"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 218
    const-string v3, "mobile_network_settings"

    invoke-virtual {p0, v3}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    .line 219
    .local v0, "manageSub":Landroid/preference/PreferenceScreen;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 221
    .end local v0    # "manageSub":Landroid/preference/PreferenceScreen;
    :cond_0
    return-void
.end method


# virtual methods
.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 436
    const v0, 0x7f0707f6

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 426
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 427
    const-string v1, "exit_ecm_result"

    const/4 v2, 0x0

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 429
    .local v0, "isChoiceYes":Ljava/lang/Boolean;
    iget-object v1, p0, Lcom/android/settings/WirelessSettings;->mAirplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iget-object v3, p0, Lcom/android/settings/WirelessSettings;->mAirplaneModePreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/AirplaneModeEnabler;->setAirplaneModeInECM(ZZ)V

    .line 432
    .end local v0    # "isChoiceYes":Ljava/lang/Boolean;
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 27
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 226
    invoke-super/range {p0 .. p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 227
    if-eqz p1, :cond_0

    .line 228
    const-string v24, "mManageMobilePlanMessage"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    .line 230
    :cond_0
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "onCreate: mManageMobilePlanMessage="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/settings/WirelessSettings;->log(Ljava/lang/String;)V

    .line 232
    const-string v24, "connectivity"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/net/ConnectivityManager;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/WirelessSettings;->mCm:Landroid/net/ConnectivityManager;

    .line 233
    const-string v24, "phone"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/telephony/TelephonyManager;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/WirelessSettings;->mTm:Landroid/telephony/TelephonyManager;

    .line 235
    const v24, 0x7f05005c

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->addPreferencesFromResource(I)V

    .line 237
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v24

    if-eqz v24, :cond_11

    const/4 v8, 0x1

    .line 239
    .local v8, "isSecondaryUser":Z
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 240
    .local v2, "activity":Landroid/app/Activity;
    const-string v24, "toggle_airplane"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v24

    check-cast v24, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/WirelessSettings;->mAirplaneModePreference:Landroid/preference/CheckBoxPreference;

    .line 242
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v24

    if-eqz v24, :cond_1

    .line 244
    const-string v24, "mobile_network_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    check-cast v13, Landroid/preference/PreferenceScreen;

    .line 247
    .local v13, "manageSub":Landroid/preference/PreferenceScreen;
    if-eqz v13, :cond_1

    .line 248
    invoke-virtual {v13}, Landroid/preference/PreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object v6

    .line 250
    .local v6, "intent":Landroid/content/Intent;
    const-string v24, "com.android.phone"

    const-string v25, "com.android.phone.MSimTabMobileNetworkSettings"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 261
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v22

    .line 262
    .local v22, "tm":Landroid/telephony/MSimTelephonyManager;
    const/16 v24, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/telephony/MSimTelephonyManager;->getSimState(I)I

    move-result v20

    .line 263
    .local v20, "sim_1_state":I
    const/16 v24, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/telephony/MSimTelephonyManager;->getSimState(I)I

    move-result v21

    .line 264
    .local v21, "sim_2_state":I
    const-string v24, "WirelessSettings"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "sim_1_state = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " sim_2_state = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    const/16 v24, 0x5

    move/from16 v0, v20

    move/from16 v1, v24

    if-eq v0, v1, :cond_1

    const/16 v24, 0x5

    move/from16 v0, v21

    move/from16 v1, v24

    if-eq v0, v1, :cond_1

    .line 267
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 273
    .end local v6    # "intent":Landroid/content/Intent;
    .end local v13    # "manageSub":Landroid/preference/PreferenceScreen;
    .end local v20    # "sim_1_state":I
    .end local v21    # "sim_2_state":I
    .end local v22    # "tm":Landroid/telephony/MSimTelephonyManager;
    :cond_1
    const-string v24, "toggle_nfc"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/preference/CheckBoxPreference;

    .line 276
    .local v14, "nfc":Landroid/preference/CheckBoxPreference;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v10

    .line 277
    .local v10, "language":Ljava/lang/String;
    const-string v24, "fr"

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_2

    sget-object v24, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v25, "orange_fr"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_2

    .line 279
    const-string v24, "Utiliser le NFC pour lire des tags et utiliser les services Citizi."

    move-object/from16 v0, v24

    invoke-virtual {v14, v0}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 283
    :cond_2
    const-string v24, "android_beam_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceScreen;

    .line 284
    .local v3, "androidBeam":Landroid/preference/PreferenceScreen;
    const-string v24, "toggle_nsd"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    check-cast v15, Landroid/preference/CheckBoxPreference;

    .line 286
    .local v15, "nsd":Landroid/preference/CheckBoxPreference;
    new-instance v24, Lcom/android/settings/AirplaneModeEnabler;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/WirelessSettings;->mAirplaneModePreference:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-direct {v0, v2, v1}, Lcom/android/settings/AirplaneModeEnabler;-><init>(Landroid/content/Context;Landroid/preference/CheckBoxPreference;)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/WirelessSettings;->mAirplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

    .line 287
    new-instance v24, Lcom/android/settings/nfc/NfcEnabler;

    move-object/from16 v0, v24

    invoke-direct {v0, v2, v14, v3}, Lcom/android/settings/nfc/NfcEnabler;-><init>(Landroid/content/Context;Landroid/preference/CheckBoxPreference;Landroid/preference/PreferenceScreen;)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/WirelessSettings;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    .line 290
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 293
    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    const-string v25, "airplane_mode_toggleable_radios"

    invoke-static/range {v24 .. v25}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 297
    .local v23, "toggleable":Ljava/lang/String;
    if-nez v8, :cond_12

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x1110047

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v24

    if-eqz v24, :cond_12

    const/4 v9, 0x1

    .line 299
    .local v9, "isWimaxEnabled":Z
    :goto_1
    if-nez v9, :cond_13

    .line 300
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v19

    .line 301
    .local v19, "root":Landroid/preference/PreferenceScreen;
    const-string v24, "wimax_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    .line 302
    .local v18, "ps":Landroid/preference/Preference;
    if-eqz v18, :cond_3

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 311
    .end local v18    # "ps":Landroid/preference/Preference;
    .end local v19    # "root":Landroid/preference/PreferenceScreen;
    :cond_3
    :goto_2
    if-eqz v23, :cond_4

    const-string v24, "wifi"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_5

    .line 312
    :cond_4
    const-string v24, "vpn_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v24

    const-string v25, "toggle_airplane"

    invoke-virtual/range {v24 .. v25}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    .line 314
    :cond_5
    if-eqz v8, :cond_6

    .line 315
    const-string v24, "vpn_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    .line 319
    :cond_6
    if-eqz v23, :cond_7

    const-string v24, "bluetooth"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_7

    .line 324
    :cond_7
    if-eqz v23, :cond_8

    const-string v24, "nfc"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_9

    .line 325
    :cond_8
    const-string v24, "toggle_nfc"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v24

    const-string v25, "toggle_airplane"

    invoke-virtual/range {v24 .. v25}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    .line 326
    const-string v24, "android_beam_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v24

    const-string v25, "toggle_airplane"

    invoke-virtual/range {v24 .. v25}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    .line 330
    :cond_9
    invoke-static {v2}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/WirelessSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 331
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/WirelessSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    move-object/from16 v24, v0

    if-nez v24, :cond_a

    .line 332
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 333
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 334
    const/16 v24, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/WirelessSettings;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    .line 338
    :cond_a
    if-nez v8, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v24

    if-eqz v24, :cond_c

    .line 339
    :cond_b
    const-string v24, "mobile_network_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    .line 340
    const-string v24, "manage_mobile_plan"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    .line 344
    :cond_c
    const-string v24, "proxy_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    .line 345
    .local v12, "mGlobalProxy":Landroid/preference/Preference;
    const-string v24, "device_policy"

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/admin/DevicePolicyManager;

    .line 348
    .local v11, "mDPM":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 349
    invoke-virtual {v11}, Landroid/app/admin/DevicePolicyManager;->getGlobalProxyAdmin()Landroid/content/ComponentName;

    move-result-object v24

    if-nez v24, :cond_15

    const/16 v24, 0x1

    :goto_3
    move/from16 v0, v24

    invoke-virtual {v12, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 352
    const-string v24, "connectivity"

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/ConnectivityManager;

    .line 354
    .local v4, "cm":Landroid/net/ConnectivityManager;
    if-nez v8, :cond_d

    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->isTetheringSupported()Z

    move-result v24

    if-nez v24, :cond_16

    .line 355
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v24

    const-string v25, "tether_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 362
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x111004c

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    .line 365
    .local v7, "isCellBroadcastAppLinkEnabled":Z
    if-eqz v7, :cond_e

    .line 366
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v17

    .line 367
    .local v17, "pm":Landroid/content/pm/PackageManager;
    const-string v24, "com.android.cellbroadcastreceiver"

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v24

    const/16 v25, 0x2

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_e

    .line 369
    const/4 v7, 0x0

    .line 375
    .end local v17    # "pm":Landroid/content/pm/PackageManager;
    :cond_e
    :goto_5
    if-nez v8, :cond_f

    if-nez v7, :cond_10

    .line 376
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v19

    .line 377
    .restart local v19    # "root":Landroid/preference/PreferenceScreen;
    const-string v24, "cell_broadcast_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    .line 378
    .restart local v18    # "ps":Landroid/preference/Preference;
    if-eqz v18, :cond_10

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 380
    .end local v18    # "ps":Landroid/preference/Preference;
    .end local v19    # "root":Landroid/preference/PreferenceScreen;
    :cond_10
    return-void

    .line 237
    .end local v2    # "activity":Landroid/app/Activity;
    .end local v3    # "androidBeam":Landroid/preference/PreferenceScreen;
    .end local v4    # "cm":Landroid/net/ConnectivityManager;
    .end local v7    # "isCellBroadcastAppLinkEnabled":Z
    .end local v8    # "isSecondaryUser":Z
    .end local v9    # "isWimaxEnabled":Z
    .end local v10    # "language":Ljava/lang/String;
    .end local v11    # "mDPM":Landroid/app/admin/DevicePolicyManager;
    .end local v12    # "mGlobalProxy":Landroid/preference/Preference;
    .end local v14    # "nfc":Landroid/preference/CheckBoxPreference;
    .end local v15    # "nsd":Landroid/preference/CheckBoxPreference;
    .end local v23    # "toggleable":Ljava/lang/String;
    :cond_11
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 297
    .restart local v2    # "activity":Landroid/app/Activity;
    .restart local v3    # "androidBeam":Landroid/preference/PreferenceScreen;
    .restart local v8    # "isSecondaryUser":Z
    .restart local v10    # "language":Ljava/lang/String;
    .restart local v14    # "nfc":Landroid/preference/CheckBoxPreference;
    .restart local v15    # "nsd":Landroid/preference/CheckBoxPreference;
    .restart local v23    # "toggleable":Ljava/lang/String;
    :cond_12
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 304
    .restart local v9    # "isWimaxEnabled":Z
    :cond_13
    if-eqz v23, :cond_14

    const-string v24, "wimax"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_3

    if-eqz v9, :cond_3

    .line 306
    :cond_14
    const-string v24, "wimax_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    .line 307
    .restart local v18    # "ps":Landroid/preference/Preference;
    const-string v24, "toggle_airplane"

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 349
    .end local v18    # "ps":Landroid/preference/Preference;
    .restart local v11    # "mDPM":Landroid/app/admin/DevicePolicyManager;
    .restart local v12    # "mGlobalProxy":Landroid/preference/Preference;
    :cond_15
    const/16 v24, 0x0

    goto/16 :goto_3

    .line 357
    .restart local v4    # "cm":Landroid/net/ConnectivityManager;
    :cond_16
    const-string v24, "tether_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v16

    .line 358
    .local v16, "p":Landroid/preference/Preference;
    invoke-static {v4}, Lcom/android/settings/Utils;->getTetheringLabel(Landroid/net/ConnectivityManager;)I

    move-result v24

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    goto :goto_4

    .line 372
    .end local v16    # "p":Landroid/preference/Preference;
    .restart local v7    # "isCellBroadcastAppLinkEnabled":Z
    :catch_0
    move-exception v5

    .line 373
    .local v5, "ignored":Ljava/lang/IllegalArgumentException;
    const/4 v7, 0x0

    goto :goto_5
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .param p1, "dialogId"    # I

    .prologue
    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreateDialog: dialogId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/WirelessSettings;->log(Ljava/lang/String;)V

    .line 167
    packed-switch p1, :pswitch_data_0

    .line 182
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 169
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/settings/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/WirelessSettings$1;

    invoke-direct {v2, p0}, Lcom/android/settings/WirelessSettings$1;-><init>(Lcom/android/settings/WirelessSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 167
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onManageMobilePlanClick()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const v8, 0x7f070465

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 118
    const-string v5, "onManageMobilePlanClick:"

    invoke-direct {p0, v5}, Lcom/android/settings/WirelessSettings;->log(Ljava/lang/String;)V

    .line 119
    iput-object v9, p0, Lcom/android/settings/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    .line 120
    invoke-virtual {p0}, Lcom/android/settings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 122
    .local v3, "resources":Landroid/content/res/Resources;
    iget-object v5, p0, Lcom/android/settings/WirelessSettings;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v5}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 123
    .local v1, "ni":Landroid/net/NetworkInfo;
    iget-object v5, p0, Lcom/android/settings/WirelessSettings;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v5

    if-eqz v5, :cond_4

    if-eqz v1, :cond_4

    .line 125
    iget-object v5, p0, Lcom/android/settings/WirelessSettings;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v5}, Landroid/net/ConnectivityManager;->getMobileProvisioningUrl()Ljava/lang/String;

    move-result-object v4

    .line 126
    .local v4, "url":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 128
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 129
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 130
    invoke-virtual {p0, v0}, Lcom/android/settings/WirelessSettings;->startActivity(Landroid/content/Intent;)V

    .line 131
    iput-object v9, p0, Lcom/android/settings/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    .line 158
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v4    # "url":Ljava/lang/String;
    :goto_0
    iget-object v5, p0, Lcom/android/settings/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 159
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onManageMobilePlanClick: message="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings/WirelessSettings;->log(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p0, v7}, Lcom/android/settings/WirelessSettings;->showDialog(I)V

    .line 162
    :cond_0
    return-void

    .line 134
    .restart local v4    # "url":Ljava/lang/String;
    :cond_1
    iget-object v5, p0, Lcom/android/settings/WirelessSettings;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v2

    .line 135
    .local v2, "operatorName":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 138
    iget-object v5, p0, Lcom/android/settings/WirelessSettings;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v2

    .line 139
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 140
    const v5, 0x7f070464

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    goto :goto_0

    .line 143
    :cond_2
    new-array v5, v7, [Ljava/lang/Object;

    aput-object v2, v5, v6

    invoke-virtual {v3, v8, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    goto :goto_0

    .line 147
    :cond_3
    new-array v5, v7, [Ljava/lang/Object;

    aput-object v2, v5, v6

    invoke-virtual {v3, v8, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    goto :goto_0

    .line 151
    .end local v2    # "operatorName":Ljava/lang/String;
    .end local v4    # "url":Ljava/lang/String;
    :cond_4
    iget-object v5, p0, Lcom/android/settings/WirelessSettings;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v5

    if-nez v5, :cond_5

    .line 153
    const v5, 0x7f070466

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    goto :goto_0

    .line 156
    :cond_5
    const v5, 0x7f070467

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 412
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 414
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mAirplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

    invoke-virtual {v0}, Lcom/android/settings/AirplaneModeEnabler;->pause()V

    .line 415
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    if-eqz v0, :cond_0

    .line 416
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    invoke-virtual {v0}, Lcom/android/settings/nfc/NfcEnabler;->pause()V

    .line 418
    :cond_0
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mNsdEnabler:Lcom/android/settings/NsdEnabler;

    if-eqz v0, :cond_1

    .line 419
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mNsdEnabler:Lcom/android/settings/NsdEnabler;

    invoke-virtual {v0}, Lcom/android/settings/NsdEnabler;->pause()V

    .line 421
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/WirelessSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 422
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v0, 0x1

    .line 100
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreferenceTreeClick: preference="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/WirelessSettings;->log(Ljava/lang/String;)V

    .line 101
    iget-object v1, p0, Lcom/android/settings/WirelessSettings;->mAirplaneModePreference:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_0

    const-string v1, "ril.cdma.inecmmode"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 104
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.ACTION_SHOW_NOTICE_ECM_BLOCK_OTHERS"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/WirelessSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 112
    :goto_0
    return v0

    .line 108
    :cond_0
    const-string v0, "manage_mobile_plan"

    invoke-virtual {p0, v0}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-ne p2, v0, :cond_1

    .line 109
    invoke-virtual {p0}, Lcom/android/settings/WirelessSettings;->onManageMobilePlanClick()V

    .line 112
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 384
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 386
    iget-object v1, p0, Lcom/android/settings/WirelessSettings;->mAirplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

    invoke-virtual {v1}, Lcom/android/settings/AirplaneModeEnabler;->resume()V

    .line 387
    iget-object v1, p0, Lcom/android/settings/WirelessSettings;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    if-eqz v1, :cond_0

    .line 388
    iget-object v1, p0, Lcom/android/settings/WirelessSettings;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    invoke-virtual {v1}, Lcom/android/settings/nfc/NfcEnabler;->resume()V

    .line 390
    :cond_0
    iget-object v1, p0, Lcom/android/settings/WirelessSettings;->mNsdEnabler:Lcom/android/settings/NsdEnabler;

    if-eqz v1, :cond_1

    .line 391
    iget-object v1, p0, Lcom/android/settings/WirelessSettings;->mNsdEnabler:Lcom/android/settings/NsdEnabler;

    invoke-virtual {v1}, Lcom/android/settings/NsdEnabler;->resume()V

    .line 395
    :cond_1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 396
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 397
    invoke-virtual {p0}, Lcom/android/settings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/WirelessSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 399
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 403
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 405
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 406
    const-string v0, "mManageMobilePlanMessage"

    iget-object v1, p0, Lcom/android/settings/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    :cond_0
    return-void
.end method
