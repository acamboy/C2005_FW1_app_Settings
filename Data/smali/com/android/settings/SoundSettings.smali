.class public Lcom/android/settings/SoundSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SoundSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final NEED_VOICE_CAPABILITY:[Ljava/lang/String;


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mDockAudioMediaEnabled:Landroid/preference/CheckBoxPreference;

.field private mDockAudioSettings:Landroid/preference/Preference;

.field private mDockIntent:Landroid/content/Intent;

.field private mDockSounds:Landroid/preference/CheckBoxPreference;

.field private mDtmfTone:Landroid/preference/CheckBoxPreference;

.field private mHandler:Landroid/os/Handler;

.field private mHapticFeedback:Landroid/preference/CheckBoxPreference;

.field private mLockSounds:Landroid/preference/CheckBoxPreference;

.field private mMultiRingtonePreference:Landroid/preference/Preference;

.field private mMusicFx:Landroid/preference/Preference;

.field private mNotificationPreference:Landroid/preference/Preference;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRingtoneLookupRunnable:Ljava/lang/Runnable;

.field private mRingtonePreference:Landroid/preference/Preference;

.field private mSoundEffects:Landroid/preference/CheckBoxPreference;

.field private mSoundSettings:Landroid/preference/PreferenceGroup;

.field private mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 83
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "ringtone"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "ringtone_multi"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "dtmf_tone"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "category_calls_and_notification"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "emergency_tone"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "vibrate_when_ringing"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/SoundSettings;->NEED_VOICE_CAPABILITY:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 110
    new-instance v0, Lcom/android/settings/SoundSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/SoundSettings$1;-><init>(Lcom/android/settings/SoundSettings;)V

    iput-object v0, p0, Lcom/android/settings/SoundSettings;->mHandler:Landroid/os/Handler;

    .line 125
    new-instance v0, Lcom/android/settings/SoundSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/SoundSettings$2;-><init>(Lcom/android/settings/SoundSettings;)V

    iput-object v0, p0, Lcom/android/settings/SoundSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public static SetRingtoneRecoverStatus(Z)V
    .locals 3
    .param p0, "bRecovered"    # Z

    .prologue
    .line 509
    const-string v0, "SoundSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[FXN.ASD]SetRingtoneRecoverStatus value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    const-string v0, "persist.sys.mp.recovered"

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/SoundSettings;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/SoundSettings;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mRingtonePreference:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/SoundSettings;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/SoundSettings;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mNotificationPreference:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/SoundSettings;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/SoundSettings;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/android/settings/SoundSettings;->handleDockChange(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/SoundSettings;ILandroid/preference/Preference;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/SoundSettings;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/preference/Preference;
    .param p3, "x3"    # I

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/SoundSettings;->updateRingtoneName(ILandroid/preference/Preference;I)V

    return-void
.end method

.method private createUndockedMessage()Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 500
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 501
    .local v0, "ab":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f07037d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 502
    const v1, 0x7f07037e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 503
    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 504
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method private handleDockChange(Landroid/content/Intent;)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 448
    iget-object v3, p0, Lcom/android/settings/SoundSettings;->mDockAudioSettings:Landroid/preference/Preference;

    if-eqz v3, :cond_0

    .line 449
    const-string v3, "android.intent.extra.DOCK_STATE"

    invoke-virtual {p1, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 451
    .local v0, "dockState":I
    const-string v3, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    if-eqz v3, :cond_1

    move v1, v4

    .line 454
    .local v1, "isBluetooth":Z
    :goto_0
    iput-object p1, p0, Lcom/android/settings/SoundSettings;->mDockIntent:Landroid/content/Intent;

    .line 456
    if-eqz v0, :cond_6

    .line 459
    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {p0, v3}, Lcom/android/settings/SoundSettings;->removeDialog(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 464
    :goto_1
    if-eqz v1, :cond_2

    .line 465
    iget-object v3, p0, Lcom/android/settings/SoundSettings;->mDockAudioSettings:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 489
    .end local v0    # "dockState":I
    .end local v1    # "isBluetooth":Z
    :cond_0
    :goto_2
    return-void

    .restart local v0    # "dockState":I
    :cond_1
    move v1, v5

    .line 451
    goto :goto_0

    .line 467
    .restart local v1    # "isBluetooth":Z
    :cond_2
    const/4 v3, 0x3

    if-ne v0, v3, :cond_5

    .line 468
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 469
    .local v2, "resolver":Landroid/content/ContentResolver;
    iget-object v3, p0, Lcom/android/settings/SoundSettings;->mDockAudioSettings:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 470
    const-string v3, "dock_audio_media_enabled"

    invoke-static {v2, v3, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v6, :cond_3

    .line 472
    const-string v3, "dock_audio_media_enabled"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 475
    :cond_3
    const-string v3, "dock_audio_media_enabled"

    invoke-virtual {p0, v3}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/SoundSettings;->mDockAudioMediaEnabled:Landroid/preference/CheckBoxPreference;

    .line 477
    iget-object v3, p0, Lcom/android/settings/SoundSettings;->mDockAudioMediaEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v5}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 478
    iget-object v3, p0, Lcom/android/settings/SoundSettings;->mDockAudioMediaEnabled:Landroid/preference/CheckBoxPreference;

    const-string v6, "dock_audio_media_enabled"

    invoke-static {v2, v6, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_4

    :goto_3
    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_2

    :cond_4
    move v4, v5

    goto :goto_3

    .line 482
    .end local v2    # "resolver":Landroid/content/ContentResolver;
    :cond_5
    iget-object v3, p0, Lcom/android/settings/SoundSettings;->mDockAudioSettings:Landroid/preference/Preference;

    invoke-virtual {v3, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_2

    .line 486
    :cond_6
    iget-object v3, p0, Lcom/android/settings/SoundSettings;->mDockAudioSettings:Landroid/preference/Preference;

    invoke-virtual {v3, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_2

    .line 460
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method private initDockSettings()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 430
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 432
    .local v0, "resolver":Landroid/content/ContentResolver;
    invoke-direct {p0}, Lcom/android/settings/SoundSettings;->needsDockSettings()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 433
    const-string v1, "dock_sounds"

    invoke-virtual {p0, v1}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/SoundSettings;->mDockSounds:Landroid/preference/CheckBoxPreference;

    .line 434
    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mDockSounds:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 435
    iget-object v4, p0, Lcom/android/settings/SoundSettings;->mDockSounds:Landroid/preference/CheckBoxPreference;

    const-string v1, "dock_sounds_enabled"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 437
    const-string v1, "dock_audio"

    invoke-virtual {p0, v1}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/SoundSettings;->mDockAudioSettings:Landroid/preference/Preference;

    .line 438
    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mDockAudioSettings:Landroid/preference/Preference;

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 445
    :goto_1
    return-void

    :cond_0
    move v1, v3

    .line 435
    goto :goto_0

    .line 440
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v3, "dock_category"

    invoke-virtual {p0, v3}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 441
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v3, "dock_audio"

    invoke-virtual {p0, v3}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 442
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v3, "dock_sounds"

    invoke-virtual {p0, v3}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 443
    const-string v1, "dock_audio_media_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1
.end method

.method private lookupRingtoneNames()V
    .locals 2

    .prologue
    .line 337
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mRingtoneLookupRunnable:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 338
    return-void
.end method

.method private needsDockSettings()Z
    .locals 2

    .prologue
    .line 426
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f0a0000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private updateRingtoneName(ILandroid/preference/Preference;I)V
    .locals 12
    .param p1, "type"    # I
    .param p2, "preference"    # Landroid/preference/Preference;
    .param p3, "msg"    # I

    .prologue
    const/4 v11, 0x0

    .line 286
    if-nez p2, :cond_1

    .line 334
    :cond_0
    :goto_0
    return-void

    .line 287
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    .line 288
    .local v6, "context":Landroid/content/Context;
    if-eqz v6, :cond_0

    .line 289
    invoke-static {v6, p1}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    .line 290
    .local v1, "ringtoneUri":Landroid/net/Uri;
    const v0, 0x104044a

    invoke-virtual {v6, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 291
    .local v10, "summary":Ljava/lang/CharSequence;
    const/4 v9, 0x0

    .line 294
    .local v9, "ringtoneName":Ljava/lang/CharSequence;
    if-nez v1, :cond_3

    .line 295
    const v0, 0x1040448

    invoke-virtual {v6, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 333
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/settings/SoundSettings;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, p3, v10}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 299
    :cond_3
    :try_start_0
    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "title"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "_display_name"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 301
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_5

    .line 302
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 303
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 304
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 306
    :cond_4
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 312
    .end local v7    # "cursor":Landroid/database/Cursor;
    :cond_5
    :goto_2
    const-string v0, "persist.sys.mp.recovered"

    invoke-static {v0, v11}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2

    .line 313
    const-string v0, "SoundSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[FXN.ASD]updateRingtoneName summary="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,ringtoneName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    const/4 v8, 0x0

    .line 316
    .local v8, "propName":Ljava/lang/String;
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_6

    .line 317
    const-string v8, "persist.sys.ringtone"

    .line 326
    :goto_3
    if-eqz v8, :cond_2

    if-eqz v9, :cond_2

    .line 327
    invoke-virtual {v8}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    const-string v0, "SoundSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[FXN.ASD]Set Prop ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 318
    :cond_6
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_7

    .line 319
    const-string v8, "persist.sys.notification_sound"

    goto :goto_3

    .line 320
    :cond_7
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_8

    .line 321
    const-string v8, "persist.sys.alarm_alert"

    goto :goto_3

    .line 323
    :cond_8
    const-string v0, "SoundSettings"

    const-string v2, "[FXN.ASD]Type not find"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 308
    .end local v8    # "propName":Ljava/lang/String;
    :catch_0
    move-exception v0

    goto/16 :goto_2
.end method


# virtual methods
.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 422
    const v0, 0x7f0707f8

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 15
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 143
    invoke-super/range {p0 .. p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 144
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 145
    .local v9, "resolver":Landroid/content/ContentResolver;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v12

    invoke-virtual {v12}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v0

    .line 147
    .local v0, "activePhoneType":I
    const-string v12, "audio"

    invoke-virtual {p0, v12}, Lcom/android/settings/SoundSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/media/AudioManager;

    iput-object v12, p0, Lcom/android/settings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    .line 149
    const v12, 0x7f050049

    invoke-virtual {p0, v12}, Lcom/android/settings/SoundSettings;->addPreferencesFromResource(I)V

    .line 151
    const/4 v12, 0x2

    if-eq v12, v0, :cond_0

    .line 153
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v12

    const-string v13, "emergency_tone"

    invoke-virtual {p0, v13}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 156
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0a0001

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v12

    if-nez v12, :cond_1

    .line 157
    const-string v12, "ring_volume"

    invoke-virtual {p0, v12}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    .line 160
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x1110056

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 162
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v12

    const-string v13, "ring_volume"

    invoke-virtual {p0, v13}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 165
    :cond_2
    const-string v12, "vibrate_when_ringing"

    invoke-virtual {p0, v12}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/preference/CheckBoxPreference;

    iput-object v12, p0, Lcom/android/settings/SoundSettings;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

    .line 166
    iget-object v12, p0, Lcom/android/settings/SoundSettings;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 167
    iget-object v13, p0, Lcom/android/settings/SoundSettings;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

    const-string v12, "vibrate_when_ringing"

    const/4 v14, 0x0

    invoke-static {v9, v12, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    if-eqz v12, :cond_a

    const/4 v12, 0x1

    :goto_0
    invoke-virtual {v13, v12}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 170
    const-string v12, "dtmf_tone"

    invoke-virtual {p0, v12}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/preference/CheckBoxPreference;

    iput-object v12, p0, Lcom/android/settings/SoundSettings;->mDtmfTone:Landroid/preference/CheckBoxPreference;

    .line 171
    iget-object v12, p0, Lcom/android/settings/SoundSettings;->mDtmfTone:Landroid/preference/CheckBoxPreference;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 172
    iget-object v13, p0, Lcom/android/settings/SoundSettings;->mDtmfTone:Landroid/preference/CheckBoxPreference;

    const-string v12, "dtmf_tone"

    const/4 v14, 0x1

    invoke-static {v9, v12, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    if-eqz v12, :cond_b

    const/4 v12, 0x1

    :goto_1
    invoke-virtual {v13, v12}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 174
    const-string v12, "sound_effects"

    invoke-virtual {p0, v12}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/preference/CheckBoxPreference;

    iput-object v12, p0, Lcom/android/settings/SoundSettings;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    .line 175
    iget-object v12, p0, Lcom/android/settings/SoundSettings;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 176
    iget-object v13, p0, Lcom/android/settings/SoundSettings;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    const-string v12, "sound_effects_enabled"

    const/4 v14, 0x1

    invoke-static {v9, v12, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    if-eqz v12, :cond_c

    const/4 v12, 0x1

    :goto_2
    invoke-virtual {v13, v12}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 178
    const-string v12, "haptic_feedback"

    invoke-virtual {p0, v12}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/preference/CheckBoxPreference;

    iput-object v12, p0, Lcom/android/settings/SoundSettings;->mHapticFeedback:Landroid/preference/CheckBoxPreference;

    .line 179
    iget-object v12, p0, Lcom/android/settings/SoundSettings;->mHapticFeedback:Landroid/preference/CheckBoxPreference;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 180
    iget-object v13, p0, Lcom/android/settings/SoundSettings;->mHapticFeedback:Landroid/preference/CheckBoxPreference;

    const-string v12, "haptic_feedback_enabled"

    const/4 v14, 0x1

    invoke-static {v9, v12, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    if-eqz v12, :cond_d

    const/4 v12, 0x1

    :goto_3
    invoke-virtual {v13, v12}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 182
    const-string v12, "lock_sounds"

    invoke-virtual {p0, v12}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/preference/CheckBoxPreference;

    iput-object v12, p0, Lcom/android/settings/SoundSettings;->mLockSounds:Landroid/preference/CheckBoxPreference;

    .line 183
    iget-object v12, p0, Lcom/android/settings/SoundSettings;->mLockSounds:Landroid/preference/CheckBoxPreference;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 184
    iget-object v13, p0, Lcom/android/settings/SoundSettings;->mLockSounds:Landroid/preference/CheckBoxPreference;

    const-string v12, "lockscreen_sounds_enabled"

    const/4 v14, 0x1

    invoke-static {v9, v12, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    if-eqz v12, :cond_e

    const/4 v12, 0x1

    :goto_4
    invoke-virtual {v13, v12}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 187
    const-string v12, "ringtone"

    invoke-virtual {p0, v12}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    iput-object v12, p0, Lcom/android/settings/SoundSettings;->mRingtonePreference:Landroid/preference/Preference;

    .line 188
    const-string v12, "ringtone_multi"

    invoke-virtual {p0, v12}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    iput-object v12, p0, Lcom/android/settings/SoundSettings;->mMultiRingtonePreference:Landroid/preference/Preference;

    .line 189
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v12

    invoke-virtual {v12}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v12

    if-eqz v12, :cond_f

    .line 190
    iget-object v12, p0, Lcom/android/settings/SoundSettings;->mRingtonePreference:Landroid/preference/Preference;

    if-eqz v12, :cond_3

    .line 191
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v12

    iget-object v13, p0, Lcom/android/settings/SoundSettings;->mRingtonePreference:Landroid/preference/Preference;

    invoke-virtual {v12, v13}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 199
    :cond_3
    :goto_5
    const-string v12, "notification_sound"

    invoke-virtual {p0, v12}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    iput-object v12, p0, Lcom/android/settings/SoundSettings;->mNotificationPreference:Landroid/preference/Preference;

    .line 201
    const-string v12, "ringtone_multi"

    invoke-virtual {p0, v12}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    iput-object v12, p0, Lcom/android/settings/SoundSettings;->mMultiRingtonePreference:Landroid/preference/Preference;

    .line 203
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v12

    invoke-virtual {v12}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v12

    if-eqz v12, :cond_10

    .line 204
    iget-object v12, p0, Lcom/android/settings/SoundSettings;->mRingtonePreference:Landroid/preference/Preference;

    if-eqz v12, :cond_4

    .line 205
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v12

    iget-object v13, p0, Lcom/android/settings/SoundSettings;->mRingtonePreference:Landroid/preference/Preference;

    invoke-virtual {v12, v13}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 213
    :cond_4
    :goto_6
    const-string v12, "vibrator"

    invoke-virtual {p0, v12}, Lcom/android/settings/SoundSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/Vibrator;

    .line 214
    .local v11, "vibrator":Landroid/os/Vibrator;
    if-eqz v11, :cond_5

    invoke-virtual {v11}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v12

    if-nez v12, :cond_6

    .line 215
    :cond_5
    const-string v12, "vibrate_when_ringing"

    invoke-virtual {p0, v12}, Lcom/android/settings/SoundSettings;->removePreference(Ljava/lang/String;)V

    .line 216
    const-string v12, "haptic_feedback"

    invoke-virtual {p0, v12}, Lcom/android/settings/SoundSettings;->removePreference(Ljava/lang/String;)V

    .line 219
    :cond_6
    const/4 v12, 0x2

    if-ne v12, v0, :cond_7

    .line 220
    const-string v12, "emergency_tone"

    invoke-virtual {p0, v12}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    .line 222
    .local v2, "emergencyTonePreference":Landroid/preference/ListPreference;
    const-string v12, "emergency_tone"

    const/4 v13, 0x0

    invoke-static {v9, v12, v13}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 224
    invoke-virtual {v2, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 227
    .end local v2    # "emergencyTonePreference":Landroid/preference/ListPreference;
    :cond_7
    const-string v12, "sound_settings"

    invoke-virtual {p0, v12}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/preference/PreferenceGroup;

    iput-object v12, p0, Lcom/android/settings/SoundSettings;->mSoundSettings:Landroid/preference/PreferenceGroup;

    .line 229
    iget-object v12, p0, Lcom/android/settings/SoundSettings;->mSoundSettings:Landroid/preference/PreferenceGroup;

    const-string v13, "musicfx"

    invoke-virtual {v12, v13}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    iput-object v12, p0, Lcom/android/settings/SoundSettings;->mMusicFx:Landroid/preference/Preference;

    .line 230
    new-instance v3, Landroid/content/Intent;

    const-string v12, "android.media.action.DISPLAY_AUDIO_EFFECT_CONTROL_PANEL"

    invoke-direct {v3, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 231
    .local v3, "i":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 232
    .local v6, "p":Landroid/content/pm/PackageManager;
    const/16 v12, 0x200

    invoke-virtual {v6, v3, v12}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v10

    .line 233
    .local v10, "ris":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v12

    const/4 v13, 0x2

    if-gt v12, v13, :cond_8

    .line 239
    iget-object v12, p0, Lcom/android/settings/SoundSettings;->mSoundSettings:Landroid/preference/PreferenceGroup;

    iget-object v13, p0, Lcom/android/settings/SoundSettings;->mMusicFx:Landroid/preference/Preference;

    invoke-virtual {v12, v13}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 242
    :cond_8
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-static {v12}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v12

    if-nez v12, :cond_11

    .line 243
    sget-object v1, Lcom/android/settings/SoundSettings;->NEED_VOICE_CAPABILITY:[Ljava/lang/String;

    .local v1, "arr$":[Ljava/lang/String;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_7
    if-ge v4, v5, :cond_11

    aget-object v8, v1, v4

    .line 244
    .local v8, "prefKey":Ljava/lang/String;
    invoke-virtual {p0, v8}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    .line 245
    .local v7, "pref":Landroid/preference/Preference;
    if-eqz v7, :cond_9

    .line 246
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v12

    invoke-virtual {v12, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 243
    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 167
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v3    # "i":Landroid/content/Intent;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .end local v6    # "p":Landroid/content/pm/PackageManager;
    .end local v7    # "pref":Landroid/preference/Preference;
    .end local v8    # "prefKey":Ljava/lang/String;
    .end local v10    # "ris":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v11    # "vibrator":Landroid/os/Vibrator;
    :cond_a
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 172
    :cond_b
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 176
    :cond_c
    const/4 v12, 0x0

    goto/16 :goto_2

    .line 180
    :cond_d
    const/4 v12, 0x0

    goto/16 :goto_3

    .line 184
    :cond_e
    const/4 v12, 0x0

    goto/16 :goto_4

    .line 194
    :cond_f
    iget-object v12, p0, Lcom/android/settings/SoundSettings;->mMultiRingtonePreference:Landroid/preference/Preference;

    if-eqz v12, :cond_3

    .line 195
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v12

    iget-object v13, p0, Lcom/android/settings/SoundSettings;->mMultiRingtonePreference:Landroid/preference/Preference;

    invoke-virtual {v12, v13}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_5

    .line 208
    :cond_10
    iget-object v12, p0, Lcom/android/settings/SoundSettings;->mMultiRingtonePreference:Landroid/preference/Preference;

    if-eqz v12, :cond_4

    .line 209
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v12

    iget-object v13, p0, Lcom/android/settings/SoundSettings;->mMultiRingtonePreference:Landroid/preference/Preference;

    invoke-virtual {v12, v13}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_6

    .line 251
    .restart local v3    # "i":Landroid/content/Intent;
    .restart local v6    # "p":Landroid/content/pm/PackageManager;
    .restart local v10    # "ris":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v11    # "vibrator":Landroid/os/Vibrator;
    :cond_11
    new-instance v12, Lcom/android/settings/SoundSettings$3;

    invoke-direct {v12, p0}, Lcom/android/settings/SoundSettings$3;-><init>(Lcom/android/settings/SoundSettings;)V

    iput-object v12, p0, Lcom/android/settings/SoundSettings;->mRingtoneLookupRunnable:Ljava/lang/Runnable;

    .line 265
    invoke-direct {p0}, Lcom/android/settings/SoundSettings;->initDockSettings()V

    .line 266
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 493
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 494
    invoke-direct {p0}, Lcom/android/settings/SoundSettings;->createUndockedMessage()Landroid/app/Dialog;

    move-result-object v0

    .line 496
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 280
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 282
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 283
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    .line 406
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 407
    .local v1, "key":Ljava/lang/String;
    const-string v3, "emergency_tone"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 409
    :try_start_0
    check-cast p2, Ljava/lang/String;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 410
    .local v2, "value":I
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "emergency_tone"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 417
    .end local v2    # "value":I
    :cond_0
    :goto_0
    const/4 v3, 0x1

    return v3

    .line 412
    :catch_0
    move-exception v0

    .line 413
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v3, "SoundSettings"

    const-string v4, "could not persist emergency tone setting"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 342
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_3

    .line 343
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "vibrate_when_ringing"

    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    :goto_1
    move v2, v1

    .line 402
    :cond_1
    return v2

    :cond_2
    move v0, v2

    .line 343
    goto :goto_0

    .line 345
    :cond_3
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mDtmfTone:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_5

    .line 346
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "dtmf_tone"

    iget-object v4, p0, Lcom/android/settings/SoundSettings;->mDtmfTone:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_4

    move v2, v1

    :cond_4
    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 349
    :cond_5
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mMultiRingtonePreference:Landroid/preference/Preference;

    if-eq p2, v0, :cond_1

    .line 351
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_8

    .line 352
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 353
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->loadSoundEffects()V

    .line 357
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "sound_effects_enabled"

    iget-object v4, p0, Lcom/android/settings/SoundSettings;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_6

    move v2, v1

    :cond_6
    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 355
    :cond_7
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->unloadSoundEffects()V

    goto :goto_2

    .line 360
    :cond_8
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mHapticFeedback:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_a

    .line 361
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "haptic_feedback_enabled"

    iget-object v4, p0, Lcom/android/settings/SoundSettings;->mHapticFeedback:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_9

    move v2, v1

    :cond_9
    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 364
    :cond_a
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mLockSounds:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_c

    .line 365
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "lockscreen_sounds_enabled"

    iget-object v4, p0, Lcom/android/settings/SoundSettings;->mLockSounds:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_b

    move v2, v1

    :cond_b
    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 368
    :cond_c
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mMusicFx:Landroid/preference/Preference;

    if-eq p2, v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mMultiRingtonePreference:Landroid/preference/Preference;

    if-eq p2, v0, :cond_1

    .line 371
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mDockAudioSettings:Landroid/preference/Preference;

    if-ne p2, v0, :cond_12

    .line 372
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mDockIntent:Landroid/content/Intent;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mDockIntent:Landroid/content/Intent;

    const-string v3, "android.intent.extra.DOCK_STATE"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 376
    :goto_3
    if-nez v0, :cond_e

    .line 377
    invoke-virtual {p0, v1}, Lcom/android/settings/SoundSettings;->showDialog(I)V

    goto/16 :goto_1

    :cond_d
    move v0, v2

    .line 372
    goto :goto_3

    .line 379
    :cond_e
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mDockIntent:Landroid/content/Intent;

    const-string v3, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_f

    move v0, v1

    .line 381
    :goto_4
    if-eqz v0, :cond_10

    .line 382
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/settings/SoundSettings;->mDockIntent:Landroid/content/Intent;

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 383
    const-string v2, "com.android.settings.bluetooth.action.DOCK_SHOW_UI"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 384
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/android/settings/bluetooth/DockEventReceiver;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 385
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    :cond_f
    move v0, v2

    .line 379
    goto :goto_4

    .line 387
    :cond_10
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mDockAudioSettings:Landroid/preference/Preference;

    check-cast v0, Landroid/preference/PreferenceScreen;

    .line 388
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 389
    const-string v4, "checked"

    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "dock_audio_media_enabled"

    invoke-static {v5, v6, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v1, :cond_11

    move v2, v1

    :cond_11
    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 392
    invoke-super {p0, v0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    goto/16 :goto_1

    .line 395
    :cond_12
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mDockSounds:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_14

    .line 396
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "dock_sounds_enabled"

    iget-object v4, p0, Lcom/android/settings/SoundSettings;->mDockSounds:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_13

    move v2, v1

    :cond_13
    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 398
    :cond_14
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mDockAudioMediaEnabled:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_0

    .line 399
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "dock_audio_media_enabled"

    iget-object v4, p0, Lcom/android/settings/SoundSettings;->mDockAudioMediaEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_15

    move v2, v1

    :cond_15
    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 270
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 272
    invoke-direct {p0}, Lcom/android/settings/SoundSettings;->lookupRingtoneNames()V

    .line 274
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.DOCK_EVENT"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 275
    .local v0, "filter":Landroid/content/IntentFilter;
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/SoundSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 276
    return-void
.end method
