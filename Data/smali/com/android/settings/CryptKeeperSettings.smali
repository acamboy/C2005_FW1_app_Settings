.class public Lcom/android/settings/CryptKeeperSettings;
.super Landroid/app/Fragment;
.source "CryptKeeperSettings.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mBatteryWarning:Landroid/view/View;

.field private mContentView:Landroid/view/View;

.field private mEncryptSdCard:Z

.field private mEncryptSdCardCheckBox:Landroid/widget/CheckBox;

.field private mInitiateButton:Landroid/widget/Button;

.field private mInitiateListener:Landroid/view/View$OnClickListener;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mPowerWarning:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 67
    new-instance v0, Lcom/android/settings/CryptKeeperSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/CryptKeeperSettings$1;-><init>(Lcom/android/settings/CryptKeeperSettings;)V

    iput-object v0, p0, Lcom/android/settings/CryptKeeperSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 113
    new-instance v0, Lcom/android/settings/CryptKeeperSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/CryptKeeperSettings$2;-><init>(Lcom/android/settings/CryptKeeperSettings;)V

    iput-object v0, p0, Lcom/android/settings/CryptKeeperSettings;->mInitiateListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/CryptKeeperSettings;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/CryptKeeperSettings;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/settings/CryptKeeperSettings;->mInitiateButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/CryptKeeperSettings;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/CryptKeeperSettings;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/settings/CryptKeeperSettings;->mPowerWarning:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/CryptKeeperSettings;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/CryptKeeperSettings;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/settings/CryptKeeperSettings;->mBatteryWarning:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/CryptKeeperSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/CryptKeeperSettings;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/settings/CryptKeeperSettings;->checkEncryptionRequired()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/settings/CryptKeeperSettings;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/CryptKeeperSettings;
    .param p1, "x1"    # I

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/android/settings/CryptKeeperSettings;->runKeyguardConfirmation(I)Z

    move-result v0

    return v0
.end method

.method private checkEncryptionRequired()Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 94
    invoke-virtual {p0}, Lcom/android/settings/CryptKeeperSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "device_policy"

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 100
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryptionStatus()I

    move-result v5

    if-ne v5, v3, :cond_2

    move v1, v3

    .line 102
    .local v1, "internalStorageUnencrypted":Z
    :goto_0
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getSdcardEncryptionStatus()I

    move-result v5

    if-ne v5, v3, :cond_3

    move v2, v3

    .line 105
    .local v2, "sdcardUnencrypted":Z
    :goto_1
    if-nez v1, :cond_0

    iget-boolean v5, p0, Lcom/android/settings/CryptKeeperSettings;->mEncryptSdCard:Z

    if-eqz v5, :cond_1

    if-eqz v2, :cond_1

    :cond_0
    move v4, v3

    :cond_1
    return v4

    .end local v1    # "internalStorageUnencrypted":Z
    .end local v2    # "sdcardUnencrypted":Z
    :cond_2
    move v1, v4

    .line 100
    goto :goto_0

    .restart local v1    # "internalStorageUnencrypted":Z
    :cond_3
    move v2, v4

    .line 102
    goto :goto_1
.end method

.method private runKeyguardConfirmation(I)Z
    .locals 6
    .param p1, "request"    # I

    .prologue
    .line 227
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/CryptKeeperSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 228
    .local v0, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality()I

    move-result v1

    .line 229
    .local v1, "quality":I
    const v3, 0x8000

    if-ne v1, v3, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 233
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v1

    .line 235
    :cond_0
    const/high16 v3, 0x20000

    if-ge v1, v3, :cond_1

    .line 236
    const/4 v3, 0x0

    .line 240
    :goto_0
    return v3

    .line 239
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/CryptKeeperSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 240
    .local v2, "res":Landroid/content/res/Resources;
    new-instance v3, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/CryptKeeperSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4, p0}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    const v4, 0x7f07043f

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    const v5, 0x7f070440

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v3, p1, v4, v5}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    goto :goto_0
.end method

