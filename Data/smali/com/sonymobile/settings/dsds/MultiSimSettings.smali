.class public Lcom/sonymobile/settings/dsds/MultiSimSettings;
.super Landroid/preference/PreferenceActivity;
.source "MultiSimSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;
    }
.end annotation


# static fields
.field private static subData:Lcom/codeaurora/telephony/msim/SubscriptionData;


# instance fields
.field private callForwardProxy:Lcom/android/settings/simmanager/MSimCallForwardingManager;

.field private mDataConnectionPref:Landroid/preference/Preference;

.field private mHandler:Landroid/os/Handler;

.field private mSelectCardNames:[Ljava/lang/String;

.field private mSim1Name:Landroid/preference/EditTextPreference;

.field private mSim2Name:Landroid/preference/EditTextPreference;

.field private mSimCard1Pref:Landroid/preference/CheckBoxPreference;

.field private mSimCard2Pref:Landroid/preference/CheckBoxPreference;

.field private mSimSetCallBack:Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 66
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings;->mSelectCardNames:[Ljava/lang/String;

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings;->callForwardProxy:Lcom/android/settings/simmanager/MSimCallForwardingManager;

    .line 86
    new-instance v0, Lcom/sonymobile/settings/dsds/MultiSimSettings$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/settings/dsds/MultiSimSettings$1;-><init>(Lcom/sonymobile/settings/dsds/MultiSimSettings;)V

    iput-object v0, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings;->mHandler:Landroid/os/Handler;

    .line 373
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/settings/dsds/MultiSimSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/settings/dsds/MultiSimSettings;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/sonymobile/settings/dsds/MultiSimSettings;->updateDataSummary()V

    return-void
.end method

.method static synthetic access$200(Lcom/sonymobile/settings/dsds/MultiSimSettings;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/settings/dsds/MultiSimSettings;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sonymobile/settings/dsds/MultiSimSettings;)Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/settings/dsds/MultiSimSettings;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings;->mSimSetCallBack:Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;

    return-object v0
.end method

.method static synthetic access$600()Lcom/codeaurora/telephony/msim/SubscriptionData;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/sonymobile/settings/dsds/MultiSimSettings;->subData:Lcom/codeaurora/telephony/msim/SubscriptionData;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sonymobile/settings/dsds/MultiSimSettings;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/settings/dsds/MultiSimSettings;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/sonymobile/settings/dsds/MultiSimSettings;->getDataConnectionID()I

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/sonymobile/settings/dsds/MultiSimSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/settings/dsds/MultiSimSettings;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/sonymobile/settings/dsds/MultiSimSettings;->updateNamingSummary()V

    return-void
.end method

.method private getDataConnectionID()I
    .locals 1

    .prologue
    .line 318
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/MSimTelephonyManager;->getPreferredDataSubscription()I

    move-result v0

    return v0
.end method

.method private getSimNumberBySub(I)Ljava/lang/String;
    .locals 1
    .param p1, "sub"    # I

    .prologue
    .line 322
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telephony/MSimTelephonyManager;->getLine1Number(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private selectPreferedConnection()V
    .locals 4

    .prologue
    .line 335
    invoke-direct {p0}, Lcom/sonymobile/settings/dsds/MultiSimSettings;->getDataConnectionID()I

    move-result v0

    .line 337
    .local v0, "preDataConnectionID":I
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0707b7

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings;->mSelectCardNames:[Ljava/lang/String;

    new-instance v3, Lcom/sonymobile/settings/dsds/MultiSimSettings$3;

    invoke-direct {v3, p0, v0}, Lcom/sonymobile/settings/dsds/MultiSimSettings$3;-><init>(Lcom/sonymobile/settings/dsds/MultiSimSettings;I)V

    invoke-virtual {v1, v2, v0, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 371
    return-void
.end method

.method private updateDataSummary()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 104
    iget-object v2, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings;->mDataConnectionPref:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings;->mSimSetCallBack:Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;

    invoke-virtual {v3, v1}, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;->isSIMStatusOn(I)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings;->mSimSetCallBack:Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;

    invoke-virtual {v3, v0}, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;->isSIMStatusOn(I)Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 106
    iget-object v0, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings;->mDataConnectionPref:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings;->mSelectCardNames:[Ljava/lang/String;

    invoke-direct {p0}, Lcom/sonymobile/settings/dsds/MultiSimSettings;->getDataConnectionID()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 107
    return-void

    :cond_0
    move v0, v1

    .line 104
    goto :goto_0
.end method

.method private updateNamingEnable()V
    .locals 3

    .prologue
    .line 285
    iget-object v0, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings;->mSim1Name:Landroid/preference/EditTextPreference;

    iget-object v1, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings;->mSimSetCallBack:Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;->isSIMStatusOn(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    .line 286
    iget-object v0, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings;->mSim2Name:Landroid/preference/EditTextPreference;

    iget-object v1, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings;->mSimSetCallBack:Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;->isSIMStatusOn(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    .line 287
    return-void
.end method

.method private updateNamingSummary()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 251
    invoke-virtual {p0}, Lcom/sonymobile/settings/dsds/MultiSimSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0707b4

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 253
    .local v2, "simNameTextStr":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sonymobile/settings/dsds/MultiSimSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0707ab

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 255
    .local v3, "tapToNameStr":Ljava/lang/String;
    new-array v6, v10, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/sonymobile/settings/dsds/MultiSimSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0700b0

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 257
    .local v4, "tapToSim1Name":Ljava/lang/String;
    new-array v6, v10, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/sonymobile/settings/dsds/MultiSimSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0700b2

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 260
    .local v5, "tapToSim2Name":Ljava/lang/String;
    invoke-static {p0, v9}, Lcom/sonymobile/settings/dsds/SimManager;->getSimCardName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 261
    .local v0, "sim1Naming":Ljava/lang/String;
    invoke-static {p0, v10}, Lcom/sonymobile/settings/dsds/SimManager;->getSimCardName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 263
    .local v1, "sim2Naming":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 264
    iget-object v6, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings;->mSim1Name:Landroid/preference/EditTextPreference;

    new-array v7, v10, [Ljava/lang/Object;

    aput-object v0, v7, v9

    invoke-static {v2, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 268
    :goto_0
    if-eqz v1, :cond_1

    .line 269
    iget-object v6, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings;->mSim2Name:Landroid/preference/EditTextPreference;

    new-array v7, v10, [Ljava/lang/Object;

    aput-object v1, v7, v9

    invoke-static {v2, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 274
    :goto_1
    iget-object v6, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings;->mSim1Name:Landroid/preference/EditTextPreference;

    iget-object v7, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings;->mSim1Name:Landroid/preference/EditTextPreference;

    invoke-virtual {v7}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_2

    .end local v4    # "tapToSim1Name":Ljava/lang/String;
    :goto_2
    invoke-virtual {v6, v4}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 275
    iget-object v6, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings;->mSim2Name:Landroid/preference/EditTextPreference;

    iget-object v7, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings;->mSim2Name:Landroid/preference/EditTextPreference;

    invoke-virtual {v7}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_3

    .end local v5    # "tapToSim2Name":Ljava/lang/String;
    :goto_3
    invoke-virtual {v6, v5}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 276
    return-void

    .line 266
    .restart local v4    # "tapToSim1Name":Ljava/lang/String;
    .restart local v5    # "tapToSim2Name":Ljava/lang/String;
    :cond_0
    iget-object v6, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings;->mSim1Name:Landroid/preference/EditTextPreference;

    const-string v7, ""

    invoke-virtual {v6, v7}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 271
    :cond_1
    iget-object v6, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings;->mSim2Name:Landroid/preference/EditTextPreference;

    const-string v7, ""

    invoke-virtual {v6, v7}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    goto :goto_1

    .line 274
    :cond_2
    iget-object v7, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings;->mSim1Name:Landroid/preference/EditTextPreference;

    invoke-virtual {v7}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 275
    .end local v4    # "tapToSim1Name":Ljava/lang/String;
    :cond_3
    iget-object v7, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings;->mSim2Name:Landroid/preference/EditTextPreference;

    invoke-virtual {v7}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    goto :goto_3
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v11, 0xc

    const/4 v10, 0x4

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 111
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 112
    const-string v0, "DualSIM"

    const-string v1, "2222222222222222222222222222222222"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    const v0, 0x7f05003e

    invoke-virtual {p0, v0}, Lcom/sonymobile/settings/dsds/MultiSimSettings;->addPreferencesFromResource(I)V

    .line 114
    const-string v0, "sim1_name"

    invoke-virtual {p0, v0}, Lcom/sonymobile/settings/dsds/MultiSimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings;->mSim1Name:Landroid/preference/EditTextPreference;

    .line 115
    const-string v0, "sim2_name"

    invoke-virtual {p0, v0}, Lcom/sonymobile/settings/dsds/MultiSimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings;->mSim2Name:Landroid/preference/EditTextPreference;

    .line 117
    iget-object v0, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings;->mSelectCardNames:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sonymobile/settings/dsds/MultiSimSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0700b0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v8

    .line 118
    iget-object v0, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings;->mSelectCardNames:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sonymobile/settings/dsds/MultiSimSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0700b2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v9

    .line 119
    const-string v0, "simcard1"

    invoke-virtual {p0, v0}, Lcom/sonymobile/settings/dsds/MultiSimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings;->mSimCard1Pref:Landroid/preference/CheckBoxPreference;

    .line 120
    const-string v0, "simcard2"

    invoke-virtual {p0, v0}, Lcom/sonymobile/settings/dsds/MultiSimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings;->mSimCard2Pref:Landroid/preference/CheckBoxPreference;

    .line 121
    const-string v0, "data_connection"

    invoke-virtual {p0, v0}, Lcom/sonymobile/settings/dsds/MultiSimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings;->mDataConnectionPref:Landroid/preference/Preference;

    .line 122
    new-instance v0, Lcom/codeaurora/telephony/msim/SubscriptionData;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/codeaurora/telephony/msim/SubscriptionData;-><init>(I)V

    sput-object v0, Lcom/sonymobile/settings/dsds/MultiSimSettings;->subData:Lcom/codeaurora/telephony/msim/SubscriptionData;

    .line 123
    new-instance v0, Lcom/sonymobile/settings/dsds/MultiSimSettings$2;

    iget-object v3, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings;->mSimCard1Pref:Landroid/preference/CheckBoxPreference;

    iget-object v4, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings;->mSimCard2Pref:Landroid/preference/CheckBoxPreference;

    iget-object v5, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings;->mSim1Name:Landroid/preference/EditTextPreference;

    iget-object v6, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings;->mSim2Name:Landroid/preference/EditTextPreference;

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/sonymobile/settings/dsds/MultiSimSettings$2;-><init>(Lcom/sonymobile/settings/dsds/MultiSimSettings;Landroid/content/Context;Landroid/preference/CheckBoxPreference;Landroid/preference/CheckBoxPreference;Landroid/preference/EditTextPreference;Landroid/preference/EditTextPreference;)V

    iput-object v0, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings;->mSimSetCallBack:Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;

    .line 129
    invoke-virtual {p0}, Lcom/sonymobile/settings/dsds/MultiSimSettings;->saveSubState()V

    .line 131
    iget-object v0, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings;->mSim1Name:Landroid/preference/EditTextPreference;

    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    new-array v1, v9, [Landroid/text/InputFilter;

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v2, v11}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v1, v8

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 134
    iget-object v0, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings;->mSim2Name:Landroid/preference/EditTextPreference;

    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    new-array v1, v9, [Landroid/text/InputFilter;

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v2, v11}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v1, v8

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 138
    iget-object v0, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings;->mSimSetCallBack:Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;

    invoke-virtual {v0}, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;->resume()V

    .line 139
    invoke-virtual {p0}, Lcom/sonymobile/settings/dsds/MultiSimSettings;->updateUI()V

    .line 140
    invoke-direct {p0}, Lcom/sonymobile/settings/dsds/MultiSimSettings;->updateNamingSummary()V

    .line 141
    invoke-direct {p0}, Lcom/sonymobile/settings/dsds/MultiSimSettings;->updateNamingEnable()V

    .line 143
    invoke-virtual {p0}, Lcom/sonymobile/settings/dsds/MultiSimSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    .line 144
    .local v7, "actionBar":Landroid/app/ActionBar;
    invoke-virtual {v7, v10, v10}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 146
    invoke-static {p0}, Lcom/android/settings/simmanager/MSimCallForwardingManager;->makeProxy(Landroid/preference/PreferenceActivity;)Lcom/android/settings/simmanager/MSimCallForwardingManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings;->callForwardProxy:Lcom/android/settings/simmanager/MSimCallForwardingManager;

    .line 147
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 175
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 176
    iget-object v0, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings;->mSimSetCallBack:Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;

    invoke-virtual {v0}, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;->pause()V

    .line 178
    iget-object v0, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings;->callForwardProxy:Lcom/android/settings/simmanager/MSimCallForwardingManager;

    invoke-virtual {v0}, Lcom/android/settings/simmanager/MSimCallForwardingManager;->destroy()V

    .line 179
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 151
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 158
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 153
    :pswitch_0
    invoke-virtual {p0}, Lcom/sonymobile/settings/dsds/MultiSimSettings;->finish()V

    .line 154
    const/4 v0, 0x1

    goto :goto_0

    .line 151
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 163
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 165
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 327
    iget-object v0, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings;->mDataConnectionPref:Landroid/preference/Preference;

    if-ne p2, v0, :cond_0

    .line 328
    invoke-direct {p0}, Lcom/sonymobile/settings/dsds/MultiSimSettings;->selectPreferedConnection()V

    .line 330
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings;->callForwardProxy:Lcom/android/settings/simmanager/MSimCallForwardingManager;

    invoke-virtual {v0}, Lcom/android/settings/simmanager/MSimCallForwardingManager;->resume()V

    .line 170
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 172
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .param p1, "hasFocus"    # Z

    .prologue
    .line 725
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onWindowFocusChanged(Z)V

    .line 726
    if-eqz p1, :cond_1

    .line 728
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings;->mSimSetCallBack:Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;

    iget v1, v1, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;->simcard:I

    invoke-virtual {v0, v1}, Landroid/telephony/MSimTelephonyManager;->getSimState(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 729
    iget-object v0, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings;->mSimSetCallBack:Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;->isSimSetting:Z

    .line 732
    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/settings/dsds/MultiSimSettings;->updateUI()V

    .line 734
    :cond_1
    return-void
.end method

.method public saveSubState()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 300
    invoke-static {}, Lcom/codeaurora/telephony/msim/CardSubscriptionManager;->getInstance()Lcom/codeaurora/telephony/msim/CardSubscriptionManager;

    move-result-object v1

    .line 301
    .local v1, "mCardSubscriptionManager":Lcom/codeaurora/telephony/msim/CardSubscriptionManager;
    const/4 v2, 0x0

    .local v2, "subIndex":I
    :goto_0
    const/4 v3, 0x2

    if-ge v2, v3, :cond_3

    .line 302
    invoke-virtual {v1, v2}, Lcom/codeaurora/telephony/msim/CardSubscriptionManager;->getCardSubscriptions(I)Lcom/codeaurora/telephony/msim/SubscriptionData;

    move-result-object v0

    .line 303
    .local v0, "cardSubInfo":Lcom/codeaurora/telephony/msim/SubscriptionData;
    if-eqz v0, :cond_0

    iget-object v3, v0, Lcom/codeaurora/telephony/msim/SubscriptionData;->subscription:[Lcom/codeaurora/telephony/msim/Subscription;

    array-length v3, v3

    if-nez v3, :cond_1

    .line 301
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 305
    :cond_1
    iget-object v3, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings;->mSimSetCallBack:Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;

    invoke-virtual {v3, v2}, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;->isSIMStatusOn(I)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 306
    sget-object v3, Lcom/sonymobile/settings/dsds/MultiSimSettings;->subData:Lcom/codeaurora/telephony/msim/SubscriptionData;

    iget-object v3, v3, Lcom/codeaurora/telephony/msim/SubscriptionData;->subscription:[Lcom/codeaurora/telephony/msim/Subscription;

    aget-object v3, v3, v2

    iget-object v4, v0, Lcom/codeaurora/telephony/msim/SubscriptionData;->subscription:[Lcom/codeaurora/telephony/msim/Subscription;

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Lcom/codeaurora/telephony/msim/Subscription;->copyFrom(Lcom/codeaurora/telephony/msim/Subscription;)Lcom/codeaurora/telephony/msim/Subscription;

    .line 307
    sget-object v3, Lcom/sonymobile/settings/dsds/MultiSimSettings;->subData:Lcom/codeaurora/telephony/msim/SubscriptionData;

    iget-object v3, v3, Lcom/codeaurora/telephony/msim/SubscriptionData;->subscription:[Lcom/codeaurora/telephony/msim/Subscription;

    aget-object v3, v3, v2

    sget-object v4, Lcom/codeaurora/telephony/msim/Subscription$SubscriptionStatus;->SUB_ACTIVATE:Lcom/codeaurora/telephony/msim/Subscription$SubscriptionStatus;

    iput-object v4, v3, Lcom/codeaurora/telephony/msim/Subscription;->subStatus:Lcom/codeaurora/telephony/msim/Subscription$SubscriptionStatus;

    .line 313
    :goto_2
    sget-object v3, Lcom/sonymobile/settings/dsds/MultiSimSettings;->subData:Lcom/codeaurora/telephony/msim/SubscriptionData;

    iget-object v3, v3, Lcom/codeaurora/telephony/msim/SubscriptionData;->subscription:[Lcom/codeaurora/telephony/msim/Subscription;

    aget-object v3, v3, v2

    iput v2, v3, Lcom/codeaurora/telephony/msim/Subscription;->subId:I

    goto :goto_1

    .line 309
    :cond_2
    sget-object v3, Lcom/sonymobile/settings/dsds/MultiSimSettings;->subData:Lcom/codeaurora/telephony/msim/SubscriptionData;

    iget-object v3, v3, Lcom/codeaurora/telephony/msim/SubscriptionData;->subscription:[Lcom/codeaurora/telephony/msim/Subscription;

    aget-object v3, v3, v2

    iget-object v4, v0, Lcom/codeaurora/telephony/msim/SubscriptionData;->subscription:[Lcom/codeaurora/telephony/msim/Subscription;

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Lcom/codeaurora/telephony/msim/Subscription;->copyFrom(Lcom/codeaurora/telephony/msim/Subscription;)Lcom/codeaurora/telephony/msim/Subscription;

    .line 310
    sget-object v3, Lcom/sonymobile/settings/dsds/MultiSimSettings;->subData:Lcom/codeaurora/telephony/msim/SubscriptionData;

    iget-object v3, v3, Lcom/codeaurora/telephony/msim/SubscriptionData;->subscription:[Lcom/codeaurora/telephony/msim/Subscription;

    aget-object v3, v3, v2

    sget-object v4, Lcom/codeaurora/telephony/msim/Subscription$SubscriptionStatus;->SUB_DEACTIVATE:Lcom/codeaurora/telephony/msim/Subscription$SubscriptionStatus;

    iput-object v4, v3, Lcom/codeaurora/telephony/msim/Subscription;->subStatus:Lcom/codeaurora/telephony/msim/Subscription$SubscriptionStatus;

    .line 311
    sget-object v3, Lcom/sonymobile/settings/dsds/MultiSimSettings;->subData:Lcom/codeaurora/telephony/msim/SubscriptionData;

    iget-object v3, v3, Lcom/codeaurora/telephony/msim/SubscriptionData;->subscription:[Lcom/codeaurora/telephony/msim/Subscription;

    aget-object v3, v3, v2

    iput v2, v3, Lcom/codeaurora/telephony/msim/Subscription;->slotId:I

    goto :goto_2

    .line 315
    .end local v0    # "cardSubInfo":Lcom/codeaurora/telephony/msim/SubscriptionData;
    :cond_3
    return-void
.end method

.method public setSim1Name(Ljava/lang/String;)V
    .locals 3
    .param p1, "sim1"    # Ljava/lang/String;

    .prologue
    .line 290
    const-string v0, "DualSIM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSim1Name ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    invoke-static {p0, p1}, Lcom/sonymobile/settings/dsds/SimManager;->setSim1Name(Landroid/content/Context;Ljava/lang/String;)V

    .line 292
    return-void
.end method

.method public setSim2Name(Ljava/lang/String;)V
    .locals 0
    .param p1, "sim2"    # Ljava/lang/String;

    .prologue
    .line 295
    invoke-static {p0, p1}, Lcom/sonymobile/settings/dsds/SimManager;->setSim2Name(Landroid/content/Context;Ljava/lang/String;)V

    .line 296
    return-void
.end method

.method public updateUI()V
    .locals 11

    .prologue
    const v10, 0x7f0700b2

    const v9, 0x7f0700b0

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 182
    invoke-virtual {p0}, Lcom/sonymobile/settings/dsds/MultiSimSettings;->isFinishing()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lcom/sonymobile/settings/dsds/MultiSimSettings;->isDestroyed()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 183
    :cond_0
    const-string v4, "DualSIM"

    const-string v5, "activity is not in forground, not update..."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    :goto_0
    return-void

    .line 186
    :cond_1
    const/4 v1, 0x0

    .line 187
    .local v1, "sim1Naming":Ljava/lang/String;
    const/4 v3, 0x0

    .line 189
    .local v3, "sim2Naming":Ljava/lang/String;
    iget-object v7, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings;->mSimCard1Pref:Landroid/preference/CheckBoxPreference;

    iget-object v4, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings;->mSimSetCallBack:Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;

    invoke-virtual {v4}, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;->isAirplaneModeOn()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings;->mSimSetCallBack:Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;

    iget-boolean v4, v4, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;->isSimSetting:Z

    if-nez v4, :cond_2

    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/telephony/MSimTelephonyManager;->hasIccCard(I)Z

    move-result v4

    if-eqz v4, :cond_2

    move v4, v5

    :goto_1
    invoke-virtual {v7, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 191
    iget-object v4, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings;->mSimCard1Pref:Landroid/preference/CheckBoxPreference;

    iget-object v7, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings;->mSimSetCallBack:Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;

    # invokes: Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;->isSimCardPowerOn(I)Z
    invoke-static {v7, v6}, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;->access$100(Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;I)Z

    move-result v7

    invoke-virtual {v4, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 192
    iget-object v4, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings;->mSim1Name:Landroid/preference/EditTextPreference;

    iget-object v7, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings;->mSimSetCallBack:Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;

    # invokes: Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;->isSimCardPowerOn(I)Z
    invoke-static {v7, v6}, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;->access$100(Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;I)Z

    move-result v7

    invoke-virtual {v4, v7}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    .line 195
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/telephony/MSimTelephonyManager;->hasIccCard(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 196
    invoke-direct {p0, v6}, Lcom/sonymobile/settings/dsds/MultiSimSettings;->getSimNumberBySub(I)Ljava/lang/String;

    move-result-object v1

    .line 197
    if-eqz v1, :cond_3

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 198
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "("

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ")"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 199
    iget-object v4, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings;->mSimCard1Pref:Landroid/preference/CheckBoxPreference;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sonymobile/settings/dsds/MultiSimSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 208
    :goto_2
    invoke-static {p0, v6}, Lcom/sonymobile/settings/dsds/SimManager;->getSimCardName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 209
    .local v0, "sim1Name":Ljava/lang/String;
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_5

    .line 210
    iget-object v4, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings;->mSelectCardNames:[Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sonymobile/settings/dsds/MultiSimSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    .line 216
    :goto_3
    iget-object v7, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings;->mSimCard2Pref:Landroid/preference/CheckBoxPreference;

    iget-object v4, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings;->mSimSetCallBack:Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;

    invoke-virtual {v4}, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;->isAirplaneModeOn()Z

    move-result v4

    if-nez v4, :cond_6

    iget-object v4, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings;->mSimSetCallBack:Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;

    iget-boolean v4, v4, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;->isSimSetting:Z

    if-nez v4, :cond_6

    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/telephony/MSimTelephonyManager;->hasIccCard(I)Z

    move-result v4

    if-eqz v4, :cond_6

    move v4, v5

    :goto_4
    invoke-virtual {v7, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 218
    iget-object v4, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings;->mSimCard2Pref:Landroid/preference/CheckBoxPreference;

    iget-object v7, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings;->mSimSetCallBack:Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;

    # invokes: Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;->isSimCardPowerOn(I)Z
    invoke-static {v7, v5}, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;->access$100(Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;I)Z

    move-result v7

    invoke-virtual {v4, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 219
    iget-object v4, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings;->mSim2Name:Landroid/preference/EditTextPreference;

    iget-object v7, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings;->mSimSetCallBack:Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;

    # invokes: Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;->isSimCardPowerOn(I)Z
    invoke-static {v7, v5}, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;->access$100(Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;I)Z

    move-result v7

    invoke-virtual {v4, v7}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    .line 222
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/telephony/MSimTelephonyManager;->hasIccCard(I)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 223
    invoke-direct {p0, v5}, Lcom/sonymobile/settings/dsds/MultiSimSettings;->getSimNumberBySub(I)Ljava/lang/String;

    move-result-object v3

    .line 224
    if-eqz v3, :cond_7

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 225
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "("

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ")"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 226
    iget-object v4, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings;->mSimCard2Pref:Landroid/preference/CheckBoxPreference;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sonymobile/settings/dsds/MultiSimSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 235
    :goto_5
    invoke-static {p0, v5}, Lcom/sonymobile/settings/dsds/SimManager;->getSimCardName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    .line 236
    .local v2, "sim2Name":Ljava/lang/String;
    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_9

    .line 237
    iget-object v4, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings;->mSelectCardNames:[Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sonymobile/settings/dsds/MultiSimSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    .line 245
    :goto_6
    iget-object v4, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings;->mDataConnectionPref:Landroid/preference/Preference;

    iget-object v7, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings;->mSimSetCallBack:Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;

    invoke-virtual {v7, v6}, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;->isSIMStatusOn(I)Z

    move-result v7

    if-eqz v7, :cond_a

    iget-object v7, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings;->mSimSetCallBack:Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;

    invoke-virtual {v7, v5}, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;->isSIMStatusOn(I)Z

    move-result v7

    if-eqz v7, :cond_a

    :goto_7
    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 247
    iget-object v4, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings;->mDataConnectionPref:Landroid/preference/Preference;

    iget-object v5, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings;->mSelectCardNames:[Ljava/lang/String;

    invoke-direct {p0}, Lcom/sonymobile/settings/dsds/MultiSimSettings;->getDataConnectionID()I

    move-result v6

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .end local v0    # "sim1Name":Ljava/lang/String;
    .end local v2    # "sim2Name":Ljava/lang/String;
    :cond_2
    move v4, v6

    .line 189
    goto/16 :goto_1

    .line 201
    :cond_3
    iget-object v4, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings;->mSimCard1Pref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/sonymobile/settings/dsds/MultiSimSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 204
    :cond_4
    iget-object v4, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings;->mSimCard1Pref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/sonymobile/settings/dsds/MultiSimSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 213
    .restart local v0    # "sim1Name":Ljava/lang/String;
    :cond_5
    iget-object v4, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings;->mSelectCardNames:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sonymobile/settings/dsds/MultiSimSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    goto/16 :goto_3

    :cond_6
    move v4, v6

    .line 216
    goto/16 :goto_4

    .line 228
    :cond_7
    iget-object v4, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings;->mSimCard2Pref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/sonymobile/settings/dsds/MultiSimSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 231
    :cond_8
    iget-object v4, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings;->mSimCard2Pref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/sonymobile/settings/dsds/MultiSimSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 240
    .restart local v2    # "sim2Name":Ljava/lang/String;
    :cond_9
    iget-object v4, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings;->mSelectCardNames:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sonymobile/settings/dsds/MultiSimSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    goto :goto_6

    :cond_a
    move v5, v6

    .line 245
    goto :goto_7
.end method
