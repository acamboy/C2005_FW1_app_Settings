.class public Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "ChooseLockGeneric.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ChooseLockGeneric;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChooseLockGenericFragment"
.end annotation


# instance fields
.field private mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

.field private mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mFinishPending:Z

.field private mKeyStore:Landroid/security/KeyStore;

.field private mPasswordConfirmed:Z

.field private mWaitingForConfirmation:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 59
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 81
    iput-boolean v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    .line 82
    iput-boolean v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mWaitingForConfirmation:Z

    .line 83
    iput-boolean v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFinishPending:Z

    return-void
.end method

.method private allowedForFallback(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 336
    const-string v0, "unlock_backup_info"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "unlock_set_pattern"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "unlock_set_pin"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private disableUnusablePreferences(ILlibcore/util/MutableBoolean;)V
    .locals 15
    .param p1, "quality"    # I
    .param p2, "allowBiometric"    # Llibcore/util/MutableBoolean;

    .prologue
    .line 285
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 286
    .local v2, "entries":Landroid/preference/PreferenceScreen;
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v12

    const-string v13, "lockscreen.biometric_weak_fallback"

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    .line 288
    .local v6, "onlyShowFallback":Z
    iget-object v12, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {v12}, Lcom/android/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricWeakInstalled()Z

    move-result v11

    .line 292
    .local v11, "weakBiometricAvailable":Z
    const-string v12, "user"

    invoke-virtual {p0, v12}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/UserManager;

    .line 293
    .local v5, "mUm":Landroid/os/UserManager;
    const/4 v12, 0x1

    invoke-virtual {v5, v12}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v9

    .line 294
    .local v9, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_3

    const/4 v8, 0x1

    .line 296
    .local v8, "singleUser":Z
    :goto_0
    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v12

    add-int/lit8 v3, v12, -0x1

    .local v3, "i":I
    :goto_1
    if-ltz v3, :cond_11

    .line 297
    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v7

    .line 298
    .local v7, "pref":Landroid/preference/Preference;
    instance-of v12, v7, Landroid/preference/PreferenceScreen;

    if-eqz v12, :cond_2

    move-object v12, v7

    .line 299
    check-cast v12, Landroid/preference/PreferenceScreen;

    invoke-virtual {v12}, Landroid/preference/PreferenceScreen;->getKey()Ljava/lang/String;

    move-result-object v4

    .line 300
    .local v4, "key":Ljava/lang/String;
    const/4 v1, 0x1

    .line 301
    .local v1, "enabled":Z
    const/4 v10, 0x1

    .line 302
    .local v10, "visible":Z
    const-string v12, "unlock_set_off"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 303
    if-gtz p1, :cond_4

    const/4 v1, 0x1

    .line 304
    :goto_2
    move v10, v8

    .line 318
    :cond_0
    :goto_3
    if-eqz v10, :cond_1

    if-eqz v6, :cond_10

    invoke-direct {p0, v4}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->allowedForFallback(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_10

    .line 319
    :cond_1
    invoke-virtual {v2, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 296
    .end local v1    # "enabled":Z
    .end local v4    # "key":Ljava/lang/String;
    .end local v10    # "visible":Z
    :cond_2
    :goto_4
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 294
    .end local v3    # "i":I
    .end local v7    # "pref":Landroid/preference/Preference;
    .end local v8    # "singleUser":Z
    :cond_3
    const/4 v8, 0x0

    goto :goto_0

    .line 303
    .restart local v1    # "enabled":Z
    .restart local v3    # "i":I
    .restart local v4    # "key":Ljava/lang/String;
    .restart local v7    # "pref":Landroid/preference/Preference;
    .restart local v8    # "singleUser":Z
    .restart local v10    # "visible":Z
    :cond_4
    const/4 v1, 0x0

    goto :goto_2

    .line 305
    :cond_5
    const-string v12, "unlock_set_none"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 306
    if-gtz p1, :cond_6

    const/4 v1, 0x1

    :goto_5
    goto :goto_3

    :cond_6
    const/4 v1, 0x0

    goto :goto_5

    .line 307
    :cond_7
    const-string v12, "unlock_set_biometric_weak"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 308
    const v12, 0x8000

    move/from16 v0, p1

    if-le v0, v12, :cond_8

    move-object/from16 v0, p2

    iget-boolean v12, v0, Llibcore/util/MutableBoolean;->value:Z

    if-eqz v12, :cond_9

    :cond_8
    const/4 v1, 0x1

    .line 310
    :goto_6
    move v10, v11

    goto :goto_3

    .line 308
    :cond_9
    const/4 v1, 0x0

    goto :goto_6

    .line 311
    :cond_a
    const-string v12, "unlock_set_pattern"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 312
    const/high16 v12, 0x10000

    move/from16 v0, p1

    if-gt v0, v12, :cond_b

    const/4 v1, 0x1

    :goto_7
    goto :goto_3

    :cond_b
    const/4 v1, 0x0

    goto :goto_7

    .line 313
    :cond_c
    const-string v12, "unlock_set_pin"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_e

    .line 314
    const/high16 v12, 0x20000

    move/from16 v0, p1

    if-gt v0, v12, :cond_d

    const/4 v1, 0x1

    :goto_8
    goto :goto_3

    :cond_d
    const/4 v1, 0x0

    goto :goto_8

    .line 315
    :cond_e
    const-string v12, "unlock_set_password"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 316
    const/high16 v12, 0x60000

    move/from16 v0, p1

    if-gt v0, v12, :cond_f

    const/4 v1, 0x1

    :goto_9
    goto :goto_3

    :cond_f
    const/4 v1, 0x0

    goto :goto_9

    .line 320
    :cond_10
    if-nez v1, :cond_2

    .line 321
    const v12, 0x7f070204

    invoke-virtual {v7, v12}, Landroid/preference/Preference;->setSummary(I)V

    .line 322
    const/4 v12, 0x0

    invoke-virtual {v7, v12}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_4

    .line 326
    .end local v1    # "enabled":Z
    .end local v4    # "key":Ljava/lang/String;
    .end local v7    # "pref":Landroid/preference/Preference;
    .end local v10    # "visible":Z
    :cond_11
    return-void
.end method

.method private getBiometricSensorIntent()Landroid/content/Intent;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 341
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/android/settings/ChooseLockGeneric$InternalActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 343
    const-string v1, "lockscreen.biometric_weak_fallback"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 344
    const-string v1, "confirm_credentials"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 345
    const-string v1, ":android:show_fragment_title"

    const v2, 0x7f0701f2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 350
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 351
    const-string v2, "com.android.facelock"

    const-string v3, "com.android.facelock.SetupIntro"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 352
    const-string v2, "showTutorial"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 353
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v4, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 354
    const-string v2, "PendingIntent"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 355
    return-object v1
.end method

.method private updatePreferencesOrFinish()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 200
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 201
    .local v1, "intent":Landroid/content/Intent;
    const-string v4, "lockscreen.password_type"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 202
    .local v3, "quality":I
    if-ne v3, v5, :cond_1

    .line 204
    const-string v4, "minimum_quality"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 205
    new-instance v0, Llibcore/util/MutableBoolean;

    invoke-direct {v0, v6}, Llibcore/util/MutableBoolean;-><init>(Z)V

    .line 206
    .local v0, "allowBiometric":Llibcore/util/MutableBoolean;
    invoke-direct {p0, v3, v0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->upgradeQuality(ILlibcore/util/MutableBoolean;)I

    move-result v3

    .line 207
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 208
    .local v2, "prefScreen":Landroid/preference/PreferenceScreen;
    if-eqz v2, :cond_0

    .line 209
    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 211
    :cond_0
    const v4, 0x7f050025

    invoke-virtual {p0, v4}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->addPreferencesFromResource(I)V

    .line 212
    invoke-direct {p0, v3, v0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->disableUnusablePreferences(ILlibcore/util/MutableBoolean;)V

    .line 215
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->customizePreferences()V

    .line 216
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->customizeOnResume()V

    .line 220
    .end local v0    # "allowBiometric":Llibcore/util/MutableBoolean;
    .end local v2    # "prefScreen":Landroid/preference/PreferenceScreen;
    :goto_0
    return-void

    .line 218
    :cond_1
    invoke-virtual {p0, v3, v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    goto :goto_0
.end method

.method private upgradeQuality(ILlibcore/util/MutableBoolean;)I
    .locals 2
    .param p1, "quality"    # I
    .param p2, "allowBiometric"    # Llibcore/util/MutableBoolean;

    .prologue
    const v1, 0x8000

    .line 224
    invoke-direct {p0, p1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->upgradeQualityForDPM(I)I

    move-result p1

    .line 225
    invoke-direct {p0, p1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->upgradeQualityForKeyStore(I)I

    move-result p1

    .line 226
    invoke-direct {p0, p1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->upgradeQualityForEncryption(I)I

    move-result v0

    .line 227
    .local v0, "encryptionQuality":I
    if-le v0, p1, :cond_0

    .line 230
    if-eqz p2, :cond_2

    .line 231
    if-gt p1, v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p2, Llibcore/util/MutableBoolean;->value:Z

    :cond_0
    move p1, v0

    .line 239
    .end local p1    # "quality":I
    :goto_1
    return p1

    .line 231
    .restart local p1    # "quality":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 233
    :cond_2
    if-ne p1, v1, :cond_0

    goto :goto_1
.end method

.method private upgradeQualityForDPM(I)I
    .locals 3
    .param p1, "quality"    # I

    .prologue
    .line 244
    iget-object v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;)I

    move-result v0

    .line 245
    .local v0, "minQuality":I
    if-ge p1, v0, :cond_0

    .line 246
    move p1, v0

    .line 248
    :cond_0
    return p1
.end method

.method private upgradeQualityForEncryption(I)I
    .locals 3
    .param p1, "quality"    # I

    .prologue
    .line 259
    iget-object v2, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v2}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryptionStatus()I

    move-result v1

    .line 260
    .local v1, "encryptionStatus":I
    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 262
    .local v0, "encrypted":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 263
    const/high16 v2, 0x20000

    if-ge p1, v2, :cond_1

    .line 264
    const/high16 p1, 0x20000

    .line 267
    :cond_1
    return p1

    .line 260
    .end local v0    # "encrypted":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private upgradeQualityForKeyStore(I)I
    .locals 1
    .param p1, "quality"    # I

    .prologue
    .line 271
    iget-object v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v0}, Landroid/security/KeyStore;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 272
    const/high16 v0, 0x10000

    if-ge p1, v0, :cond_0

    .line 273
    const/high16 p1, 0x10000

    .line 276
    :cond_0
    return p1
.end method


# virtual methods
.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 429
    const v0, 0x7f0707fb

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    .line 175
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 176
    iput-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mWaitingForConfirmation:Z

    .line 177
    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 178
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    .line 179
    invoke-direct {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->updatePreferencesOrFinish()V

    .line 188
    :goto_0
    return-void

    .line 180
    :cond_0
    const/16 v0, 0x65

    if-ne p1, v0, :cond_1

    .line 181
    iget-object v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {v0}, Lcom/android/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->deleteTempGallery()V

    .line 182
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/Activity;->setResult(I)V

    .line 183
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    goto :goto_0

    .line 185
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 186
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    .line 87
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 89
    const-string v2, "device_policy"

    invoke-virtual {p0, v2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    iput-object v2, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 90
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mKeyStore:Landroid/security/KeyStore;

    .line 91
    new-instance v2, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v2, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    .line 94
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v4, "confirm_credentials"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 96
    .local v0, "confirmCredentials":Z
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    instance-of v2, v2, Lcom/android/settings/ChooseLockGeneric$InternalActivity;

    if-eqz v2, :cond_0

    .line 97
    if-nez v0, :cond_3

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    .line 100
    :cond_0
    if-eqz p1, :cond_1

    .line 101
    const-string v2, "password_confirmed"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    .line 102
    const-string v2, "waiting_for_confirmation"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mWaitingForConfirmation:Z

    .line 103
    const-string v2, "finish_pending"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFinishPending:Z

    .line 106
    :cond_1
    iget-boolean v2, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    if-eqz v2, :cond_4

    .line 107
    invoke-direct {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->updatePreferencesOrFinish()V

    .line 118
    :cond_2
    :goto_1
    return-void

    .line 97
    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    .line 108
    :cond_4
    iget-boolean v2, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mWaitingForConfirmation:Z

    if-nez v2, :cond_2

    .line 109
    new-instance v1, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 111
    .local v1, "helper":Lcom/android/settings/ChooseLockSettingsHelper;
    const/16 v2, 0x64

    invoke-virtual {v1, v2, v5, v5}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 112
    iput-boolean v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    .line 113
    invoke-direct {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->updatePreferencesOrFinish()V

    goto :goto_1

    .line 115
    :cond_5
    iput-boolean v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mWaitingForConfirmation:Z

    goto :goto_1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 161
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v2

    .line 162
    .local v2, "v":Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "lockscreen.biometric_weak_fallback"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 164
    .local v1, "onlyShowFallback":Z
    if-eqz v1, :cond_0

    .line 165
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0400a6

    invoke-static {v3, v4, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 167
    .local v0, "header":Landroid/view/View;
    const v3, 0x102000a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    invoke-virtual {v3, v0, v6, v5}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 170
    .end local v0    # "header":Landroid/view/View;
    :cond_0
    return-object v2
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v3, 0x0

    .line 132
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 133
    .local v1, "key":Ljava/lang/String;
    const/4 v0, 0x1

    .line 134
    .local v0, "handled":Z
    const-string v2, "unlock_set_off"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 135
    const/4 v2, 0x1

    invoke-virtual {p0, v3, v2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    .line 155
    :goto_0
    return v0

    .line 137
    :cond_0
    const-string v2, "unlock_set_none"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 138
    invoke-virtual {p0, v3, v3}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    goto :goto_0

    .line 140
    :cond_1
    const-string v2, "unlock_set_biometric_weak"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 141
    const v2, 0x8000

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    goto :goto_0

    .line 143
    :cond_2
    const-string v2, "unlock_set_pattern"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 144
    const/high16 v2, 0x10000

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    goto :goto_0

    .line 146
    :cond_3
    const-string v2, "unlock_set_pin"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 147
    const/high16 v2, 0x20000

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    goto :goto_0

    .line 149
    :cond_4
    const-string v2, "unlock_set_password"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 150
    const/high16 v2, 0x40000

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    goto :goto_0

    .line 153
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 122
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 123
    iget-boolean v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFinishPending:Z

    if-eqz v0, :cond_0

    .line 124
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFinishPending:Z

    .line 125
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    .line 127
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 192
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 194
    const-string v0, "password_confirmed"

    iget-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 195
    const-string v0, "waiting_for_confirmation"

    iget-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mWaitingForConfirmation:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 196
    const-string v0, "finish_pending"

    iget-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFinishPending:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 197
    return-void
.end method

.method updateUnlockMethodAndFinish(IZ)V
    .locals 11

    .prologue
    const/high16 v10, 0x2000000

    const/16 v9, 0x65

    const/4 v0, 0x4

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 369
    iget-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    if-nez v1, :cond_0

    .line 370
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Tried to update password without confirming it"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 373
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "lockscreen.biometric_weak_fallback"

    invoke-virtual {v1, v2, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 376
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->upgradeQuality(ILlibcore/util/MutableBoolean;)I

    move-result v3

    .line 378
    const/high16 v1, 0x20000

    if-lt v3, v1, :cond_2

    .line 379
    iget-object v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;)I

    move-result v1

    .line 380
    if-ge v1, v0, :cond_7

    .line 383
    :goto_0
    iget-object v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1, v3}, Landroid/app/admin/DevicePolicyManager;->getPasswordMaximumLength(I)I

    move-result v1

    .line 384
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-class v6, Lcom/android/settings/ChooseLockPassword;

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v4

    .line 385
    const-string v5, "lockscreen.password_type"

    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 386
    const-string v3, "lockscreen.password_min"

    invoke-virtual {v4, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 387
    const-string v0, "lockscreen.password_max"

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 388
    const-string v0, "confirm_credentials"

    invoke-virtual {v4, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 389
    const-string v0, "lockscreen.biometric_weak_fallback"

    invoke-virtual {v4, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 391
    if-eqz v2, :cond_1

    .line 392
    invoke-virtual {p0, v4, v9}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 425
    :goto_1
    return-void

    .line 395
    :cond_1
    iput-boolean v8, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFinishPending:Z

    .line 396
    invoke-virtual {v4, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 397
    invoke-virtual {p0, v4}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 399
    :cond_2
    const/high16 v0, 0x10000

    if-ne v3, v0, :cond_4

    .line 400
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v3, Lcom/android/settings/ChooseLockPattern;

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 401
    const-string v1, "key_lock_method"

    const-string v3, "pattern"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 402
    const-string v1, "confirm_credentials"

    invoke-virtual {v0, v1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 403
    const-string v1, "lockscreen.biometric_weak_fallback"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 405
    if-eqz v2, :cond_3

    .line 406
    invoke-virtual {p0, v0, v9}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 409
    :cond_3
    iput-boolean v8, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFinishPending:Z

    .line 410
    invoke-virtual {v0, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 411
    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 413
    :cond_4
    const v0, 0x8000

    if-ne v3, v0, :cond_5

    .line 414
    invoke-direct {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getBiometricSensorIntent()Landroid/content/Intent;

    move-result-object v0

    .line 415
    iput-boolean v8, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFinishPending:Z

    .line 416
    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 417
    :cond_5
    if-nez v3, :cond_6

    .line 418
    iget-object v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {v0}, Lcom/android/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/android/internal/widget/LockPatternUtils;->clearLock(Z)V

    .line 419
    iget-object v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {v0}, Lcom/android/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/internal/widget/LockPatternUtils;->setLockScreenDisabled(Z)V

    .line 420
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 421
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    goto :goto_1

    .line 423
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    goto :goto_1

    :cond_7
    move v0, v1

    goto/16 :goto_0
.end method
