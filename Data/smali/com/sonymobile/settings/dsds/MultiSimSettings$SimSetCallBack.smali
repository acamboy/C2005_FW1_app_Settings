.class abstract Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;
.super Ljava/lang/Object;
.source "MultiSimSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/settings/dsds/MultiSimSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "SimSetCallBack"
.end annotation


# instance fields
.field isSimSetting:Z

.field isSimSettingEnable:Z

.field private mAirplaneModeObserver:Landroid/database/ContentObserver;

.field private mCardSubscriptionManager:Lcom/codeaurora/telephony/msim/CardSubscriptionManager;

.field private final mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

.field private final mSim1Pref:Landroid/preference/CheckBoxPreference;

.field private final mSim1Text:Landroid/preference/EditTextPreference;

.field private final mSim2Pref:Landroid/preference/CheckBoxPreference;

.field private final mSim2Text:Landroid/preference/EditTextPreference;

.field private final mSimNames:[Ljava/lang/String;

.field private mSubscriptionManager:Lcom/codeaurora/telephony/msim/SubscriptionManager;

.field simcard:I

.field final synthetic this$0:Lcom/sonymobile/settings/dsds/MultiSimSettings;


# direct methods
.method public constructor <init>(Lcom/sonymobile/settings/dsds/MultiSimSettings;Landroid/content/Context;Landroid/preference/CheckBoxPreference;Landroid/preference/CheckBoxPreference;Landroid/preference/EditTextPreference;Landroid/preference/EditTextPreference;)V
    .locals 5
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "sim1Preference"    # Landroid/preference/CheckBoxPreference;
    .param p4, "sim2Preference"    # Landroid/preference/CheckBoxPreference;
    .param p5, "sim1TextPre"    # Landroid/preference/EditTextPreference;
    .param p6, "sim2TextPre"    # Landroid/preference/EditTextPreference;

    .prologue
    const/4 v4, 0x0

    .line 477
    iput-object p1, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;->this$0:Lcom/sonymobile/settings/dsds/MultiSimSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 385
    iput-boolean v4, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;->isSimSetting:Z

    .line 386
    iput-boolean v4, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;->isSimSettingEnable:Z

    .line 387
    iput v4, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;->simcard:I

    .line 389
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;->mSimNames:[Ljava/lang/String;

    .line 398
    new-instance v0, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack$1;-><init>(Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;)V

    iput-object v0, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;->mHandler:Landroid/os/Handler;

    .line 469
    new-instance v0, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack$2;

    iget-object v1, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack$2;-><init>(Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    .line 478
    iput-object p2, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;->mContext:Landroid/content/Context;

    .line 479
    iget-object v0, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;->mSimNames:[Ljava/lang/String;

    iget-object v1, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0700b0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 481
    iget-object v0, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;->mSimNames:[Ljava/lang/String;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0700b2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 483
    iput-object p3, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;->mSim1Pref:Landroid/preference/CheckBoxPreference;

    .line 484
    iput-object p4, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;->mSim2Pref:Landroid/preference/CheckBoxPreference;

    .line 485
    iget-object v0, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;->mSim1Pref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v4}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 486
    iget-object v0, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;->mSim2Pref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v4}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 487
    iput-object p5, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;->mSim1Text:Landroid/preference/EditTextPreference;

    .line 488
    iput-object p6, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;->mSim2Text:Landroid/preference/EditTextPreference;

    .line 489
    new-instance v0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    iget-object v1, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    .line 490
    iget-object v0, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->notifyServiceState(I)V

    .line 491
    invoke-static {}, Lcom/codeaurora/telephony/msim/SubscriptionManager;->getInstance()Lcom/codeaurora/telephony/msim/SubscriptionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;->mSubscriptionManager:Lcom/codeaurora/telephony/msim/SubscriptionManager;

    .line 492
    invoke-static {}, Lcom/codeaurora/telephony/msim/CardSubscriptionManager;->getInstance()Lcom/codeaurora/telephony/msim/CardSubscriptionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;->mCardSubscriptionManager:Lcom/codeaurora/telephony/msim/CardSubscriptionManager;

    .line 493
    return-void
.end method

.method static synthetic access$100(Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;
    .param p1, "x1"    # I

    .prologue
    .line 373
    invoke-direct {p0, p1}, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;->isSimCardPowerOn(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;)Lcom/android/internal/telephony/PhoneStateIntentReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;

    .prologue
    .line 373
    iget-object v0, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;

    .prologue
    .line 373
    iget-object v0, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private isSimCardPowerOn(I)Z
    .locals 2
    .param p1, "sub"    # I

    .prologue
    .line 562
    invoke-static {}, Lcom/codeaurora/telephony/msim/SubscriptionManager;->getInstance()Lcom/codeaurora/telephony/msim/SubscriptionManager;

    move-result-object v0

    .line 564
    .local v0, "mSub":Lcom/codeaurora/telephony/msim/SubscriptionManager;
    invoke-virtual {v0, p1}, Lcom/codeaurora/telephony/msim/SubscriptionManager;->isSubActive(I)Z

    move-result v1

    return v1
.end method

.method private setSIMStatus(IZ)V
    .locals 4
    .param p1, "sub"    # I
    .param p2, "enabling"    # Z

    .prologue
    .line 571
    if-eqz p2, :cond_0

    .line 572
    invoke-virtual {p0, p1}, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;->enableIccCard(I)Z

    .line 592
    :goto_0
    return-void

    .line 574
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;->this$0:Lcom/sonymobile/settings/dsds/MultiSimSettings;

    # invokes: Lcom/sonymobile/settings/dsds/MultiSimSettings;->getDataConnectionID()I
    invoke-static {v1}, Lcom/sonymobile/settings/dsds/MultiSimSettings;->access$700(Lcom/sonymobile/settings/dsds/MultiSimSettings;)I

    move-result v1

    if-ne v1, p1, :cond_2

    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/MSimTelephonyManager;->getDataActivity()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/MSimTelephonyManager;->getDataActivity()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/MSimTelephonyManager;->getDataActivity()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 578
    :cond_1
    move v0, p1

    .line 579
    .local v0, "sub1":I
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;->this$0:Lcom/sonymobile/settings/dsds/MultiSimSettings;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f070822

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0707aa

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack$3;

    invoke-direct {v3, p0, v0}, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack$3;-><init>(Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;I)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 589
    .end local v0    # "sub1":I
    :cond_2
    invoke-virtual {p0, p1}, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;->disableIccCard(I)Z

    goto :goto_0
.end method


# virtual methods
.method public disableIccCard(I)Z
    .locals 8
    .param p1, "sub"    # I

    .prologue
    const/4 v7, 0x2

    const/4 v3, 0x0

    .line 625
    if-ge p1, v7, :cond_0

    if-gez p1, :cond_1

    .line 651
    :cond_0
    :goto_0
    return v3

    .line 627
    :cond_1
    iget-object v4, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;->mSubscriptionManager:Lcom/codeaurora/telephony/msim/SubscriptionManager;

    invoke-virtual {v4, p1}, Lcom/codeaurora/telephony/msim/SubscriptionManager;->getCurrentSubscription(I)Lcom/codeaurora/telephony/msim/Subscription;

    move-result-object v4

    iget-object v4, v4, Lcom/codeaurora/telephony/msim/Subscription;->subStatus:Lcom/codeaurora/telephony/msim/Subscription$SubscriptionStatus;

    sget-object v5, Lcom/codeaurora/telephony/msim/Subscription$SubscriptionStatus;->SUB_DEACTIVATED:Lcom/codeaurora/telephony/msim/Subscription$SubscriptionStatus;

    if-eq v4, v5, :cond_0

    .line 630
    iget-object v4, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;->mCardSubscriptionManager:Lcom/codeaurora/telephony/msim/CardSubscriptionManager;

    invoke-virtual {v4, p1}, Lcom/codeaurora/telephony/msim/CardSubscriptionManager;->getCardSubscriptions(I)Lcom/codeaurora/telephony/msim/SubscriptionData;

    move-result-object v1

    .line 631
    .local v1, "cardSubInfo":Lcom/codeaurora/telephony/msim/SubscriptionData;
    if-eqz v1, :cond_0

    iget-object v4, v1, Lcom/codeaurora/telephony/msim/SubscriptionData;->subscription:[Lcom/codeaurora/telephony/msim/Subscription;

    array-length v4, v4

    if-eqz v4, :cond_0

    .line 632
    const-string v4, "DualSIM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cardSubInfo["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/codeaurora/telephony/msim/SubscriptionData;->subscription:[Lcom/codeaurora/telephony/msim/Subscription;

    aget-object v6, v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    # getter for: Lcom/sonymobile/settings/dsds/MultiSimSettings;->subData:Lcom/codeaurora/telephony/msim/SubscriptionData;
    invoke-static {}, Lcom/sonymobile/settings/dsds/MultiSimSettings;->access$600()Lcom/codeaurora/telephony/msim/SubscriptionData;

    move-result-object v4

    iget-object v4, v4, Lcom/codeaurora/telephony/msim/SubscriptionData;->subscription:[Lcom/codeaurora/telephony/msim/Subscription;

    aget-object v4, v4, p1

    iget-object v5, v1, Lcom/codeaurora/telephony/msim/SubscriptionData;->subscription:[Lcom/codeaurora/telephony/msim/Subscription;

    aget-object v5, v5, v3

    invoke-virtual {v4, v5}, Lcom/codeaurora/telephony/msim/Subscription;->copyFrom(Lcom/codeaurora/telephony/msim/Subscription;)Lcom/codeaurora/telephony/msim/Subscription;

    .line 635
    # getter for: Lcom/sonymobile/settings/dsds/MultiSimSettings;->subData:Lcom/codeaurora/telephony/msim/SubscriptionData;
    invoke-static {}, Lcom/sonymobile/settings/dsds/MultiSimSettings;->access$600()Lcom/codeaurora/telephony/msim/SubscriptionData;

    move-result-object v4

    iget-object v4, v4, Lcom/codeaurora/telephony/msim/SubscriptionData;->subscription:[Lcom/codeaurora/telephony/msim/Subscription;

    aget-object v4, v4, p1

    sget-object v5, Lcom/codeaurora/telephony/msim/Subscription$SubscriptionStatus;->SUB_DEACTIVATE:Lcom/codeaurora/telephony/msim/Subscription$SubscriptionStatus;

    iput-object v5, v4, Lcom/codeaurora/telephony/msim/Subscription;->subStatus:Lcom/codeaurora/telephony/msim/Subscription$SubscriptionStatus;

    .line 636
    # getter for: Lcom/sonymobile/settings/dsds/MultiSimSettings;->subData:Lcom/codeaurora/telephony/msim/SubscriptionData;
    invoke-static {}, Lcom/sonymobile/settings/dsds/MultiSimSettings;->access$600()Lcom/codeaurora/telephony/msim/SubscriptionData;

    move-result-object v4

    iget-object v4, v4, Lcom/codeaurora/telephony/msim/SubscriptionData;->subscription:[Lcom/codeaurora/telephony/msim/Subscription;

    aget-object v4, v4, p1

    iput p1, v4, Lcom/codeaurora/telephony/msim/Subscription;->subId:I

    .line 638
    const/4 v2, 0x0

    .local v2, "subIndex":I
    :goto_1
    if-ge v2, v7, :cond_3

    .line 639
    if-eq p1, v2, :cond_2

    .line 640
    iget-object v4, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;->mSubscriptionManager:Lcom/codeaurora/telephony/msim/SubscriptionManager;

    invoke-virtual {v4, v2}, Lcom/codeaurora/telephony/msim/SubscriptionManager;->getCurrentSubscription(I)Lcom/codeaurora/telephony/msim/Subscription;

    move-result-object v0

    .line 642
    .local v0, "Sub":Lcom/codeaurora/telephony/msim/Subscription;
    const-string v4, "DualSIM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Untouched sub: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    # getter for: Lcom/sonymobile/settings/dsds/MultiSimSettings;->subData:Lcom/codeaurora/telephony/msim/SubscriptionData;
    invoke-static {}, Lcom/sonymobile/settings/dsds/MultiSimSettings;->access$600()Lcom/codeaurora/telephony/msim/SubscriptionData;

    move-result-object v4

    iget-object v4, v4, Lcom/codeaurora/telephony/msim/SubscriptionData;->subscription:[Lcom/codeaurora/telephony/msim/Subscription;

    aget-object v4, v4, v2

    invoke-virtual {v4, v0}, Lcom/codeaurora/telephony/msim/Subscription;->copyFrom(Lcom/codeaurora/telephony/msim/Subscription;)Lcom/codeaurora/telephony/msim/Subscription;

    .line 638
    .end local v0    # "Sub":Lcom/codeaurora/telephony/msim/Subscription;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 647
    :cond_3
    const-string v4, "DualSIM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SUB 0 = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    # getter for: Lcom/sonymobile/settings/dsds/MultiSimSettings;->subData:Lcom/codeaurora/telephony/msim/SubscriptionData;
    invoke-static {}, Lcom/sonymobile/settings/dsds/MultiSimSettings;->access$600()Lcom/codeaurora/telephony/msim/SubscriptionData;

    move-result-object v6

    iget-object v6, v6, Lcom/codeaurora/telephony/msim/SubscriptionData;->subscription:[Lcom/codeaurora/telephony/msim/Subscription;

    aget-object v3, v6, v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    const-string v3, "DualSIM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SUB 1 = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    # getter for: Lcom/sonymobile/settings/dsds/MultiSimSettings;->subData:Lcom/codeaurora/telephony/msim/SubscriptionData;
    invoke-static {}, Lcom/sonymobile/settings/dsds/MultiSimSettings;->access$600()Lcom/codeaurora/telephony/msim/SubscriptionData;

    move-result-object v5

    iget-object v5, v5, Lcom/codeaurora/telephony/msim/SubscriptionData;->subscription:[Lcom/codeaurora/telephony/msim/Subscription;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    const-string v3, "DualSIM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "set disableIccCard + sub = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    iget-object v3, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;->mSubscriptionManager:Lcom/codeaurora/telephony/msim/SubscriptionManager;

    # getter for: Lcom/sonymobile/settings/dsds/MultiSimSettings;->subData:Lcom/codeaurora/telephony/msim/SubscriptionData;
    invoke-static {}, Lcom/sonymobile/settings/dsds/MultiSimSettings;->access$600()Lcom/codeaurora/telephony/msim/SubscriptionData;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/codeaurora/telephony/msim/SubscriptionManager;->setSubscription(Lcom/codeaurora/telephony/msim/SubscriptionData;)Z

    move-result v3

    goto/16 :goto_0
.end method

.method public enableIccCard(I)Z
    .locals 8
    .param p1, "sub"    # I

    .prologue
    const/4 v7, 0x2

    const/4 v3, 0x0

    .line 595
    if-ge p1, v7, :cond_0

    if-gez p1, :cond_1

    .line 621
    :cond_0
    :goto_0
    return v3

    .line 597
    :cond_1
    iget-object v4, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;->mSubscriptionManager:Lcom/codeaurora/telephony/msim/SubscriptionManager;

    invoke-virtual {v4, p1}, Lcom/codeaurora/telephony/msim/SubscriptionManager;->getCurrentSubscription(I)Lcom/codeaurora/telephony/msim/Subscription;

    move-result-object v4

    iget-object v4, v4, Lcom/codeaurora/telephony/msim/Subscription;->subStatus:Lcom/codeaurora/telephony/msim/Subscription$SubscriptionStatus;

    sget-object v5, Lcom/codeaurora/telephony/msim/Subscription$SubscriptionStatus;->SUB_ACTIVATED:Lcom/codeaurora/telephony/msim/Subscription$SubscriptionStatus;

    if-eq v4, v5, :cond_0

    .line 600
    iget-object v4, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;->mCardSubscriptionManager:Lcom/codeaurora/telephony/msim/CardSubscriptionManager;

    invoke-virtual {v4, p1}, Lcom/codeaurora/telephony/msim/CardSubscriptionManager;->getCardSubscriptions(I)Lcom/codeaurora/telephony/msim/SubscriptionData;

    move-result-object v1

    .line 601
    .local v1, "cardSubInfo":Lcom/codeaurora/telephony/msim/SubscriptionData;
    if-eqz v1, :cond_0

    iget-object v4, v1, Lcom/codeaurora/telephony/msim/SubscriptionData;->subscription:[Lcom/codeaurora/telephony/msim/Subscription;

    array-length v4, v4

    if-eqz v4, :cond_0

    .line 602
    const-string v4, "DualSIM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cardSubInfo["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/codeaurora/telephony/msim/SubscriptionData;->subscription:[Lcom/codeaurora/telephony/msim/Subscription;

    aget-object v6, v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    # getter for: Lcom/sonymobile/settings/dsds/MultiSimSettings;->subData:Lcom/codeaurora/telephony/msim/SubscriptionData;
    invoke-static {}, Lcom/sonymobile/settings/dsds/MultiSimSettings;->access$600()Lcom/codeaurora/telephony/msim/SubscriptionData;

    move-result-object v4

    iget-object v4, v4, Lcom/codeaurora/telephony/msim/SubscriptionData;->subscription:[Lcom/codeaurora/telephony/msim/Subscription;

    aget-object v4, v4, p1

    iget-object v5, v1, Lcom/codeaurora/telephony/msim/SubscriptionData;->subscription:[Lcom/codeaurora/telephony/msim/Subscription;

    aget-object v5, v5, v3

    invoke-virtual {v4, v5}, Lcom/codeaurora/telephony/msim/Subscription;->copyFrom(Lcom/codeaurora/telephony/msim/Subscription;)Lcom/codeaurora/telephony/msim/Subscription;

    .line 605
    # getter for: Lcom/sonymobile/settings/dsds/MultiSimSettings;->subData:Lcom/codeaurora/telephony/msim/SubscriptionData;
    invoke-static {}, Lcom/sonymobile/settings/dsds/MultiSimSettings;->access$600()Lcom/codeaurora/telephony/msim/SubscriptionData;

    move-result-object v4

    iget-object v4, v4, Lcom/codeaurora/telephony/msim/SubscriptionData;->subscription:[Lcom/codeaurora/telephony/msim/Subscription;

    aget-object v4, v4, p1

    sget-object v5, Lcom/codeaurora/telephony/msim/Subscription$SubscriptionStatus;->SUB_ACTIVATE:Lcom/codeaurora/telephony/msim/Subscription$SubscriptionStatus;

    iput-object v5, v4, Lcom/codeaurora/telephony/msim/Subscription;->subStatus:Lcom/codeaurora/telephony/msim/Subscription$SubscriptionStatus;

    .line 606
    # getter for: Lcom/sonymobile/settings/dsds/MultiSimSettings;->subData:Lcom/codeaurora/telephony/msim/SubscriptionData;
    invoke-static {}, Lcom/sonymobile/settings/dsds/MultiSimSettings;->access$600()Lcom/codeaurora/telephony/msim/SubscriptionData;

    move-result-object v4

    iget-object v4, v4, Lcom/codeaurora/telephony/msim/SubscriptionData;->subscription:[Lcom/codeaurora/telephony/msim/Subscription;

    aget-object v4, v4, p1

    iput p1, v4, Lcom/codeaurora/telephony/msim/Subscription;->subId:I

    .line 608
    const/4 v2, 0x0

    .local v2, "subIndex":I
    :goto_1
    if-ge v2, v7, :cond_3

    .line 609
    if-eq p1, v2, :cond_2

    .line 610
    iget-object v4, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;->mSubscriptionManager:Lcom/codeaurora/telephony/msim/SubscriptionManager;

    invoke-virtual {v4, v2}, Lcom/codeaurora/telephony/msim/SubscriptionManager;->getCurrentSubscription(I)Lcom/codeaurora/telephony/msim/Subscription;

    move-result-object v0

    .line 612
    .local v0, "Sub":Lcom/codeaurora/telephony/msim/Subscription;
    const-string v4, "DualSIM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Untouched sub: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    # getter for: Lcom/sonymobile/settings/dsds/MultiSimSettings;->subData:Lcom/codeaurora/telephony/msim/SubscriptionData;
    invoke-static {}, Lcom/sonymobile/settings/dsds/MultiSimSettings;->access$600()Lcom/codeaurora/telephony/msim/SubscriptionData;

    move-result-object v4

    iget-object v4, v4, Lcom/codeaurora/telephony/msim/SubscriptionData;->subscription:[Lcom/codeaurora/telephony/msim/Subscription;

    aget-object v4, v4, v2

    invoke-virtual {v4, v0}, Lcom/codeaurora/telephony/msim/Subscription;->copyFrom(Lcom/codeaurora/telephony/msim/Subscription;)Lcom/codeaurora/telephony/msim/Subscription;

    .line 608
    .end local v0    # "Sub":Lcom/codeaurora/telephony/msim/Subscription;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 617
    :cond_3
    const-string v4, "DualSIM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SUB 0 = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    # getter for: Lcom/sonymobile/settings/dsds/MultiSimSettings;->subData:Lcom/codeaurora/telephony/msim/SubscriptionData;
    invoke-static {}, Lcom/sonymobile/settings/dsds/MultiSimSettings;->access$600()Lcom/codeaurora/telephony/msim/SubscriptionData;

    move-result-object v6

    iget-object v6, v6, Lcom/codeaurora/telephony/msim/SubscriptionData;->subscription:[Lcom/codeaurora/telephony/msim/Subscription;

    aget-object v3, v6, v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    const-string v3, "DualSIM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SUB 1 = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    # getter for: Lcom/sonymobile/settings/dsds/MultiSimSettings;->subData:Lcom/codeaurora/telephony/msim/SubscriptionData;
    invoke-static {}, Lcom/sonymobile/settings/dsds/MultiSimSettings;->access$600()Lcom/codeaurora/telephony/msim/SubscriptionData;

    move-result-object v5

    iget-object v5, v5, Lcom/codeaurora/telephony/msim/SubscriptionData;->subscription:[Lcom/codeaurora/telephony/msim/Subscription;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    const-string v3, "DualSIM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "set enableIccCard + sub = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    iget-object v3, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;->mSubscriptionManager:Lcom/codeaurora/telephony/msim/SubscriptionManager;

    # getter for: Lcom/sonymobile/settings/dsds/MultiSimSettings;->subData:Lcom/codeaurora/telephony/msim/SubscriptionData;
    invoke-static {}, Lcom/sonymobile/settings/dsds/MultiSimSettings;->access$600()Lcom/codeaurora/telephony/msim/SubscriptionData;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/codeaurora/telephony/msim/SubscriptionManager;->setSubscription(Lcom/codeaurora/telephony/msim/SubscriptionData;)Z

    move-result v3

    goto/16 :goto_0
.end method

.method public isAirplaneModeOn()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 717
    iget-object v1, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isSIMStatusOn(I)Z
    .locals 1
    .param p1, "sub"    # I

    .prologue
    .line 558
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telephony/MSimTelephonyManager;->hasIccCard(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;->isSimCardPowerOn(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 659
    iget-object v1, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;->mSim1Text:Landroid/preference/EditTextPreference;

    if-ne p1, v1, :cond_2

    move-object v0, p2

    .line 660
    check-cast v0, Ljava/lang/String;

    .line 661
    .local v0, "D_value":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 662
    const-string v1, "DualSIM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSIM1_NAME "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    const-string v1, "DualSIM"

    const-string v2, "1111111111111111111111111111111111111111111"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    iget-object v1, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;->this$0:Lcom/sonymobile/settings/dsds/MultiSimSettings;

    invoke-virtual {v1, v0}, Lcom/sonymobile/settings/dsds/MultiSimSettings;->setSim1Name(Ljava/lang/String;)V

    .line 666
    iget-object v1, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;->this$0:Lcom/sonymobile/settings/dsds/MultiSimSettings;

    # invokes: Lcom/sonymobile/settings/dsds/MultiSimSettings;->updateNamingSummary()V
    invoke-static {v1}, Lcom/sonymobile/settings/dsds/MultiSimSettings;->access$800(Lcom/sonymobile/settings/dsds/MultiSimSettings;)V

    .line 667
    invoke-virtual {p0}, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;->onUpdate()V

    .line 678
    .end local v0    # "D_value":Ljava/lang/String;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;->mSim1Pref:Landroid/preference/CheckBoxPreference;

    if-ne p1, v1, :cond_3

    iget-boolean v1, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;->isSimSetting:Z

    if-nez v1, :cond_3

    move-object v1, p2

    .line 679
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {p0, v4, v1}, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;->setSIMStatus(IZ)V

    .line 680
    invoke-virtual {p1, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 681
    iget-object v1, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;->mSim2Pref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 682
    iput-boolean v5, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;->isSimSetting:Z

    .line 683
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;->isSimSettingEnable:Z

    .line 684
    iput v4, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;->simcard:I

    .line 693
    :cond_1
    :goto_1
    return v5

    .line 668
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_2
    iget-object v1, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;->mSim2Text:Landroid/preference/EditTextPreference;

    if-ne p1, v1, :cond_0

    move-object v0, p2

    .line 669
    check-cast v0, Ljava/lang/String;

    .line 670
    .restart local v0    # "D_value":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 671
    const-string v1, "DualSIM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSIM2_NAME "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    iget-object v1, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;->this$0:Lcom/sonymobile/settings/dsds/MultiSimSettings;

    invoke-virtual {v1, v0}, Lcom/sonymobile/settings/dsds/MultiSimSettings;->setSim2Name(Ljava/lang/String;)V

    .line 674
    iget-object v1, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;->this$0:Lcom/sonymobile/settings/dsds/MultiSimSettings;

    # invokes: Lcom/sonymobile/settings/dsds/MultiSimSettings;->updateNamingSummary()V
    invoke-static {v1}, Lcom/sonymobile/settings/dsds/MultiSimSettings;->access$800(Lcom/sonymobile/settings/dsds/MultiSimSettings;)V

    .line 675
    invoke-virtual {p0}, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;->onUpdate()V

    goto :goto_0

    .line 685
    .end local v0    # "D_value":Ljava/lang/String;
    :cond_3
    iget-object v1, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;->mSim2Pref:Landroid/preference/CheckBoxPreference;

    if-ne p1, v1, :cond_1

    iget-boolean v1, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;->isSimSetting:Z

    if-nez v1, :cond_1

    move-object v1, p2

    .line 686
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {p0, v5, v1}, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;->setSIMStatus(IZ)V

    .line 687
    invoke-virtual {p1, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 688
    iget-object v1, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;->mSim1Pref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 689
    iput-boolean v5, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;->isSimSetting:Z

    .line 690
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;->isSimSettingEnable:Z

    .line 691
    iput v5, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;->simcard:I

    goto :goto_1
.end method

.method abstract onUpdate()V
.end method

.method public pause()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 537
    iget-object v0, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;->mSim1Pref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 538
    iget-object v0, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;->mSim2Pref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 539
    iget-object v0, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;->mSim1Text:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 540
    iget-object v0, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;->mSim2Text:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 541
    iget-object v0, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->unregisterIntent()V

    .line 543
    iget-object v0, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 544
    iget-object v0, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 545
    iget-object v0, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 547
    iget-object v0, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;->mSubscriptionManager:Lcom/codeaurora/telephony/msim/SubscriptionManager;

    iget-object v1, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/codeaurora/telephony/msim/SubscriptionManager;->unRegisterForSetSubscriptionCompleted(Landroid/os/Handler;)V

    .line 548
    iget-object v0, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 549
    iget-object v0, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 550
    iget-object v0, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 552
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 524
    iget-object v0, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;->mSim1Pref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 525
    iget-object v0, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;->mSim2Pref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 526
    iget-object v0, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;->mSim1Text:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 527
    iget-object v0, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;->mSim2Text:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 528
    iget-object v0, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->registerIntent()V

    .line 529
    iget-object v0, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;->mSubscriptionManager:Lcom/codeaurora/telephony/msim/SubscriptionManager;

    iget-object v1, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/codeaurora/telephony/msim/SubscriptionManager;->registerForSetSubscriptionCompleted(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 531
    iget-object v0, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 534
    return-void
.end method
