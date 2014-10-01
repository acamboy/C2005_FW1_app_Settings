.class public Lcom/sonyericsson/settings/smscounter/SmsCounterService;
.super Landroid/app/Service;
.source "SmsCounterService.java"


# static fields
.field private static mPhoneIMSI:[Ljava/lang/String;

.field private static mSmsTotalCount:[I


# instance fields
.field private SIM_NUM:I

.field private mDBHandler:[Landroid/os/Handler;

.field private mDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field private mPrefs:[Landroid/content/SharedPreferences;

.field private mSmsCounterObserver:[Lcom/sonyericsson/settings/smscounter/SmsContentObserver;

.field private mUtil:Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 47
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->mSmsTotalCount:[I

    .line 49
    new-array v0, v1, [Ljava/lang/String;

    sput-object v0, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->mPhoneIMSI:[Ljava/lang/String;

    return-void

    .line 47
    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x2

    .line 60
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 43
    new-array v0, v1, [Lcom/sonyericsson/settings/smscounter/SmsContentObserver;

    iput-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->mSmsCounterObserver:[Lcom/sonyericsson/settings/smscounter/SmsContentObserver;

    .line 45
    iput-object v2, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 51
    iput v1, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->SIM_NUM:I

    .line 53
    new-array v0, v1, [Landroid/content/SharedPreferences;

    iput-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->mPrefs:[Landroid/content/SharedPreferences;

    .line 55
    iput-object v2, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->mUtil:Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;

    .line 57
    new-array v0, v1, [Landroid/os/Handler;

    iput-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->mDBHandler:[Landroid/os/Handler;

    .line 61
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/settings/smscounter/SmsCounterService;)Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/settings/smscounter/SmsCounterService;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->mUtil:Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonyericsson/settings/smscounter/SmsCounterService;)[Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/settings/smscounter/SmsCounterService;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->mPrefs:[Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonyericsson/settings/smscounter/SmsCounterService;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/settings/smscounter/SmsCounterService;

    .prologue
    .line 41
    iget v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->SIM_NUM:I

    return v0
.end method

.method static synthetic access$300(Lcom/sonyericsson/settings/smscounter/SmsCounterService;Ljava/lang/String;Landroid/content/SharedPreferences;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/settings/smscounter/SmsCounterService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/content/SharedPreferences;
    .param p3, "x3"    # I

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->setMyPhoneIMSI(Ljava/lang/String;Landroid/content/SharedPreferences;I)V

    return-void
.end method

.method static synthetic access$400(Lcom/sonyericsson/settings/smscounter/SmsCounterService;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/settings/smscounter/SmsCounterService;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sonyericsson/settings/smscounter/SmsCounterService;)[Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/settings/smscounter/SmsCounterService;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->mDBHandler:[Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600()[I
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->mSmsTotalCount:[I

    return-object v0
.end method

.method static synthetic access$700(Lcom/sonyericsson/settings/smscounter/SmsCounterService;Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/settings/smscounter/SmsCounterService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->caculateLength(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/sonyericsson/settings/smscounter/SmsCounterService;II)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/settings/smscounter/SmsCounterService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->insertSMSRecord(II)V

    return-void
.end method

.method static synthetic access$900(Lcom/sonyericsson/settings/smscounter/SmsCounterService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/settings/smscounter/SmsCounterService;
    .param p1, "x1"    # I

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->savePreference(I)V

    return-void
.end method

.method private caculateLength(Ljava/lang/String;)I
    .locals 3
    .param p1, "msgBody"    # Ljava/lang/String;

    .prologue
    .line 497
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v1

    .line 498
    .local v1, "smsManager":Landroid/telephony/SmsManager;
    invoke-virtual {v1, p1}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 499
    .local v0, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    return v2
.end method

.method public static getMyPhoneIMSI(I)Ljava/lang/String;
    .locals 1
    .param p0, "slotIndex"    # I

    .prologue
    .line 592
    sget-object v0, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->mPhoneIMSI:[Ljava/lang/String;

    aget-object v0, v0, p0

    return-object v0
.end method

.method private insertSMSRecord(II)V
    .locals 7
    .param p1, "recordID"    # I
    .param p2, "slotId"    # I

    .prologue
    .line 517
    new-instance v3, Landroid/content/ContentValues;

    const/4 v4, 0x4

    invoke-direct {v3, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 519
    .local v3, "values":Landroid/content/ContentValues;
    invoke-static {p2}, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->getMyPhoneIMSI(I)Ljava/lang/String;

    move-result-object v2

    .line 520
    .local v2, "phoneIMSI":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 522
    .local v0, "date":J
    const-string v4, "sms_id"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 523
    const-string v4, "imsi"

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    const-string v4, "type"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 525
    const-string v4, "sent_time"

    const-wide/16 v5, 0x3e8

    rem-long v5, v0, v5

    sub-long v5, v0, v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 526
    iget-object v4, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "counter"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 531
    return-void
.end method

.method private registerContentObserver()V
    .locals 5

    .prologue
    .line 503
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->SIM_NUM:I

    if-ge v0, v1, :cond_0

    .line 504
    invoke-virtual {p0}, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/settings/smscounter/SmsCounterConfig;->SMS_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->mSmsCounterObserver:[Lcom/sonyericsson/settings/smscounter/SmsContentObserver;

    aget-object v4, v4, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 503
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 507
    :cond_0
    return-void
.end method

.method private savePreference()V
    .locals 4

    .prologue
    .line 556
    iget-object v2, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->mUtil:Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;

    invoke-virtual {v2}, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->getDefaultSlotIndex()I

    move-result v1

    .line 562
    .local v1, "slotIndex":I
    iget-object v2, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->mPrefs:[Landroid/content/SharedPreferences;

    aget-object v2, v2, v1

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 563
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "sms_counter_total_count"

    sget-object v3, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->mSmsTotalCount:[I

    aget v3, v3, v1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 564
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 565
    return-void
.end method

.method private savePreference(I)V
    .locals 3
    .param p1, "slotIndex"    # I

    .prologue
    .line 550
    iget-object v1, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->mPrefs:[Landroid/content/SharedPreferences;

    aget-object v1, v1, p1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 551
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "sms_counter_total_count"

    sget-object v2, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->mSmsTotalCount:[I

    aget v2, v2, p1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 552
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 553
    return-void
.end method

.method private setMyPhoneIMSI(Ljava/lang/String;Landroid/content/SharedPreferences;I)V
    .locals 2
    .param p1, "mPhoneIMSI"    # Ljava/lang/String;
    .param p2, "prefs"    # Landroid/content/SharedPreferences;
    .param p3, "slotIndex"    # I

    .prologue
    .line 582
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 583
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "phone_imsi"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 584
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 585
    sget-object v1, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->mPhoneIMSI:[Ljava/lang/String;

    aput-object p1, v1, p3

    .line 586
    return-void
.end method

.method private unregisterContentObserver()V
    .locals 3

    .prologue
    .line 510
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->SIM_NUM:I

    if-ge v0, v1, :cond_0

    .line 511
    invoke-virtual {p0}, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->mSmsCounterObserver:[Lcom/sonyericsson/settings/smscounter/SmsContentObserver;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 510
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 513
    :cond_0
    return-void
.end method


# virtual methods
.method public init()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 146
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v4, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->SIM_NUM:I

    if-ge v0, v4, :cond_2

    .line 147
    iget-object v4, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->mPrefs:[Landroid/content/SharedPreferences;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sms_counter_preference_file_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5, v7}, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    aput-object v5, v4, v0

    .line 148
    sget-object v4, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->mSmsTotalCount:[I

    iget-object v5, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->mPrefs:[Landroid/content/SharedPreferences;

    aget-object v5, v5, v0

    const-string v6, "sms_counter_total_count"

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    aput v5, v4, v0

    .line 150
    iget-object v4, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->mUtil:Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;

    iget-object v5, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->mPrefs:[Landroid/content/SharedPreferences;

    aget-object v5, v5, v0

    invoke-virtual {v4, v5}, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->getSavedPhoneIMSI(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v2

    .line 151
    .local v2, "savedPhoneIMSI":Ljava/lang/String;
    iget-object v4, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->mUtil:Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;

    invoke-virtual {v4}, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->isAirplaneModeOn()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 152
    iget-object v4, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->mPrefs:[Landroid/content/SharedPreferences;

    aget-object v4, v4, v0

    invoke-direct {p0, v2, v4, v0}, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->setMyPhoneIMSI(Ljava/lang/String;Landroid/content/SharedPreferences;I)V

    .line 153
    sget-object v4, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->mPhoneIMSI:[Ljava/lang/String;

    aput-object v2, v4, v0

    .line 174
    :goto_1
    iget-object v4, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->mSmsCounterObserver:[Lcom/sonyericsson/settings/smscounter/SmsContentObserver;

    new-instance v5, Lcom/sonyericsson/settings/smscounter/SmsContentObserver;

    iget-object v6, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->mDBHandler:[Landroid/os/Handler;

    aget-object v6, v6, v0

    invoke-direct {v5, p0, v6}, Lcom/sonyericsson/settings/smscounter/SmsContentObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    aput-object v5, v4, v0

    .line 146
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 159
    :cond_0
    iget-object v4, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->mUtil:Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;

    invoke-virtual {v4, v0}, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->getSimState(I)I

    move-result v3

    .line 160
    .local v3, "state":I
    const/4 v4, 0x5

    if-eq v3, v4, :cond_1

    .line 161
    const-string v4, "11111111"

    iget-object v5, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->mPrefs:[Landroid/content/SharedPreferences;

    aget-object v5, v5, v0

    invoke-direct {p0, v4, v5, v0}, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->setMyPhoneIMSI(Ljava/lang/String;Landroid/content/SharedPreferences;I)V

    goto :goto_1

    .line 163
    :cond_1
    iget-object v4, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->mUtil:Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;

    invoke-virtual {v4, v0}, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->getPhoneIMSI(I)Ljava/lang/String;

    move-result-object v1

    .line 164
    .local v1, "newPhoneIMSI":Ljava/lang/String;
    iget-object v4, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->mPrefs:[Landroid/content/SharedPreferences;

    aget-object v4, v4, v0

    invoke-direct {p0, v1, v4, v0}, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->setMyPhoneIMSI(Ljava/lang/String;Landroid/content/SharedPreferences;I)V

    .line 165
    sget-object v4, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->mPhoneIMSI:[Ljava/lang/String;

    aput-object v1, v4, v0

    goto :goto_1

    .line 176
    .end local v1    # "newPhoneIMSI":Ljava/lang/String;
    .end local v2    # "savedPhoneIMSI":Ljava/lang/String;
    .end local v3    # "state":I
    :cond_2
    return-void
.end method

.method public initHandler()V
    .locals 3

    .prologue
    .line 101
    iget-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->mDBHandler:[Landroid/os/Handler;

    const/4 v1, 0x0

    new-instance v2, Lcom/sonyericsson/settings/smscounter/SmsCounterService$1;

    invoke-direct {v2, p0}, Lcom/sonyericsson/settings/smscounter/SmsCounterService$1;-><init>(Lcom/sonyericsson/settings/smscounter/SmsCounterService;)V

    aput-object v2, v0, v1

    .line 123
    iget-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->mDBHandler:[Landroid/os/Handler;

    const/4 v1, 0x1

    new-instance v2, Lcom/sonyericsson/settings/smscounter/SmsCounterService$2;

    invoke-direct {v2, p0}, Lcom/sonyericsson/settings/smscounter/SmsCounterService$2;-><init>(Lcom/sonyericsson/settings/smscounter/SmsCounterService;)V

    aput-object v2, v0, v1

    .line 143
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 65
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 70
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 87
    new-instance v0, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;

    invoke-direct {v0, p0}, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->mUtil:Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;

    .line 90
    invoke-virtual {p0}, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->init()V

    .line 92
    invoke-virtual {p0}, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->initHandler()V

    .line 94
    invoke-static {p0}, Lcom/sonyericsson/settings/smscounter/SmsDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/sonyericsson/settings/smscounter/SmsDatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/settings/smscounter/SmsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 96
    invoke-direct {p0}, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->registerContentObserver()V

    .line 97
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 569
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 573
    iget-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->mUtil:Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;

    invoke-virtual {v0}, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->cancelAlarmManager()V

    .line 574
    invoke-direct {p0}, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->savePreference()V

    .line 575
    invoke-direct {p0}, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->unregisterContentObserver()V

    .line 576
    return-void
.end method

.method public onSmsDBChanged()V
    .locals 1

    .prologue
    .line 378
    new-instance v0, Lcom/sonyericsson/settings/smscounter/SmsCounterService$6;

    invoke-direct {v0, p0}, Lcom/sonyericsson/settings/smscounter/SmsCounterService$6;-><init>(Lcom/sonyericsson/settings/smscounter/SmsCounterService;)V

    .line 493
    .local v0, "localThread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 494
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v2, 0x0

    .line 180
    if-eqz p1, :cond_3

    .line 188
    const-string v1, "com.sonyericsson.settings.smscounter.DB_QUERY"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 189
    invoke-virtual {p0}, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->resetFromQuery()V

    .line 196
    :cond_0
    const-string v1, "com.sonyericsson.settings.smscounter.BOOT_COMPLETED"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 197
    invoke-virtual {p0}, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->resetFromBoot()V

    .line 204
    :cond_1
    const-string v1, "com.sonyericsson.settings.smscounter.AIRPLANE_MODE_CHANGED"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 205
    invoke-virtual {p0}, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->resetFromAirMode()V

    .line 208
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->SIM_NUM:I

    if-ge v0, v1, :cond_3

    .line 209
    iget-object v1, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->mUtil:Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->getPhoneIMSI(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->mPrefs:[Landroid/content/SharedPreferences;

    aget-object v2, v2, v0

    invoke-direct {p0, v1, v2, v0}, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->setMyPhoneIMSI(Ljava/lang/String;Landroid/content/SharedPreferences;I)V

    .line 208
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 212
    .end local v0    # "i":I
    :cond_3
    const/4 v1, 0x1

    return v1
.end method

.method public resetFromAirMode()V
    .locals 2

    .prologue
    .line 270
    iget-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->mUtil:Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;

    invoke-virtual {v0}, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->updateWidget()V

    .line 276
    iget-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->mUtil:Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;

    invoke-virtual {v0}, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->isAirplaneModeOn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 277
    new-instance v0, Lcom/sonyericsson/settings/smscounter/SmsCounterService$4;

    invoke-direct {v0, p0}, Lcom/sonyericsson/settings/smscounter/SmsCounterService$4;-><init>(Lcom/sonyericsson/settings/smscounter/SmsCounterService;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/settings/smscounter/SmsCounterService$4;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 331
    :goto_0
    return-void

    .line 329
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->mUtil:Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;

    invoke-virtual {v0}, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->cancelNotification()V

    goto :goto_0
.end method

.method public resetFromBoot()V
    .locals 4

    .prologue
    .line 334
    iget-object v2, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->mUtil:Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;

    iget-object v3, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->mUtil:Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;

    invoke-virtual {v3}, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->getDefaultSlotIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->getSimState(I)I

    move-result v1

    .line 340
    .local v1, "simState":I
    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    .line 341
    new-instance v0, Lcom/sonyericsson/settings/smscounter/SmsCounterService$5;

    invoke-direct {v0, p0}, Lcom/sonyericsson/settings/smscounter/SmsCounterService$5;-><init>(Lcom/sonyericsson/settings/smscounter/SmsCounterService;)V

    .line 372
    .local v0, "localThread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 374
    .end local v0    # "localThread":Ljava/lang/Thread;
    :cond_0
    return-void
.end method

.method public resetFromQuery()V
    .locals 4

    .prologue
    .line 220
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->mUtil:Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;

    invoke-virtual {v3}, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->getDefaultSlotIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/telephony/MSimTelephonyManager;->hasIccCard(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 223
    iget-object v2, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->mUtil:Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;

    invoke-virtual {v2}, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->cancelNotification()V

    .line 226
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->SIM_NUM:I

    if-ge v0, v2, :cond_1

    .line 227
    iget-object v2, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->mUtil:Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;

    iget-object v3, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->mPrefs:[Landroid/content/SharedPreferences;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3, v0}, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->updateDateRange(Landroid/content/SharedPreferences;I)V

    .line 226
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 230
    :cond_1
    new-instance v1, Lcom/sonyericsson/settings/smscounter/SmsCounterService$3;

    invoke-direct {v1, p0}, Lcom/sonyericsson/settings/smscounter/SmsCounterService$3;-><init>(Lcom/sonyericsson/settings/smscounter/SmsCounterService;)V

    .line 246
    .local v1, "localThread":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 247
    return-void
.end method

.method public resetFromQueryDB(I)V
    .locals 9
    .param p1, "slotIndex"    # I

    .prologue
    .line 250
    iget-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->mUtil:Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;

    iget-object v8, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->mPrefs:[Landroid/content/SharedPreferences;

    aget-object v8, v8, p1

    invoke-virtual {v0, v8}, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->getStartTimeSettings(Landroid/content/SharedPreferences;)J

    move-result-wide v1

    .line 251
    .local v1, "startTime":J
    iget-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->mUtil:Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;

    iget-object v8, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->mPrefs:[Landroid/content/SharedPreferences;

    aget-object v8, v8, p1

    invoke-virtual {v0, v8}, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->getEndTimeSettings(Landroid/content/SharedPreferences;)J

    move-result-wide v3

    .line 252
    .local v3, "endTime":J
    iget-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->mUtil:Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;

    iget-object v8, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->mPrefs:[Landroid/content/SharedPreferences;

    aget-object v8, v8, p1

    invoke-virtual {v0, v8}, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->getSavedPhoneIMSI(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v5

    .line 253
    .local v5, "savedPhoneIMSI":Ljava/lang/String;
    iget-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static/range {v0 .. v5}, Lcom/sonyericsson/settings/smscounter/SmsCounterTable;->getSmsCount(Landroid/database/sqlite/SQLiteDatabase;JJLjava/lang/String;)I

    move-result v6

    .line 255
    .local v6, "count":I
    iget-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->mUtil:Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;

    iget-object v8, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->mPrefs:[Landroid/content/SharedPreferences;

    aget-object v8, v8, p1

    invoke-virtual {v0, v8, v6}, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->setCurrentCount(Landroid/content/SharedPreferences;I)V

    .line 256
    iget-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->mUtil:Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;

    invoke-virtual {v0}, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->updateWidget()V

    .line 258
    iget-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->mDBHandler:[Landroid/os/Handler;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v7

    .line 259
    .local v7, "message":Landroid/os/Message;
    iput v6, v7, Landroid/os/Message;->arg1:I

    .line 260
    const/4 v0, 0x0

    iput v0, v7, Landroid/os/Message;->what:I

    .line 262
    iget-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->mDBHandler:[Landroid/os/Handler;

    aget-object v0, v0, p1

    invoke-virtual {v0, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 263
    return-void
.end method
