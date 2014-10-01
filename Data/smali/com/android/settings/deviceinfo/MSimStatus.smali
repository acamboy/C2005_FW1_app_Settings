.class public Lcom/android/settings/deviceinfo/MSimStatus;
.super Landroid/preference/PreferenceActivity;
.source "MSimStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/deviceinfo/MSimStatus$MyHandler;
    }
.end annotation


# static fields
.field private static final PHONE_RELATED_ENTRIES:[Ljava/lang/String;

.field private static sUnknown:Ljava/lang/String;


# instance fields
.field private mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

.field private mBatteryLevel:Landroid/preference/Preference;

.field private mBatteryStatus:Landroid/preference/Preference;

.field private mDataState:I

.field private mHandler:Landroid/os/Handler;

.field private mNumPhones:I

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

.field private mRes:Landroid/content/res/Resources;

.field private mTelephonyManager:Landroid/telephony/MSimTelephonyManager;

.field private mUptime:Landroid/preference/Preference;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 83
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "data_state"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "network_type"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/deviceinfo/MSimStatus;->PHONE_RELATED_ENTRIES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 72
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/MSimStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 99
    iput v1, p0, Lcom/android/settings/deviceinfo/MSimStatus;->mNumPhones:I

    .line 103
    iput v1, p0, Lcom/android/settings/deviceinfo/MSimStatus;->mDataState:I

    .line 132
    new-instance v0, Lcom/android/settings/deviceinfo/MSimStatus$1;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/MSimStatus$1;-><init>(Lcom/android/settings/deviceinfo/MSimStatus;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/MSimStatus;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/deviceinfo/MSimStatus;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/MSimStatus;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MSimStatus;->mBatteryLevel:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/deviceinfo/MSimStatus;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/MSimStatus;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MSimStatus;->mBatteryStatus:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/settings/deviceinfo/MSimStatus;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/MSimStatus;
    .param p1, "x1"    # I

    .prologue
    .line 72
    iput p1, p0, Lcom/android/settings/deviceinfo/MSimStatus;->mDataState:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/settings/deviceinfo/MSimStatus;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/MSimStatus;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/MSimStatus;->updateDataState()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/deviceinfo/MSimStatus;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/MSimStatus;
    .param p1, "x1"    # I

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/MSimStatus;->updateNetworkType(I)V

    return-void
.end method

.method private convert(J)Ljava/lang/String;
    .locals 7
    .param p1, "t"    # J

    .prologue
    const-wide/16 v5, 0x3c

    .line 383
    rem-long v3, p1, v5

    long-to-int v2, v3

    .line 384
    .local v2, "s":I
    div-long v3, p1, v5

    rem-long/2addr v3, v5

    long-to-int v1, v3

    .line 385
    .local v1, "m":I
    const-wide/16 v3, 0xe10

    div-long v3, p1, v3

    long-to-int v0, v3

    .line 387
    .local v0, "h":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, v1}, Lcom/android/settings/deviceinfo/MSimStatus;->pad(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, v2}, Lcom/android/settings/deviceinfo/MSimStatus;->pad(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private getPhoneStateListener(I)Landroid/telephony/PhoneStateListener;
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 231
    new-instance v0, Lcom/android/settings/deviceinfo/MSimStatus$2;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/deviceinfo/MSimStatus$2;-><init>(Lcom/android/settings/deviceinfo/MSimStatus;I)V

    .line 242
    .local v0, "phoneStateListener":Landroid/telephony/PhoneStateListener;
    return-object v0
.end method

.method private pad(I)Ljava/lang/String;
    .locals 2
    .param p1, "n"    # I

    .prologue
    .line 375
    const/16 v0, 0xa

    if-lt p1, v0, :cond_0

    .line 376
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 378
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private removePreferenceFromScreen(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 250
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/MSimStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 251
    .local v0, "pref":Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 252
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/MSimStatus;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 254
    :cond_0
    return-void
.end method

.method private setBtStatus()V
    .locals 4

    .prologue
    .line 350
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 351
    .local v1, "bluetooth":Landroid/bluetooth/BluetoothAdapter;
    const-string v3, "bt_address"

    invoke-virtual {p0, v3}, Lcom/android/settings/deviceinfo/MSimStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 353
    .local v2, "btAddressPref":Landroid/preference/Preference;
    if-nez v1, :cond_0

    .line 355
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/MSimStatus;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 361
    :goto_0
    return-void

    .line 357
    :cond_0
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 358
    .local v0, "address":Ljava/lang/String;
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .end local v0    # "address":Ljava/lang/String;
    :goto_2
    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 357
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 358
    .restart local v0    # "address":Ljava/lang/String;
    :cond_2
    const v3, 0x7f0703dd

    invoke-virtual {p0, v3}, Lcom/android/settings/deviceinfo/MSimStatus;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method private setIpAddressStatus()V
    .locals 3

    .prologue
    .line 340
    const-string v2, "wifi_ip_address"

    invoke-virtual {p0, v2}, Lcom/android/settings/deviceinfo/MSimStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 341
    .local v1, "ipAddressPref":Landroid/preference/Preference;
    invoke-static {p0}, Lcom/android/settings/Utils;->getDefaultIpAddresses(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 342
    .local v0, "ipAddress":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 343
    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 347
    :goto_0
    return-void

    .line 345
    :cond_0
    const v2, 0x7f0703dd

    invoke-virtual {p0, v2}, Lcom/android/settings/deviceinfo/MSimStatus;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setSummaryText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "preference"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 271
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    sget-object p2, Lcom/android/settings/deviceinfo/MSimStatus;->sUnknown:Ljava/lang/String;

    .line 275
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/MSimStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 276
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/MSimStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 278
    :cond_1
    return-void
.end method

.method private setWifiStatus()V
    .locals 5

    .prologue
    .line 329
    const-string v4, "wifi"

    invoke-virtual {p0, v4}, Lcom/android/settings/deviceinfo/MSimStatus;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    .line 330
    .local v3, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 332
    .local v1, "wifiInfo":Landroid/net/wifi/WifiInfo;
    const-string v4, "wifi_mac_address"

    invoke-virtual {p0, v4}, Lcom/android/settings/deviceinfo/MSimStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 334
    .local v2, "wifiMacAddressPref":Landroid/preference/Preference;
    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 335
    .local v0, "macAddress":Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .end local v0    # "macAddress":Ljava/lang/String;
    :goto_1
    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 337
    return-void

    .line 334
    :cond_0
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 335
    .restart local v0    # "macAddress":Ljava/lang/String;
    :cond_1
    const v4, 0x7f0703dd

    invoke-virtual {p0, v4}, Lcom/android/settings/deviceinfo/MSimStatus;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private setWimaxStatus()V
    .locals 8

    .prologue
    .line 314
    const-string v6, "connectivity"

    invoke-virtual {p0, v6}, Lcom/android/settings/deviceinfo/MSimStatus;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 315
    .local v0, "cm":Landroid/net/ConnectivityManager;
    const/4 v6, 0x6

    invoke-virtual {v0, v6}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 317
    .local v2, "ni":Landroid/net/NetworkInfo;
    if-nez v2, :cond_1

    .line 318
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/MSimStatus;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    .line 319
    .local v4, "root":Landroid/preference/PreferenceScreen;
    const-string v6, "wimax_mac_address"

    invoke-virtual {p0, v6}, Lcom/android/settings/deviceinfo/MSimStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 320
    .local v3, "ps":Landroid/preference/Preference;
    if-eqz v3, :cond_0

    invoke-virtual {v4, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 327
    .end local v3    # "ps":Landroid/preference/Preference;
    .end local v4    # "root":Landroid/preference/PreferenceScreen;
    :cond_0
    :goto_0
    return-void

    .line 322
    :cond_1
    const-string v6, "wimax_mac_address"

    invoke-virtual {p0, v6}, Lcom/android/settings/deviceinfo/MSimStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 323
    .local v5, "wimaxMacAddressPref":Landroid/preference/Preference;
    const-string v6, "net.wimax.mac.address"

    const v7, 0x7f0703dd

    invoke-virtual {p0, v7}, Lcom/android/settings/deviceinfo/MSimStatus;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 325
    .local v1, "macAddress":Ljava/lang/String;
    invoke-virtual {v5, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateDataState()V
    .locals 3

    .prologue
    .line 291
    iget-object v1, p0, Lcom/android/settings/deviceinfo/MSimStatus;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0700e9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 293
    .local v0, "display":Ljava/lang/String;
    iget v1, p0, Lcom/android/settings/deviceinfo/MSimStatus;->mDataState:I

    packed-switch v1, :pswitch_data_0

    .line 310
    :goto_0
    const-string v1, "data_state"

    invoke-direct {p0, v1, v0}, Lcom/android/settings/deviceinfo/MSimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    return-void

    .line 295
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings/deviceinfo/MSimStatus;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0700e7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 296
    goto :goto_0

    .line 298
    :pswitch_1
    iget-object v1, p0, Lcom/android/settings/deviceinfo/MSimStatus;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0700e8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 299
    goto :goto_0

    .line 301
    :pswitch_2
    iget-object v1, p0, Lcom/android/settings/deviceinfo/MSimStatus;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0700e6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 302
    goto :goto_0

    .line 304
    :pswitch_3
    iget-object v1, p0, Lcom/android/settings/deviceinfo/MSimStatus;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0700e5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 305
    goto :goto_0

    .line 293
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateNetworkType(I)V
    .locals 2
    .param p1, "subscription"    # I

    .prologue
    .line 282
    const/4 v0, 0x0

    .line 283
    .local v0, "networktype":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/deviceinfo/MSimStatus;->mTelephonyManager:Landroid/telephony/MSimTelephonyManager;

    invoke-virtual {v1, p1}, Landroid/telephony/MSimTelephonyManager;->getNetworkType(I)I

    move-result v1

    if-eqz v1, :cond_0

    .line 285
    iget-object v1, p0, Lcom/android/settings/deviceinfo/MSimStatus;->mTelephonyManager:Landroid/telephony/MSimTelephonyManager;

    invoke-virtual {v1, p1}, Landroid/telephony/MSimTelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v0

    .line 287
    :cond_0
    const-string v1, "network_type"

    invoke-direct {p0, v1, v0}, Lcom/android/settings/deviceinfo/MSimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 146
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 149
    new-instance v6, Lcom/android/settings/deviceinfo/MSimStatus$MyHandler;

    invoke-direct {v6, p0}, Lcom/android/settings/deviceinfo/MSimStatus$MyHandler;-><init>(Lcom/android/settings/deviceinfo/MSimStatus;)V

    iput-object v6, p0, Lcom/android/settings/deviceinfo/MSimStatus;->mHandler:Landroid/os/Handler;

    .line 151
    const-string v6, "phone_msim"

    invoke-virtual {p0, v6}, Lcom/android/settings/deviceinfo/MSimStatus;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/MSimTelephonyManager;

    iput-object v6, p0, Lcom/android/settings/deviceinfo/MSimStatus;->mTelephonyManager:Landroid/telephony/MSimTelephonyManager;

    .line 153
    const v6, 0x7f05000e

    invoke-virtual {p0, v6}, Lcom/android/settings/deviceinfo/MSimStatus;->addPreferencesFromResource(I)V

    .line 155
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v6

    iput v6, p0, Lcom/android/settings/deviceinfo/MSimStatus;->mNumPhones:I

    .line 156
    iget v6, p0, Lcom/android/settings/deviceinfo/MSimStatus;->mNumPhones:I

    new-array v6, v6, [Landroid/telephony/PhoneStateListener;

    iput-object v6, p0, Lcom/android/settings/deviceinfo/MSimStatus;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    .line 158
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v6, p0, Lcom/android/settings/deviceinfo/MSimStatus;->mNumPhones:I

    if-ge v1, v6, :cond_0

    .line 159
    iget-object v6, p0, Lcom/android/settings/deviceinfo/MSimStatus;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    invoke-direct {p0, v1}, Lcom/android/settings/deviceinfo/MSimStatus;->getPhoneStateListener(I)Landroid/telephony/PhoneStateListener;

    move-result-object v7

    aput-object v7, v6, v1

    .line 160
    iget-object v6, p0, Lcom/android/settings/deviceinfo/MSimStatus;->mTelephonyManager:Landroid/telephony/MSimTelephonyManager;

    iget-object v7, p0, Lcom/android/settings/deviceinfo/MSimStatus;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v7, v7, v1

    const/16 v8, 0x40

    invoke-virtual {v6, v7, v8}, Landroid/telephony/MSimTelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 158
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 164
    :cond_0
    const-string v6, "battery_level"

    invoke-virtual {p0, v6}, Lcom/android/settings/deviceinfo/MSimStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/deviceinfo/MSimStatus;->mBatteryLevel:Landroid/preference/Preference;

    .line 165
    const-string v6, "battery_status"

    invoke-virtual {p0, v6}, Lcom/android/settings/deviceinfo/MSimStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/deviceinfo/MSimStatus;->mBatteryStatus:Landroid/preference/Preference;

    .line 176
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/MSimStatus;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/deviceinfo/MSimStatus;->mRes:Landroid/content/res/Resources;

    .line 177
    sget-object v6, Lcom/android/settings/deviceinfo/MSimStatus;->sUnknown:Ljava/lang/String;

    if-nez v6, :cond_1

    .line 178
    iget-object v6, p0, Lcom/android/settings/deviceinfo/MSimStatus;->mRes:Landroid/content/res/Resources;

    const v7, 0x7f0700c9

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/android/settings/deviceinfo/MSimStatus;->sUnknown:Ljava/lang/String;

    .line 181
    :cond_1
    const-string v6, "up_time"

    invoke-virtual {p0, v6}, Lcom/android/settings/deviceinfo/MSimStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/deviceinfo/MSimStatus;->mUptime:Landroid/preference/Preference;

    .line 183
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/MSimStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 184
    sget-object v0, Lcom/android/settings/deviceinfo/MSimStatus;->PHONE_RELATED_ENTRIES:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v4, :cond_2

    aget-object v3, v0, v2

    .line 185
    .local v3, "key":Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/android/settings/deviceinfo/MSimStatus;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 184
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 189
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "len$":I
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/MSimStatus;->setWimaxStatus()V

    .line 190
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/MSimStatus;->setWifiStatus()V

    .line 191
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/MSimStatus;->setBtStatus()V

    .line 192
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/MSimStatus;->setIpAddressStatus()V

    .line 194
    sget-object v5, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    .line 195
    .local v5, "serial":Ljava/lang/String;
    if-eqz v5, :cond_3

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 196
    const-string v6, "serial_number"

    invoke-direct {p0, v6, v5}, Lcom/android/settings/deviceinfo/MSimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    :goto_2
    return-void

    .line 198
    :cond_3
    const-string v6, "serial_number"

    invoke-direct {p0, v6}, Lcom/android/settings/deviceinfo/MSimStatus;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public onPause()V
    .locals 4

    .prologue
    .line 219
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 221
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/MSimStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 222
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/settings/deviceinfo/MSimStatus;->mNumPhones:I

    if-ge v0, v1, :cond_0

    .line 223
    iget-object v1, p0, Lcom/android/settings/deviceinfo/MSimStatus;->mTelephonyManager:Landroid/telephony/MSimTelephonyManager;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/MSimStatus;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v2, v2, v0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/telephony/MSimTelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 222
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 226
    .end local v0    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/android/settings/deviceinfo/MSimStatus;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/MSimStatus;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 227
    iget-object v1, p0, Lcom/android/settings/deviceinfo/MSimStatus;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x1f4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 228
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 204
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 206
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/MSimStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 207
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/MSimStatus;->updateDataState()V

    .line 208
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/settings/deviceinfo/MSimStatus;->mNumPhones:I

    if-ge v0, v1, :cond_0

    .line 209
    iget-object v1, p0, Lcom/android/settings/deviceinfo/MSimStatus;->mTelephonyManager:Landroid/telephony/MSimTelephonyManager;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/MSimStatus;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v2, v2, v0

    const/16 v3, 0x40

    invoke-virtual {v1, v2, v3}, Landroid/telephony/MSimTelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 208
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 213
    .end local v0    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/android/settings/deviceinfo/MSimStatus;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/deviceinfo/MSimStatus;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 214
    iget-object v1, p0, Lcom/android/settings/deviceinfo/MSimStatus;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x1f4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 215
    return-void
.end method

.method updateTimes()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x3e8

    .line 364
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    div-long v0, v4, v6

    .line 365
    .local v0, "at":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    div-long v2, v4, v6

    .line 367
    .local v2, "ut":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_0

    .line 368
    const-wide/16 v2, 0x1

    .line 371
    :cond_0
    iget-object v4, p0, Lcom/android/settings/deviceinfo/MSimStatus;->mUptime:Landroid/preference/Preference;

    invoke-direct {p0, v2, v3}, Lcom/android/settings/deviceinfo/MSimStatus;->convert(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 372
    return-void
.end method
