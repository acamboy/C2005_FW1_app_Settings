.class public Lcom/android/settings/ApnEditor;
.super Landroid/preference/PreferenceActivity;
.source "ApnEditor.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final BEARE_VALUE:Ljava/lang/Integer;

.field private static final TAG:Ljava/lang/String;

.field private static sNotSet:Ljava/lang/String;

.field private static final sProjection:[Ljava/lang/String;


# instance fields
.field private mApn:Landroid/preference/EditTextPreference;

.field private mApnType:Landroid/preference/EditTextPreference;

.field private mAuthType:Landroid/preference/ListPreference;

.field private mCarrierEnabled:Landroid/preference/CheckBoxPreference;

.field private mCurMcc:Ljava/lang/String;

.field private mCurMnc:Ljava/lang/String;

.field private mCursor:Landroid/database/Cursor;

.field private mFirstTime:Z

.field private mIsTetherApn:Z

.field private mIsTetherApnEditable:Z

.field private mMcc:Landroid/preference/EditTextPreference;

.field private mMmsPort:Landroid/preference/EditTextPreference;

.field private mMmsProxy:Landroid/preference/EditTextPreference;

.field private mMmsc:Landroid/preference/EditTextPreference;

.field private mMnc:Landroid/preference/EditTextPreference;

.field private mMvnoMatchData:Landroid/preference/EditTextPreference;

.field private mMvnoType:Landroid/preference/ListPreference;

.field private mName:Landroid/preference/EditTextPreference;

.field private mNewApn:Z

.field private mPassword:Landroid/preference/EditTextPreference;

.field private mPort:Landroid/preference/EditTextPreference;

.field private mProtocol:Landroid/preference/ListPreference;

.field private mProxy:Landroid/preference/EditTextPreference;

.field private mRes:Landroid/content/res/Resources;

.field private mRoamingProtocol:Landroid/preference/ListPreference;

.field private mServer:Landroid/preference/EditTextPreference;

.field private mSettingsLockCache:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSubscription:I

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTetherApnData:Lcom/sonyericsson/settings/apn/TetherApnData;

.field private mUri:Landroid/net/Uri;

.field private mUser:Landroid/preference/EditTextPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 64
    const-class v0, Lcom/android/settings/ApnEditor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    .line 81
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/android/settings/ApnEditor;->BEARE_VALUE:Ljava/lang/Integer;

    .line 128
    const/16 v0, 0x16

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "apn"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "proxy"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "port"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "user"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "server"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "password"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "mmsc"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "mcc"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "mnc"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "numeric"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "mmsproxy"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "mmsport"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "authtype"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "type"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "protocol"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "carrier_enabled"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "bearer"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "roaming_protocol"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "mvno_type"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "mvno_match_data"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/ApnEditor;->sProjection:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 60
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 83
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/settings/ApnEditor;->mSettingsLockCache:Ljava/util/HashSet;

    .line 108
    iput v1, p0, Lcom/android/settings/ApnEditor;->mSubscription:I

    .line 121
    iput-boolean v1, p0, Lcom/android/settings/ApnEditor;->mIsTetherApnEditable:Z

    return-void
.end method

.method private checkCanSaveApn(Z)Z
    .locals 5
    .param p1, "force"    # Z

    .prologue
    const/4 v1, 0x0

    .line 670
    invoke-direct {p0}, Lcom/android/settings/ApnEditor;->isCarrierLocked()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 671
    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 672
    invoke-virtual {p0, v1}, Lcom/android/settings/ApnEditor;->showDialog(I)V

    .line 686
    :cond_0
    :goto_0
    return v1

    .line 676
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/ApnEditor;->getErrorMsg()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    if-nez p1, :cond_2

    .line 679
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, v2}, Lcom/android/settings/ApnEditor;->showDialog(I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 680
    :catch_0
    move-exception v0

    .line 681
    .local v0, "e":Ljava/lang/RuntimeException;
    sget-object v2, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[FXN.ASD]checkCanSaveApn: RuntimeException!! exceptuon = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 686
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private checkNotSet(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 880
    if-eqz p1, :cond_0

    sget-object v0, Lcom/android/settings/ApnEditor;->sNotSet:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 881
    :cond_0
    const-string p1, ""

    .line 883
    :cond_1
    return-object p1
.end method

.method private checkNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 872
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 873
    :cond_0
    sget-object p1, Lcom/android/settings/ApnEditor;->sNotSet:Ljava/lang/String;

    .line 875
    .end local p1    # "value":Ljava/lang/String;
    :cond_1
    return-object p1
.end method

.method private deleteApn()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 855
    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ApnEditor;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 856
    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->finish()V

    .line 857
    return-void
.end method

.method private fillTetherUI()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 333
    iget-object v4, p0, Lcom/android/settings/ApnEditor;->mTetherApnData:Lcom/sonyericsson/settings/apn/TetherApnData;

    if-nez v4, :cond_1

    .line 393
    :cond_0
    :goto_0
    return-void

    .line 336
    :cond_1
    iget-object v4, p0, Lcom/android/settings/ApnEditor;->mName:Landroid/preference/EditTextPreference;

    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mTetherApnData:Lcom/sonyericsson/settings/apn/TetherApnData;

    invoke-virtual {v5}, Lcom/sonyericsson/settings/apn/TetherApnData;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 337
    iget-object v4, p0, Lcom/android/settings/ApnEditor;->mApn:Landroid/preference/EditTextPreference;

    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mTetherApnData:Lcom/sonyericsson/settings/apn/TetherApnData;

    invoke-virtual {v5}, Lcom/sonyericsson/settings/apn/TetherApnData;->getApn()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 338
    iget-object v4, p0, Lcom/android/settings/ApnEditor;->mProxy:Landroid/preference/EditTextPreference;

    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mTetherApnData:Lcom/sonyericsson/settings/apn/TetherApnData;

    invoke-virtual {v5}, Lcom/sonyericsson/settings/apn/TetherApnData;->getProxy()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 339
    iget-object v4, p0, Lcom/android/settings/ApnEditor;->mPort:Landroid/preference/EditTextPreference;

    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mTetherApnData:Lcom/sonyericsson/settings/apn/TetherApnData;

    invoke-virtual {v5}, Lcom/sonyericsson/settings/apn/TetherApnData;->getPort()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 340
    iget-object v4, p0, Lcom/android/settings/ApnEditor;->mUser:Landroid/preference/EditTextPreference;

    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mTetherApnData:Lcom/sonyericsson/settings/apn/TetherApnData;

    invoke-virtual {v5}, Lcom/sonyericsson/settings/apn/TetherApnData;->getUser()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 341
    iget-object v4, p0, Lcom/android/settings/ApnEditor;->mServer:Landroid/preference/EditTextPreference;

    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mTetherApnData:Lcom/sonyericsson/settings/apn/TetherApnData;

    invoke-virtual {v5}, Lcom/sonyericsson/settings/apn/TetherApnData;->getServer()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 342
    iget-object v4, p0, Lcom/android/settings/ApnEditor;->mPassword:Landroid/preference/EditTextPreference;

    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mTetherApnData:Lcom/sonyericsson/settings/apn/TetherApnData;

    invoke-virtual {v5}, Lcom/sonyericsson/settings/apn/TetherApnData;->getPassword()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 343
    iget-object v4, p0, Lcom/android/settings/ApnEditor;->mMmsProxy:Landroid/preference/EditTextPreference;

    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mTetherApnData:Lcom/sonyericsson/settings/apn/TetherApnData;

    invoke-virtual {v5}, Lcom/sonyericsson/settings/apn/TetherApnData;->getMmsProxy()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 344
    iget-object v4, p0, Lcom/android/settings/ApnEditor;->mMmsPort:Landroid/preference/EditTextPreference;

    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mTetherApnData:Lcom/sonyericsson/settings/apn/TetherApnData;

    invoke-virtual {v5}, Lcom/sonyericsson/settings/apn/TetherApnData;->getMmsPort()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 345
    iget-object v4, p0, Lcom/android/settings/ApnEditor;->mMmsc:Landroid/preference/EditTextPreference;

    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mTetherApnData:Lcom/sonyericsson/settings/apn/TetherApnData;

    invoke-virtual {v5}, Lcom/sonyericsson/settings/apn/TetherApnData;->getMmsc()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 346
    iget-object v4, p0, Lcom/android/settings/ApnEditor;->mMcc:Landroid/preference/EditTextPreference;

    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mTetherApnData:Lcom/sonyericsson/settings/apn/TetherApnData;

    invoke-virtual {v5}, Lcom/sonyericsson/settings/apn/TetherApnData;->getMcc()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 347
    iget-object v4, p0, Lcom/android/settings/ApnEditor;->mMnc:Landroid/preference/EditTextPreference;

    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mTetherApnData:Lcom/sonyericsson/settings/apn/TetherApnData;

    invoke-virtual {v5}, Lcom/sonyericsson/settings/apn/TetherApnData;->getMnc()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 348
    iget-object v4, p0, Lcom/android/settings/ApnEditor;->mApnType:Landroid/preference/EditTextPreference;

    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mTetherApnData:Lcom/sonyericsson/settings/apn/TetherApnData;

    invoke-virtual {v5}, Lcom/sonyericsson/settings/apn/TetherApnData;->getTypeArray()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 350
    iget-object v4, p0, Lcom/android/settings/ApnEditor;->mTetherApnData:Lcom/sonyericsson/settings/apn/TetherApnData;

    invoke-virtual {v4}, Lcom/sonyericsson/settings/apn/TetherApnData;->getAuthType()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 351
    .local v2, "authtype":Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_3

    .line 352
    iget-object v4, p0, Lcom/android/settings/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 357
    :goto_1
    iget-object v4, p0, Lcom/android/settings/ApnEditor;->mName:Landroid/preference/EditTextPreference;

    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mName:Landroid/preference/EditTextPreference;

    invoke-virtual {v5}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 358
    iget-object v4, p0, Lcom/android/settings/ApnEditor;->mApn:Landroid/preference/EditTextPreference;

    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mApn:Landroid/preference/EditTextPreference;

    invoke-virtual {v5}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 359
    iget-object v4, p0, Lcom/android/settings/ApnEditor;->mProxy:Landroid/preference/EditTextPreference;

    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mProxy:Landroid/preference/EditTextPreference;

    invoke-virtual {v5}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 360
    iget-object v4, p0, Lcom/android/settings/ApnEditor;->mPort:Landroid/preference/EditTextPreference;

    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mPort:Landroid/preference/EditTextPreference;

    invoke-virtual {v5}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 361
    iget-object v4, p0, Lcom/android/settings/ApnEditor;->mUser:Landroid/preference/EditTextPreference;

    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mUser:Landroid/preference/EditTextPreference;

    invoke-virtual {v5}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 362
    iget-object v4, p0, Lcom/android/settings/ApnEditor;->mServer:Landroid/preference/EditTextPreference;

    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mServer:Landroid/preference/EditTextPreference;

    invoke-virtual {v5}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 363
    iget-object v4, p0, Lcom/android/settings/ApnEditor;->mPassword:Landroid/preference/EditTextPreference;

    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mPassword:Landroid/preference/EditTextPreference;

    invoke-virtual {v5}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings/ApnEditor;->starify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 364
    iget-object v4, p0, Lcom/android/settings/ApnEditor;->mMmsProxy:Landroid/preference/EditTextPreference;

    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mMmsProxy:Landroid/preference/EditTextPreference;

    invoke-virtual {v5}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 365
    iget-object v4, p0, Lcom/android/settings/ApnEditor;->mMmsPort:Landroid/preference/EditTextPreference;

    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mMmsPort:Landroid/preference/EditTextPreference;

    invoke-virtual {v5}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 366
    iget-object v4, p0, Lcom/android/settings/ApnEditor;->mMmsc:Landroid/preference/EditTextPreference;

    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mMmsc:Landroid/preference/EditTextPreference;

    invoke-virtual {v5}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 367
    iget-object v4, p0, Lcom/android/settings/ApnEditor;->mMcc:Landroid/preference/EditTextPreference;

    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mMcc:Landroid/preference/EditTextPreference;

    invoke-virtual {v5}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 368
    iget-object v4, p0, Lcom/android/settings/ApnEditor;->mMnc:Landroid/preference/EditTextPreference;

    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mMnc:Landroid/preference/EditTextPreference;

    invoke-virtual {v5}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 369
    iget-object v4, p0, Lcom/android/settings/ApnEditor;->mApnType:Landroid/preference/EditTextPreference;

    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mApnType:Landroid/preference/EditTextPreference;

    invoke-virtual {v5}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 370
    iget-object v4, p0, Lcom/android/settings/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 371
    .local v0, "authVal":Ljava/lang/String;
    if-eqz v0, :cond_4

    .line 372
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 373
    .local v1, "authValIndex":I
    iget-object v4, p0, Lcom/android/settings/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    invoke-virtual {v4, v1}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 375
    iget-object v4, p0, Lcom/android/settings/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v5, 0x7f080029

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 376
    .local v3, "values":[Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    aget-object v5, v3, v1

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 384
    .end local v1    # "authValIndex":I
    .end local v3    # "values":[Ljava/lang/String;
    :goto_2
    iget-object v4, p0, Lcom/android/settings/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    invoke-direct {p0, v6}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 385
    iget-object v4, p0, Lcom/android/settings/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    invoke-direct {p0, v6}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 387
    iget-object v4, p0, Lcom/android/settings/ApnEditor;->mCarrierEnabled:Landroid/preference/CheckBoxPreference;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 390
    iget-boolean v4, p0, Lcom/android/settings/ApnEditor;->mIsTetherApnEditable:Z

    if-eqz v4, :cond_2

    invoke-direct {p0}, Lcom/android/settings/ApnEditor;->isCarrierLocked()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 391
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto/16 :goto_0

    .line 354
    .end local v0    # "authVal":Ljava/lang/String;
    :cond_3
    iget-object v4, p0, Lcom/android/settings/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    invoke-virtual {v4, v6}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 378
    .restart local v0    # "authVal":Ljava/lang/String;
    :cond_4
    iget-object v4, p0, Lcom/android/settings/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    sget-object v5, Lcom/android/settings/ApnEditor;->sNotSet:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method private fillUi(Ljava/lang/String;)V
    .locals 12
    .param p1, "defaultOperatorNumeric"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 396
    iget-boolean v7, p0, Lcom/android/settings/ApnEditor;->mFirstTime:Z

    if-eqz v7, :cond_1

    .line 397
    iput-boolean v6, p0, Lcom/android/settings/ApnEditor;->mFirstTime:Z

    .line 399
    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mName:Landroid/preference/EditTextPreference;

    iget-object v8, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v8, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 400
    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mApn:Landroid/preference/EditTextPreference;

    iget-object v8, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/4 v9, 0x2

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 401
    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mProxy:Landroid/preference/EditTextPreference;

    iget-object v8, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v8, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 402
    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mPort:Landroid/preference/EditTextPreference;

    iget-object v8, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v8, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 403
    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mUser:Landroid/preference/EditTextPreference;

    iget-object v8, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/4 v9, 0x5

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 404
    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mServer:Landroid/preference/EditTextPreference;

    iget-object v8, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/4 v9, 0x6

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 405
    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mPassword:Landroid/preference/EditTextPreference;

    iget-object v8, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/4 v9, 0x7

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 406
    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mMmsProxy:Landroid/preference/EditTextPreference;

    iget-object v8, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v9, 0xc

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 407
    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mMmsPort:Landroid/preference/EditTextPreference;

    iget-object v8, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v9, 0xd

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 408
    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mMmsc:Landroid/preference/EditTextPreference;

    iget-object v8, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v9, 0x8

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 409
    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mMcc:Landroid/preference/EditTextPreference;

    iget-object v8, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v9, 0x9

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 410
    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mMnc:Landroid/preference/EditTextPreference;

    iget-object v8, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v9, 0xa

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 411
    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mApnType:Landroid/preference/EditTextPreference;

    iget-object v8, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v9, 0xf

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 412
    iget-boolean v7, p0, Lcom/android/settings/ApnEditor;->mNewApn:Z

    if-eqz v7, :cond_0

    .line 414
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v11, :cond_0

    .line 416
    invoke-virtual {p1, v6, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 418
    .local v2, "mcc":Ljava/lang/String;
    invoke-virtual {p1, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 420
    .local v3, "mnc":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mMcc:Landroid/preference/EditTextPreference;

    invoke-virtual {v7, v2}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 421
    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mMnc:Landroid/preference/EditTextPreference;

    invoke-virtual {v7, v3}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 422
    iput-object v3, p0, Lcom/android/settings/ApnEditor;->mCurMnc:Ljava/lang/String;

    .line 423
    iput-object v2, p0, Lcom/android/settings/ApnEditor;->mCurMcc:Ljava/lang/String;

    .line 426
    .end local v2    # "mcc":Ljava/lang/String;
    .end local v3    # "mnc":Ljava/lang/String;
    :cond_0
    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v8, 0xe

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 427
    .local v0, "authVal":I
    const/4 v7, -0x1

    if-eq v0, v7, :cond_3

    .line 428
    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    invoke-virtual {v7, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 433
    :goto_0
    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    iget-object v8, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v9, 0x10

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 434
    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    iget-object v8, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v9, 0x13

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 435
    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mCarrierEnabled:Landroid/preference/CheckBoxPreference;

    iget-object v8, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v9, 0x11

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    if-ne v8, v5, :cond_4

    :goto_1
    invoke-virtual {v7, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 437
    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mMvnoType:Landroid/preference/ListPreference;

    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v8, 0x14

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 438
    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mMvnoMatchData:Landroid/preference/EditTextPreference;

    invoke-virtual {v5, v6}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    .line 439
    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mMvnoMatchData:Landroid/preference/EditTextPreference;

    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v8, 0x15

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 442
    .end local v0    # "authVal":I
    :cond_1
    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mName:Landroid/preference/EditTextPreference;

    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mName:Landroid/preference/EditTextPreference;

    invoke-virtual {v7}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 443
    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mApn:Landroid/preference/EditTextPreference;

    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mApn:Landroid/preference/EditTextPreference;

    invoke-virtual {v7}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 444
    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mProxy:Landroid/preference/EditTextPreference;

    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mProxy:Landroid/preference/EditTextPreference;

    invoke-virtual {v7}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 445
    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mPort:Landroid/preference/EditTextPreference;

    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mPort:Landroid/preference/EditTextPreference;

    invoke-virtual {v7}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 446
    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mUser:Landroid/preference/EditTextPreference;

    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mUser:Landroid/preference/EditTextPreference;

    invoke-virtual {v7}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 447
    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mServer:Landroid/preference/EditTextPreference;

    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mServer:Landroid/preference/EditTextPreference;

    invoke-virtual {v7}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 448
    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mPassword:Landroid/preference/EditTextPreference;

    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mPassword:Landroid/preference/EditTextPreference;

    invoke-virtual {v7}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/settings/ApnEditor;->starify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 449
    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mMmsProxy:Landroid/preference/EditTextPreference;

    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mMmsProxy:Landroid/preference/EditTextPreference;

    invoke-virtual {v7}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 450
    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mMmsPort:Landroid/preference/EditTextPreference;

    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mMmsPort:Landroid/preference/EditTextPreference;

    invoke-virtual {v7}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 451
    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mMmsc:Landroid/preference/EditTextPreference;

    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mMmsc:Landroid/preference/EditTextPreference;

    invoke-virtual {v7}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 452
    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mMcc:Landroid/preference/EditTextPreference;

    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mMcc:Landroid/preference/EditTextPreference;

    invoke-virtual {v7}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 453
    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mMnc:Landroid/preference/EditTextPreference;

    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mMnc:Landroid/preference/EditTextPreference;

    invoke-virtual {v7}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 454
    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mApnType:Landroid/preference/EditTextPreference;

    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mApnType:Landroid/preference/EditTextPreference;

    invoke-virtual {v7}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 456
    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 457
    .local v0, "authVal":Ljava/lang/String;
    if-eqz v0, :cond_5

    .line 458
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 459
    .local v1, "authValIndex":I
    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    invoke-virtual {v5, v1}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 461
    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v7, 0x7f080029

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 462
    .local v4, "values":[Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    aget-object v7, v4, v1

    invoke-virtual {v5, v7}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 467
    .end local v1    # "authValIndex":I
    .end local v4    # "values":[Ljava/lang/String;
    :goto_2
    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v7}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    invoke-direct {p0, v7, v8}, Lcom/android/settings/ApnEditor;->protocolDescription(Ljava/lang/String;Landroid/preference/ListPreference;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 469
    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v7}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    invoke-direct {p0, v7, v8}, Lcom/android/settings/ApnEditor;->protocolDescription(Ljava/lang/String;Landroid/preference/ListPreference;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 475
    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mMvnoType:Landroid/preference/ListPreference;

    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mMvnoType:Landroid/preference/ListPreference;

    invoke-virtual {v7}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/settings/ApnEditor;->mvnoDescription(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 477
    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mMvnoMatchData:Landroid/preference/EditTextPreference;

    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mMvnoMatchData:Landroid/preference/EditTextPreference;

    invoke-virtual {v7}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 479
    iget-boolean v5, p0, Lcom/android/settings/ApnEditor;->mNewApn:Z

    if-nez v5, :cond_2

    invoke-direct {p0}, Lcom/android/settings/ApnEditor;->isCarrierLocked()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 480
    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 482
    :cond_2
    return-void

    .line 430
    .local v0, "authVal":I
    :cond_3
    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    move v5, v6

    .line 435
    goto/16 :goto_1

    .line 464
    .local v0, "authVal":Ljava/lang/String;
    :cond_5
    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    sget-object v7, Lcom/android/settings/ApnEditor;->sNotSet:Ljava/lang/String;

    invoke-virtual {v5, v7}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method private getCustomizedSettings()V
    .locals 5

    .prologue
    .line 959
    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080067

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 960
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 961
    iget-object v4, p0, Lcom/android/settings/ApnEditor;->mSettingsLockCache:Ljava/util/HashSet;

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 960
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 963
    :cond_0
    return-void
.end method

.method private getErrorMsg()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 803
    const/4 v1, 0x0

    .line 805
    .local v1, "errorMsg":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mName:Landroid/preference/EditTextPreference;

    invoke-virtual {v5}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 806
    .local v4, "name":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mApn:Landroid/preference/EditTextPreference;

    invoke-virtual {v5}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 807
    .local v0, "apn":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mMcc:Landroid/preference/EditTextPreference;

    invoke-virtual {v5}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 808
    .local v2, "mcc":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mMnc:Landroid/preference/EditTextPreference;

    invoke-virtual {v5}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 810
    .local v3, "mnc":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v5, v6, :cond_1

    .line 811
    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v6, 0x7f07042d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 822
    :cond_0
    :goto_0
    return-object v1

    .line 812
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v5, v6, :cond_2

    .line 813
    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v6, 0x7f07042e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 814
    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_3

    .line 815
    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v6, 0x7f07042f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 816
    :cond_3
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    const v6, 0xfffe

    and-int/2addr v5, v6

    const/4 v6, 0x2

    if-eq v5, v6, :cond_4

    .line 817
    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v6, 0x7f070430

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 818
    :cond_4
    invoke-direct {p0}, Lcom/android/settings/ApnEditor;->isCarrierLocked()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 819
    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v6, 0x7f070079

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private isCarrierLocked()Z
    .locals 3

    .prologue
    .line 940
    iget-object v2, p0, Lcom/android/settings/ApnEditor;->mName:Landroid/preference/EditTextPreference;

    invoke-virtual {v2}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 941
    .local v0, "carrierName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 942
    .local v1, "result":Z
    iget-object v2, p0, Lcom/android/settings/ApnEditor;->mSettingsLockCache:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 944
    invoke-direct {p0}, Lcom/android/settings/ApnEditor;->getCustomizedSettings()V

    .line 947
    :cond_0
    iget-object v2, p0, Lcom/android/settings/ApnEditor;->mSettingsLockCache:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 948
    iget-object v2, p0, Lcom/android/settings/ApnEditor;->mSettingsLockCache:Ljava/util/HashSet;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 949
    const/4 v1, 0x1

    .line 952
    :cond_1
    return v1
.end method

.method private mvnoDescription(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "newValue"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 520
    iget-object v6, p0, Lcom/android/settings/ApnEditor;->mMvnoType:Landroid/preference/ListPreference;

    invoke-virtual {v6, p1}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 521
    .local v1, "mvnoIndex":I
    iget-object v6, p0, Lcom/android/settings/ApnEditor;->mMvnoType:Landroid/preference/ListPreference;

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 523
    .local v3, "oldValue":Ljava/lang/String;
    const/4 v6, -0x1

    if-ne v1, v6, :cond_0

    .line 547
    :goto_0
    return-object v5

    .line 526
    :cond_0
    iget-object v6, p0, Lcom/android/settings/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v7, 0x7f08002f

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 527
    .local v4, "values":[Ljava/lang/String;
    aget-object v6, v4, v1

    const-string v7, "None"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 528
    iget-object v6, p0, Lcom/android/settings/ApnEditor;->mMvnoMatchData:Landroid/preference/EditTextPreference;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    .line 532
    :goto_1
    if-eqz p1, :cond_1

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 533
    aget-object v6, v4, v1

    const-string v7, "SPN"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 534
    iget-object v6, p0, Lcom/android/settings/ApnEditor;->mMvnoMatchData:Landroid/preference/EditTextPreference;

    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 545
    :cond_1
    :goto_2
    :try_start_0
    aget-object v5, v4, v1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 530
    :cond_2
    iget-object v6, p0, Lcom/android/settings/ApnEditor;->mMvnoMatchData:Landroid/preference/EditTextPreference;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    goto :goto_1

    .line 535
    :cond_3
    aget-object v6, v4, v1

    const-string v7, "IMSI"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 536
    const-string v6, "gsm.sim.operator.numeric"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 538
    .local v2, "numeric":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings/ApnEditor;->mMvnoMatchData:Landroid/preference/EditTextPreference;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    goto :goto_2

    .line 539
    .end local v2    # "numeric":Ljava/lang/String;
    :cond_4
    aget-object v6, v4, v1

    const-string v7, "GID"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 540
    iget-object v6, p0, Lcom/android/settings/ApnEditor;->mMvnoMatchData:Landroid/preference/EditTextPreference;

    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getGroupIdLevel1()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    goto :goto_2

    .line 546
    :catch_0
    move-exception v0

    .line 547
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    goto/16 :goto_0
.end method

.method private protocolDescription(Ljava/lang/String;Landroid/preference/ListPreference;)Ljava/lang/String;
    .locals 6
    .param p1, "raw"    # Ljava/lang/String;
    .param p2, "protocol"    # Landroid/preference/ListPreference;

    .prologue
    const/4 v3, 0x0

    .line 490
    invoke-virtual {p2, p1}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 491
    .local v1, "protocolIndex":I
    const/4 v4, -0x1

    if-ne v1, v4, :cond_0

    .line 498
    :goto_0
    return-object v3

    .line 494
    :cond_0
    iget-object v4, p0, Lcom/android/settings/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v5, 0x7f08002b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 496
    .local v2, "values":[Ljava/lang/String;
    :try_start_0
    aget-object v3, v2, v1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 497
    :catch_0
    move-exception v0

    .line 498
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    goto :goto_0
.end method

.method private starify(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 860
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 861
    :cond_0
    sget-object v2, Lcom/android/settings/ApnEditor;->sNotSet:Ljava/lang/String;

    .line 867
    :goto_0
    return-object v2

    .line 863
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    new-array v1, v2, [C

    .line 864
    .local v1, "password":[C
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 865
    const/16 v2, 0x2a

    aput-char v2, v1, v0

    .line 864
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 867
    :cond_2
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    goto :goto_0
.end method

.method private validateAndSave(Z)Z
    .locals 14
    .param p1, "force"    # Z

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v13, 0x0

    .line 697
    iget-boolean v11, p0, Lcom/android/settings/ApnEditor;->mIsTetherApn:Z

    if-eqz v11, :cond_2

    .line 698
    iget-boolean v10, p0, Lcom/android/settings/ApnEditor;->mIsTetherApnEditable:Z

    if-eqz v10, :cond_1

    .line 699
    invoke-direct {p0, p1}, Lcom/android/settings/ApnEditor;->validateAndSaveTetherApn(Z)Z

    move-result v9

    .line 799
    :cond_0
    :goto_0
    return v9

    .line 701
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->finish()V

    goto :goto_0

    .line 705
    :cond_2
    iget-object v11, p0, Lcom/android/settings/ApnEditor;->mName:Landroid/preference/EditTextPreference;

    invoke-virtual {v11}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 706
    .local v6, "name":Ljava/lang/String;
    iget-object v11, p0, Lcom/android/settings/ApnEditor;->mApn:Landroid/preference/EditTextPreference;

    invoke-virtual {v11}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 707
    .local v0, "apn":Ljava/lang/String;
    iget-object v11, p0, Lcom/android/settings/ApnEditor;->mMcc:Landroid/preference/EditTextPreference;

    invoke-virtual {v11}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 708
    .local v4, "mcc":Ljava/lang/String;
    iget-object v11, p0, Lcom/android/settings/ApnEditor;->mMnc:Landroid/preference/EditTextPreference;

    invoke-virtual {v11}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 709
    .local v5, "mnc":Ljava/lang/String;
    const/4 v2, 0x0

    .line 711
    .local v2, "dataSub":I
    invoke-direct {p0, p1}, Lcom/android/settings/ApnEditor;->checkCanSaveApn(Z)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 712
    iget-object v11, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v11

    if-nez v11, :cond_3

    .line 713
    sget-object v10, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    const-string v11, "Could not go to the first row in the Cursor when saving data."

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 720
    :cond_3
    iget-object v11, p0, Lcom/android/settings/ApnEditor;->mTetherApnData:Lcom/sonyericsson/settings/apn/TetherApnData;

    invoke-virtual {v11}, Lcom/sonyericsson/settings/apn/TetherApnData;->isTetherDunValid()Z

    move-result v11

    if-eqz v11, :cond_5

    iget-object v11, p0, Lcom/android/settings/ApnEditor;->mTetherApnData:Lcom/sonyericsson/settings/apn/TetherApnData;

    invoke-virtual {v11}, Lcom/sonyericsson/settings/apn/TetherApnData;->getApn()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    iget-boolean v11, p0, Lcom/android/settings/ApnEditor;->mIsTetherApnEditable:Z

    if-nez v11, :cond_5

    .line 723
    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 724
    .local v3, "intent":Landroid/content/Intent;
    if-eqz v3, :cond_4

    const-string v10, "android.intent.action.INSERT"

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 727
    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/ApnEditor;->mUri:Landroid/net/Uri;

    invoke-virtual {v10, v11, v13, v13}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 729
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->finish()V

    goto :goto_0

    .line 734
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_5
    if-eqz p1, :cond_6

    iget-boolean v11, p0, Lcom/android/settings/ApnEditor;->mNewApn:Z

    if-eqz v11, :cond_6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v11, v10, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v11, v10, :cond_6

    .line 735
    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/ApnEditor;->mUri:Landroid/net/Uri;

    invoke-virtual {v10, v11, v13, v13}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_0

    .line 739
    :cond_6
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 743
    .local v8, "values":Landroid/content/ContentValues;
    const-string v9, "name"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v11, v10, :cond_7

    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f070697

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .end local v6    # "name":Ljava/lang/String;
    :cond_7
    invoke-virtual {v8, v9, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 745
    const-string v9, "apn"

    invoke-virtual {v8, v9, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 746
    const-string v9, "proxy"

    iget-object v11, p0, Lcom/android/settings/ApnEditor;->mProxy:Landroid/preference/EditTextPreference;

    invoke-virtual {v11}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v9, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 747
    const-string v9, "port"

    iget-object v11, p0, Lcom/android/settings/ApnEditor;->mPort:Landroid/preference/EditTextPreference;

    invoke-virtual {v11}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v9, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 748
    const-string v9, "mmsproxy"

    iget-object v11, p0, Lcom/android/settings/ApnEditor;->mMmsProxy:Landroid/preference/EditTextPreference;

    invoke-virtual {v11}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v9, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 749
    const-string v9, "mmsport"

    iget-object v11, p0, Lcom/android/settings/ApnEditor;->mMmsPort:Landroid/preference/EditTextPreference;

    invoke-virtual {v11}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v9, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 750
    const-string v9, "user"

    iget-object v11, p0, Lcom/android/settings/ApnEditor;->mUser:Landroid/preference/EditTextPreference;

    invoke-virtual {v11}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v9, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 751
    const-string v9, "server"

    iget-object v11, p0, Lcom/android/settings/ApnEditor;->mServer:Landroid/preference/EditTextPreference;

    invoke-virtual {v11}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v9, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 752
    const-string v9, "password"

    iget-object v11, p0, Lcom/android/settings/ApnEditor;->mPassword:Landroid/preference/EditTextPreference;

    invoke-virtual {v11}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v9, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 753
    const-string v9, "mmsc"

    iget-object v11, p0, Lcom/android/settings/ApnEditor;->mMmsc:Landroid/preference/EditTextPreference;

    invoke-virtual {v11}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v9, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 755
    iget-object v9, p0, Lcom/android/settings/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    invoke-virtual {v9}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 756
    .local v1, "authVal":Ljava/lang/String;
    if-eqz v1, :cond_8

    .line 757
    const-string v9, "authtype"

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v8, v9, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 760
    :cond_8
    const-string v9, "protocol"

    iget-object v11, p0, Lcom/android/settings/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v11}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v9, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 761
    const-string v9, "roaming_protocol"

    iget-object v11, p0, Lcom/android/settings/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v11}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v9, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 763
    const-string v9, "type"

    iget-object v11, p0, Lcom/android/settings/ApnEditor;->mApnType:Landroid/preference/EditTextPreference;

    invoke-virtual {v11}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v9, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 765
    const-string v9, "mcc"

    invoke-virtual {v8, v9, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 766
    const-string v9, "mnc"

    invoke-virtual {v8, v9, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 768
    const-string v9, "numeric"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v9, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 771
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v11, "multi_sim_data_call"

    invoke-static {v9, v11}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 780
    :cond_9
    :goto_1
    iget-object v9, p0, Lcom/android/settings/ApnEditor;->mCurMnc:Ljava/lang/String;

    if-eqz v9, :cond_a

    iget-object v9, p0, Lcom/android/settings/ApnEditor;->mCurMcc:Ljava/lang/String;

    if-eqz v9, :cond_a

    .line 781
    iget-object v9, p0, Lcom/android/settings/ApnEditor;->mCurMnc:Ljava/lang/String;

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    iget-object v9, p0, Lcom/android/settings/ApnEditor;->mCurMcc:Ljava/lang/String;

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    iget v9, p0, Lcom/android/settings/ApnEditor;->mSubscription:I

    if-ne v9, v2, :cond_a

    .line 783
    const-string v9, "current"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v8, v9, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 793
    :cond_a
    const-string v9, "bearer"

    sget-object v11, Lcom/android/settings/ApnEditor;->BEARE_VALUE:Ljava/lang/Integer;

    invoke-virtual {v8, v9, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 794
    const-string v9, "mvno_type"

    iget-object v11, p0, Lcom/android/settings/ApnEditor;->mMvnoType:Landroid/preference/ListPreference;

    invoke-virtual {v11}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v9, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 795
    const-string v9, "mvno_match_data"

    iget-object v11, p0, Lcom/android/settings/ApnEditor;->mMvnoMatchData:Landroid/preference/EditTextPreference;

    invoke-virtual {v11}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v9, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 797
    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    iget-object v11, p0, Lcom/android/settings/ApnEditor;->mUri:Landroid/net/Uri;

    invoke-virtual {v9, v11, v8, v13, v13}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move v9, v10

    .line 799
    goto/16 :goto_0

    .line 773
    :catch_0
    move-exception v7

    .line 775
    .local v7, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 776
    sget-object v9, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    const-string v11, "Exception Reading Multi Sim Data Subscription Value."

    invoke-static {v9, v11, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private validateAndSaveTetherApn(Z)Z
    .locals 7
    .param p1, "force"    # Z

    .prologue
    const/4 v3, 0x1

    .line 905
    invoke-direct {p0, p1}, Lcom/android/settings/ApnEditor;->checkCanSaveApn(Z)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v3, 0x0

    .line 931
    :goto_0
    return v3

    .line 906
    :cond_0
    iget-object v4, p0, Lcom/android/settings/ApnEditor;->mName:Landroid/preference/EditTextPreference;

    invoke-virtual {v4}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 908
    .local v1, "name":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings/ApnEditor;->mTetherApnData:Lcom/sonyericsson/settings/apn/TetherApnData;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v5, v3, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070697

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .end local v1    # "name":Ljava/lang/String;
    :cond_1
    invoke-virtual {v4, v1}, Lcom/sonyericsson/settings/apn/TetherApnData;->setName(Ljava/lang/String;)V

    .line 910
    iget-object v4, p0, Lcom/android/settings/ApnEditor;->mTetherApnData:Lcom/sonyericsson/settings/apn/TetherApnData;

    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mApn:Landroid/preference/EditTextPreference;

    invoke-virtual {v5}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sonyericsson/settings/apn/TetherApnData;->setApn(Ljava/lang/String;)V

    .line 911
    iget-object v4, p0, Lcom/android/settings/ApnEditor;->mTetherApnData:Lcom/sonyericsson/settings/apn/TetherApnData;

    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mProxy:Landroid/preference/EditTextPreference;

    invoke-virtual {v5}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sonyericsson/settings/apn/TetherApnData;->setProxy(Ljava/lang/String;)V

    .line 912
    iget-object v4, p0, Lcom/android/settings/ApnEditor;->mTetherApnData:Lcom/sonyericsson/settings/apn/TetherApnData;

    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mPort:Landroid/preference/EditTextPreference;

    invoke-virtual {v5}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sonyericsson/settings/apn/TetherApnData;->setPort(Ljava/lang/String;)V

    .line 913
    iget-object v4, p0, Lcom/android/settings/ApnEditor;->mTetherApnData:Lcom/sonyericsson/settings/apn/TetherApnData;

    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mMmsProxy:Landroid/preference/EditTextPreference;

    invoke-virtual {v5}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sonyericsson/settings/apn/TetherApnData;->setMmsProxy(Ljava/lang/String;)V

    .line 914
    iget-object v4, p0, Lcom/android/settings/ApnEditor;->mTetherApnData:Lcom/sonyericsson/settings/apn/TetherApnData;

    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mMmsPort:Landroid/preference/EditTextPreference;

    invoke-virtual {v5}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sonyericsson/settings/apn/TetherApnData;->setMmsPort(Ljava/lang/String;)V

    .line 915
    iget-object v4, p0, Lcom/android/settings/ApnEditor;->mTetherApnData:Lcom/sonyericsson/settings/apn/TetherApnData;

    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mUser:Landroid/preference/EditTextPreference;

    invoke-virtual {v5}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sonyericsson/settings/apn/TetherApnData;->setUser(Ljava/lang/String;)V

    .line 916
    iget-object v4, p0, Lcom/android/settings/ApnEditor;->mTetherApnData:Lcom/sonyericsson/settings/apn/TetherApnData;

    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mServer:Landroid/preference/EditTextPreference;

    invoke-virtual {v5}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sonyericsson/settings/apn/TetherApnData;->setServer(Ljava/lang/String;)V

    .line 917
    iget-object v4, p0, Lcom/android/settings/ApnEditor;->mTetherApnData:Lcom/sonyericsson/settings/apn/TetherApnData;

    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mPassword:Landroid/preference/EditTextPreference;

    invoke-virtual {v5}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sonyericsson/settings/apn/TetherApnData;->setPassword(Ljava/lang/String;)V

    .line 918
    iget-object v4, p0, Lcom/android/settings/ApnEditor;->mTetherApnData:Lcom/sonyericsson/settings/apn/TetherApnData;

    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mMmsc:Landroid/preference/EditTextPreference;

    invoke-virtual {v5}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sonyericsson/settings/apn/TetherApnData;->setMmsc(Ljava/lang/String;)V

    .line 920
    iget-object v4, p0, Lcom/android/settings/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 921
    .local v0, "authVal":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 922
    iget-object v4, p0, Lcom/android/settings/ApnEditor;->mTetherApnData:Lcom/sonyericsson/settings/apn/TetherApnData;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sonyericsson/settings/apn/TetherApnData;->setAuthType(I)V

    .line 924
    :cond_2
    iget-object v4, p0, Lcom/android/settings/ApnEditor;->mTetherApnData:Lcom/sonyericsson/settings/apn/TetherApnData;

    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mApnType:Landroid/preference/EditTextPreference;

    invoke-virtual {v5}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sonyericsson/settings/apn/TetherApnData;->setTypeArray(Ljava/lang/String;)V

    .line 926
    iget-object v4, p0, Lcom/android/settings/ApnEditor;->mTetherApnData:Lcom/sonyericsson/settings/apn/TetherApnData;

    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mMcc:Landroid/preference/EditTextPreference;

    invoke-virtual {v5}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sonyericsson/settings/apn/TetherApnData;->setMcc(Ljava/lang/String;)V

    .line 927
    iget-object v4, p0, Lcom/android/settings/ApnEditor;->mTetherApnData:Lcom/sonyericsson/settings/apn/TetherApnData;

    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mMnc:Landroid/preference/EditTextPreference;

    invoke-virtual {v5}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sonyericsson/settings/apn/TetherApnData;->setMnc(Ljava/lang/String;)V

    .line 928
    iget-object v4, p0, Lcom/android/settings/ApnEditor;->mTetherApnData:Lcom/sonyericsson/settings/apn/TetherApnData;

    invoke-virtual {v4}, Lcom/sonyericsson/settings/apn/TetherApnData;->toString()Ljava/lang/String;

    move-result-object v2

    .line 929
    .local v2, "tetherDunApn":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "tether_dun_apn"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 178
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 180
    const v10, 0x7f050003

    invoke-virtual {p0, v10}, Lcom/android/settings/ApnEditor;->addPreferencesFromResource(I)V

    .line 182
    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f07040d

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    sput-object v10, Lcom/android/settings/ApnEditor;->sNotSet:Ljava/lang/String;

    .line 183
    const-string v10, "apn_name"

    invoke-virtual {p0, v10}, Lcom/android/settings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/EditTextPreference;

    iput-object v10, p0, Lcom/android/settings/ApnEditor;->mName:Landroid/preference/EditTextPreference;

    .line 184
    const-string v10, "apn_apn"

    invoke-virtual {p0, v10}, Lcom/android/settings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/EditTextPreference;

    iput-object v10, p0, Lcom/android/settings/ApnEditor;->mApn:Landroid/preference/EditTextPreference;

    .line 185
    const-string v10, "apn_http_proxy"

    invoke-virtual {p0, v10}, Lcom/android/settings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/EditTextPreference;

    iput-object v10, p0, Lcom/android/settings/ApnEditor;->mProxy:Landroid/preference/EditTextPreference;

    .line 186
    const-string v10, "apn_http_port"

    invoke-virtual {p0, v10}, Lcom/android/settings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/EditTextPreference;

    iput-object v10, p0, Lcom/android/settings/ApnEditor;->mPort:Landroid/preference/EditTextPreference;

    .line 187
    const-string v10, "apn_user"

    invoke-virtual {p0, v10}, Lcom/android/settings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/EditTextPreference;

    iput-object v10, p0, Lcom/android/settings/ApnEditor;->mUser:Landroid/preference/EditTextPreference;

    .line 188
    const-string v10, "apn_server"

    invoke-virtual {p0, v10}, Lcom/android/settings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/EditTextPreference;

    iput-object v10, p0, Lcom/android/settings/ApnEditor;->mServer:Landroid/preference/EditTextPreference;

    .line 189
    const-string v10, "apn_password"

    invoke-virtual {p0, v10}, Lcom/android/settings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/EditTextPreference;

    iput-object v10, p0, Lcom/android/settings/ApnEditor;->mPassword:Landroid/preference/EditTextPreference;

    .line 190
    const-string v10, "apn_mms_proxy"

    invoke-virtual {p0, v10}, Lcom/android/settings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/EditTextPreference;

    iput-object v10, p0, Lcom/android/settings/ApnEditor;->mMmsProxy:Landroid/preference/EditTextPreference;

    .line 191
    const-string v10, "apn_mms_port"

    invoke-virtual {p0, v10}, Lcom/android/settings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/EditTextPreference;

    iput-object v10, p0, Lcom/android/settings/ApnEditor;->mMmsPort:Landroid/preference/EditTextPreference;

    .line 192
    const-string v10, "apn_mmsc"

    invoke-virtual {p0, v10}, Lcom/android/settings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/EditTextPreference;

    iput-object v10, p0, Lcom/android/settings/ApnEditor;->mMmsc:Landroid/preference/EditTextPreference;

    .line 193
    const-string v10, "apn_mcc"

    invoke-virtual {p0, v10}, Lcom/android/settings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/EditTextPreference;

    iput-object v10, p0, Lcom/android/settings/ApnEditor;->mMcc:Landroid/preference/EditTextPreference;

    .line 194
    const-string v10, "apn_mnc"

    invoke-virtual {p0, v10}, Lcom/android/settings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/EditTextPreference;

    iput-object v10, p0, Lcom/android/settings/ApnEditor;->mMnc:Landroid/preference/EditTextPreference;

    .line 195
    const-string v10, "apn_type"

    invoke-virtual {p0, v10}, Lcom/android/settings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/EditTextPreference;

    iput-object v10, p0, Lcom/android/settings/ApnEditor;->mApnType:Landroid/preference/EditTextPreference;

    .line 197
    const-string v10, "auth_type"

    invoke-virtual {p0, v10}, Lcom/android/settings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/ListPreference;

    iput-object v10, p0, Lcom/android/settings/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    .line 198
    iget-object v10, p0, Lcom/android/settings/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    invoke-virtual {v10, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 200
    const-string v10, "apn_protocol"

    invoke-virtual {p0, v10}, Lcom/android/settings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/ListPreference;

    iput-object v10, p0, Lcom/android/settings/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    .line 201
    iget-object v10, p0, Lcom/android/settings/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v10, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 203
    const-string v10, "apn_roaming_protocol"

    invoke-virtual {p0, v10}, Lcom/android/settings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/ListPreference;

    iput-object v10, p0, Lcom/android/settings/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    .line 204
    iget-object v10, p0, Lcom/android/settings/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v10, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 206
    const-string v10, "carrier_enabled"

    invoke-virtual {p0, v10}, Lcom/android/settings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/CheckBoxPreference;

    iput-object v10, p0, Lcom/android/settings/ApnEditor;->mCarrierEnabled:Landroid/preference/CheckBoxPreference;

    .line 212
    const-string v10, "mvno_type"

    invoke-virtual {p0, v10}, Lcom/android/settings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/ListPreference;

    iput-object v10, p0, Lcom/android/settings/ApnEditor;->mMvnoType:Landroid/preference/ListPreference;

    .line 213
    iget-object v10, p0, Lcom/android/settings/ApnEditor;->mMvnoType:Landroid/preference/ListPreference;

    invoke-virtual {v10, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 214
    const-string v10, "mvno_match_data"

    invoke-virtual {p0, v10}, Lcom/android/settings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/EditTextPreference;

    iput-object v10, p0, Lcom/android/settings/ApnEditor;->mMvnoMatchData:Landroid/preference/EditTextPreference;

    .line 216
    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings/ApnEditor;->mRes:Landroid/content/res/Resources;

    .line 218
    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->getIntent()Landroid/content/Intent;

    move-result-object v5

    .line 219
    .local v5, "intent":Landroid/content/Intent;
    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 221
    .local v0, "action":Ljava/lang/String;
    const-string v10, "subscription"

    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v11

    invoke-virtual {v11}, Landroid/telephony/MSimTelephonyManager;->getDefaultSubscription()I

    move-result v11

    invoke-virtual {v5, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    iput v10, p0, Lcom/android/settings/ApnEditor;->mSubscription:I

    .line 223
    sget-object v10, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "ApnEditor onCreate received sub: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/settings/ApnEditor;->mSubscription:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    if-nez p1, :cond_2

    const/4 v10, 0x1

    :goto_0
    iput-boolean v10, p0, Lcom/android/settings/ApnEditor;->mFirstTime:Z

    .line 226
    iget-object v10, p0, Lcom/android/settings/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v11, 0x7f0a000a

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v10

    iput-boolean v10, p0, Lcom/android/settings/ApnEditor;->mIsTetherApnEditable:Z

    .line 228
    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "tether_dun_required"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_3

    const/4 v6, 0x1

    .line 231
    .local v6, "isTetherDunRequired":Z
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "tether_dun_apn"

    invoke-static {v10, v11}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 233
    .local v1, "apnDataString":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 234
    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x1040019

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 238
    :cond_0
    new-instance v10, Lcom/sonyericsson/settings/apn/TetherApnData;

    invoke-direct {v10, v6, v1}, Lcom/sonyericsson/settings/apn/TetherApnData;-><init>(ZLjava/lang/String;)V

    iput-object v10, p0, Lcom/android/settings/ApnEditor;->mTetherApnData:Lcom/sonyericsson/settings/apn/TetherApnData;

    .line 240
    const-string v10, "TetheringApn"

    const/4 v11, 0x0

    invoke-virtual {v5, v10, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    iput-boolean v10, p0, Lcom/android/settings/ApnEditor;->mIsTetherApn:Z

    .line 242
    iget-object v10, p0, Lcom/android/settings/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v11, 0x7f080065

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v9

    .line 243
    .local v9, "numericList":[Ljava/lang/String;
    if-eqz v9, :cond_1

    .line 247
    const-string v10, "gsm.apn.sim.operator.numeric"

    iget v11, p0, Lcom/android/settings/ApnEditor;->mSubscription:I

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/telephony/MSimTelephonyManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 250
    .local v8, "numeric":Ljava/lang/String;
    move-object v2, v9

    .local v2, "arr$":[Ljava/lang/String;
    array-length v7, v2

    .local v7, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_2
    if-ge v4, v7, :cond_1

    aget-object v3, v2, v4

    .line 251
    .local v3, "element":Ljava/lang/String;
    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 252
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/settings/ApnEditor;->mIsTetherApnEditable:Z

    .line 258
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v3    # "element":Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v7    # "len$":I
    .end local v8    # "numeric":Ljava/lang/String;
    :cond_1
    iget-boolean v10, p0, Lcom/android/settings/ApnEditor;->mIsTetherApn:Z

    if-eqz v10, :cond_5

    .line 259
    invoke-direct {p0}, Lcom/android/settings/ApnEditor;->fillTetherUI()V

    .line 298
    :goto_3
    return-void

    .line 224
    .end local v1    # "apnDataString":Ljava/lang/String;
    .end local v6    # "isTetherDunRequired":Z
    .end local v9    # "numericList":[Ljava/lang/String;
    :cond_2
    const/4 v10, 0x0

    goto :goto_0

    .line 228
    :cond_3
    const/4 v6, 0x0

    goto :goto_1

    .line 250
    .restart local v1    # "apnDataString":Ljava/lang/String;
    .restart local v2    # "arr$":[Ljava/lang/String;
    .restart local v3    # "element":Ljava/lang/String;
    .restart local v4    # "i$":I
    .restart local v6    # "isTetherDunRequired":Z
    .restart local v7    # "len$":I
    .restart local v8    # "numeric":Ljava/lang/String;
    .restart local v9    # "numericList":[Ljava/lang/String;
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 263
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v3    # "element":Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v7    # "len$":I
    .end local v8    # "numeric":Ljava/lang/String;
    :cond_5
    const-string v10, "android.intent.action.EDIT"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 264
    invoke-virtual {v5}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings/ApnEditor;->mUri:Landroid/net/Uri;

    .line 292
    :goto_4
    iget-object v10, p0, Lcom/android/settings/ApnEditor;->mUri:Landroid/net/Uri;

    sget-object v11, Lcom/android/settings/ApnEditor;->sProjection:[Ljava/lang/String;

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {p0, v10, v11, v12, v13}, Lcom/android/settings/ApnEditor;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    .line 293
    iget-object v10, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 295
    const-string v10, "phone"

    invoke-virtual {p0, v10}, Lcom/android/settings/ApnEditor;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/telephony/TelephonyManager;

    iput-object v10, p0, Lcom/android/settings/ApnEditor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 297
    const-string v10, "operator"

    invoke-virtual {v5, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/settings/ApnEditor;->fillUi(Ljava/lang/String;)V

    goto :goto_3

    .line 265
    :cond_6
    const-string v10, "android.intent.action.INSERT"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 266
    iget-boolean v10, p0, Lcom/android/settings/ApnEditor;->mFirstTime:Z

    if-nez v10, :cond_7

    const-string v10, "pos"

    invoke-virtual {p1, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    if-nez v10, :cond_8

    .line 267
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    invoke-virtual {v5}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v11

    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings/ApnEditor;->mUri:Landroid/net/Uri;

    .line 272
    :goto_5
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/settings/ApnEditor;->mNewApn:Z

    .line 276
    iget-object v10, p0, Lcom/android/settings/ApnEditor;->mUri:Landroid/net/Uri;

    if-nez v10, :cond_9

    .line 277
    sget-object v10, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed to insert new telephony provider into "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->getIntent()Landroid/content/Intent;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->finish()V

    goto/16 :goto_3

    .line 269
    :cond_8
    sget-object v10, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const-string v11, "pos"

    invoke-virtual {p1, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    int-to-long v11, v11

    invoke-static {v10, v11, v12}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings/ApnEditor;->mUri:Landroid/net/Uri;

    goto :goto_5

    .line 285
    :cond_9
    const/4 v10, -0x1

    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    iget-object v12, p0, Lcom/android/settings/ApnEditor;->mUri:Landroid/net/Uri;

    invoke-virtual {v12}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v11

    invoke-virtual {p0, v10, v11}, Lcom/android/settings/ApnEditor;->setResult(ILandroid/content/Intent;)V

    goto/16 :goto_4

    .line 288
    :cond_a
    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->finish()V

    goto/16 :goto_3
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 828
    if-nez p1, :cond_0

    .line 829
    invoke-direct {p0}, Lcom/android/settings/ApnEditor;->getErrorMsg()Ljava/lang/String;

    move-result-object v0

    .line 831
    .local v0, "msg":Ljava/lang/String;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f07042c

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 838
    .end local v0    # "msg":Ljava/lang/String;
    :goto_0
    return-object v1

    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v1

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 601
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 602
    iget-boolean v2, p0, Lcom/android/settings/ApnEditor;->mIsTetherApn:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/settings/ApnEditor;->mIsTetherApnEditable:Z

    if-nez v2, :cond_1

    .line 619
    :cond_0
    :goto_0
    return v0

    .line 606
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/ApnEditor;->isCarrierLocked()Z

    move-result v2

    if-nez v2, :cond_0

    .line 611
    iget-boolean v2, p0, Lcom/android/settings/ApnEditor;->mNewApn:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/android/settings/ApnEditor;->mIsTetherApn:Z

    if-nez v2, :cond_2

    .line 612
    const v2, 0x7f070428

    invoke-interface {p1, v0, v1, v0, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x7f020058

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 615
    :cond_2
    const/4 v2, 0x2

    const v3, 0x7f07042a

    invoke-interface {p1, v0, v2, v0, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x108004e

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 617
    const/4 v2, 0x3

    const v3, 0x7f07042b

    invoke-interface {p1, v0, v2, v0, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v2, 0x1080038

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move v0, v1

    .line 619
    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 645
    packed-switch p1, :pswitch_data_0

    .line 653
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 647
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/ApnEditor;->isCarrierLocked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/ApnEditor;->validateAndSave(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 648
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->finish()V

    .line 650
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 645
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x1

    .line 624
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 640
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    .line 626
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/ApnEditor;->deleteApn()V

    goto :goto_0

    .line 629
    :pswitch_1
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/settings/ApnEditor;->validateAndSave(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 630
    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->finish()V

    goto :goto_0

    .line 634
    :pswitch_2
    iget-boolean v1, p0, Lcom/android/settings/ApnEditor;->mNewApn:Z

    if-eqz v1, :cond_1

    .line 635
    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/ApnEditor;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 637
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->finish()V

    goto :goto_0

    .line 624
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 326
    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 328
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 329
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 9
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v7, 0x0

    .line 553
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 554
    .local v2, "key":Ljava/lang/String;
    const-string v6, "auth_type"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 556
    :try_start_0
    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 557
    .local v1, "index":I
    iget-object v6, p0, Lcom/android/settings/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    invoke-virtual {v6, v1}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 559
    iget-object v6, p0, Lcom/android/settings/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v8, 0x7f080029

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 560
    .local v5, "values":[Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    aget-object v8, v5, v1

    invoke-virtual {v6, v8}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 596
    .end local v1    # "index":I
    .end local v5    # "values":[Ljava/lang/String;
    :cond_0
    :goto_0
    const/4 v6, 0x1

    :goto_1
    return v6

    .line 561
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/NumberFormatException;
    move v6, v7

    .line 562
    goto :goto_1

    .line 564
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_1
    const-string v6, "apn_protocol"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    move-object v6, p2

    .line 565
    check-cast v6, Ljava/lang/String;

    iget-object v8, p0, Lcom/android/settings/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    invoke-direct {p0, v6, v8}, Lcom/android/settings/ApnEditor;->protocolDescription(Ljava/lang/String;Landroid/preference/ListPreference;)Ljava/lang/String;

    move-result-object v4

    .line 566
    .local v4, "protocol":Ljava/lang/String;
    if-nez v4, :cond_2

    move v6, v7

    .line 567
    goto :goto_1

    .line 569
    :cond_2
    iget-object v6, p0, Lcom/android/settings/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v6, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 570
    iget-object v6, p0, Lcom/android/settings/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {v6, p2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 571
    .end local v4    # "protocol":Ljava/lang/String;
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_3
    const-string v6, "apn_roaming_protocol"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    move-object v6, p2

    .line 572
    check-cast v6, Ljava/lang/String;

    iget-object v8, p0, Lcom/android/settings/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    invoke-direct {p0, v6, v8}, Lcom/android/settings/ApnEditor;->protocolDescription(Ljava/lang/String;Landroid/preference/ListPreference;)Ljava/lang/String;

    move-result-object v4

    .line 573
    .restart local v4    # "protocol":Ljava/lang/String;
    if-nez v4, :cond_4

    move v6, v7

    .line 574
    goto :goto_1

    .line 576
    :cond_4
    iget-object v6, p0, Lcom/android/settings/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v6, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 577
    iget-object v6, p0, Lcom/android/settings/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {v6, p2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 587
    .end local v4    # "protocol":Ljava/lang/String;
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_5
    const-string v6, "mvno_type"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v6, p2

    .line 588
    check-cast v6, Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/android/settings/ApnEditor;->mvnoDescription(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 589
    .local v3, "mvno":Ljava/lang/String;
    if-nez v3, :cond_6

    move v6, v7

    .line 590
    goto :goto_1

    .line 592
    :cond_6
    iget-object v6, p0, Lcom/android/settings/ApnEditor;->mMvnoType:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {v6, p2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 593
    iget-object v6, p0, Lcom/android/settings/ApnEditor;->mMvnoType:Landroid/preference/ListPreference;

    invoke-virtual {v6, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 843
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 845
    if-nez p1, :cond_0

    .line 846
    invoke-direct {p0}, Lcom/android/settings/ApnEditor;->getErrorMsg()Ljava/lang/String;

    move-result-object v0

    .line 848
    .local v0, "msg":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 849
    check-cast p2, Landroid/app/AlertDialog;

    .end local p2    # "dialog":Landroid/app/Dialog;
    invoke-virtual {p2, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 852
    .end local v0    # "msg":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 302
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 303
    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 313
    iget-boolean v0, p0, Lcom/android/settings/ApnEditor;->mNewApn:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 314
    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ApnEditor;->mUri:Landroid/net/Uri;

    .line 315
    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mUri:Landroid/net/Uri;

    if-nez v0, :cond_1

    .line 316
    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->finish()V

    .line 322
    :cond_0
    :goto_0
    return-void

    .line 319
    :cond_1
    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mUri:Landroid/net/Uri;

    sget-object v1, Lcom/android/settings/ApnEditor;->sProjection:[Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v3, v3}, Lcom/android/settings/ApnEditor;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    .line 320
    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 658
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 659
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings/ApnEditor;->validateAndSave(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/ApnEditor;->mIsTetherApn:Z

    if-nez v0, :cond_0

    .line 660
    const-string v0, "pos"

    iget-object v1, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 662
    :cond_0
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 888
    invoke-virtual {p0, p2}, Lcom/android/settings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 889
    if-eqz v0, :cond_0

    .line 890
    iget-object v1, p0, Lcom/android/settings/ApnEditor;->mPassword:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 891
    const-string v1, ""

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/ApnEditor;->starify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 896
    :cond_0
    :goto_0
    return-void

    .line 893
    :cond_1
    const-string v1, ""

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