.method private showFinalConfirmation(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 265
    new-instance v1, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/CryptKeeperSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 266
    const-class v0, Lcom/android/settings/CryptKeeperConfirm;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setFragment(Ljava/lang/String;)V

    .line 267
    const v0, 0x7f0701e8

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setTitle(I)V

    .line 268
    invoke-virtual {v1}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "password"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    invoke-virtual {v1}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "sdcard"

    iget-boolean v3, p0, Lcom/android/settings/CryptKeeperSettings;->mEncryptSdCard:Z

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 270
    invoke-virtual {p0}, Lcom/android/settings/CryptKeeperSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/preference/PreferenceActivity;->onPreferenceStartFragment(Landroid/preference/PreferenceFragment;Landroid/preference/Preference;)Z

    .line 271
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x1

    .line 200
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 201
    invoke-virtual {p0}, Lcom/android/settings/CryptKeeperSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 202
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 203
    .local v2, "intent":Landroid/content/Intent;
    const-string v5, "android.app.action.START_ENCRYPTION"

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 204
    const-string v5, "device_policy"

    invoke-virtual {v0, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 206
    .local v1, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-eqz v1, :cond_0

    .line 207
    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryptionStatus()I

    move-result v4

    .line 208
    .local v4, "status":I
    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getSdcardEncryptionStatus()I

    move-result v3

    .line 210
    .local v3, "sdStatus":I
    if-eq v4, v7, :cond_0

    if-eq v3, v7, :cond_0

    .line 213
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 217
    .end local v1    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .end local v3    # "sdStatus":I
    .end local v4    # "status":I
    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 248
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 250
    const/16 v1, 0x37

    if-eq p1, v1, :cond_1

    .line 262
    :cond_0
    :goto_0
    return-void

    .line 256
    :cond_1
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    if-eqz p3, :cond_0

    .line 257
    const-string v1, "password"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 258
    .local v0, "password":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 259
    invoke-direct {p0, v0}, Lcom/android/settings/CryptKeeperSettings;->showFinalConfirmation(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 139
    iput-boolean p2, p0, Lcom/android/settings/CryptKeeperSettings;->mEncryptSdCard:Z

    .line 140
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 144
    const v1, 0x7f040020

    invoke-virtual {p1, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/CryptKeeperSettings;->mContentView:Landroid/view/View;

    .line 146
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    iput-object v1, p0, Lcom/android/settings/CryptKeeperSettings;->mIntentFilter:Landroid/content/IntentFilter;

    .line 147
    iget-object v1, p0, Lcom/android/settings/CryptKeeperSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 149
    iput-boolean v3, p0, Lcom/android/settings/CryptKeeperSettings;->mEncryptSdCard:Z

    .line 150
    iget-object v1, p0, Lcom/android/settings/CryptKeeperSettings;->mContentView:Landroid/view/View;

    const v2, 0x7f090045

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/android/settings/CryptKeeperSettings;->mEncryptSdCardCheckBox:Landroid/widget/CheckBox;

    .line 152
    invoke-virtual {p0}, Lcom/android/settings/CryptKeeperSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "device_policy"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 155
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getSdcardEncryptionStatus()I

    move-result v1

    if-eq v1, v4, :cond_1

    .line 158
    iput-boolean v3, p0, Lcom/android/settings/CryptKeeperSettings;->mEncryptSdCard:Z

    .line 159
    iget-object v1, p0, Lcom/android/settings/CryptKeeperSettings;->mEncryptSdCardCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 169
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/settings/CryptKeeperSettings;->mEncryptSdCardCheckBox:Landroid/widget/CheckBox;

    iget-boolean v2, p0, Lcom/android/settings/CryptKeeperSettings;->mEncryptSdCard:Z

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 170
    iget-object v1, p0, Lcom/android/settings/CryptKeeperSettings;->mEncryptSdCardCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 172
    iget-object v1, p0, Lcom/android/settings/CryptKeeperSettings;->mContentView:Landroid/view/View;

    const v2, 0x7f090048

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/CryptKeeperSettings;->mInitiateButton:Landroid/widget/Button;

    .line 173
    iget-object v1, p0, Lcom/android/settings/CryptKeeperSettings;->mInitiateButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/settings/CryptKeeperSettings;->mInitiateListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    iget-object v1, p0, Lcom/android/settings/CryptKeeperSettings;->mInitiateButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 176
    iget-object v1, p0, Lcom/android/settings/CryptKeeperSettings;->mContentView:Landroid/view/View;

    const v2, 0x7f090047

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/CryptKeeperSettings;->mPowerWarning:Landroid/view/View;

    .line 177
    iget-object v1, p0, Lcom/android/settings/CryptKeeperSettings;->mContentView:Landroid/view/View;

    const v2, 0x7f090046

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/CryptKeeperSettings;->mBatteryWarning:Landroid/view/View;

    .line 179
    iget-object v1, p0, Lcom/android/settings/CryptKeeperSettings;->mContentView:Landroid/view/View;

    return-object v1

    .line 160
    :cond_1
    invoke-virtual {v0, v5}, Landroid/app/admin/DevicePolicyManager;->getSdcardEncryption(Landroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 163
    iput-boolean v4, p0, Lcom/android/settings/CryptKeeperSettings;->mEncryptSdCard:Z

    .line 164
    iget-object v1, p0, Lcom/android/settings/CryptKeeperSettings;->mEncryptSdCardCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setEnabled(Z)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 190
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 191
    invoke-virtual {p0}, Lcom/android/settings/CryptKeeperSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/CryptKeeperSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 192
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 184
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 185
    invoke-virtual {p0}, Lcom/android/settings/CryptKeeperSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/CryptKeeperSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/CryptKeeperSettings;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 186
    return-void
.end method
