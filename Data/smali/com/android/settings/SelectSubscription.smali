.class public Lcom/android/settings/SelectSubscription;
.super Landroid/app/TabActivity;
.source "SelectSubscription.java"


# instance fields
.field private subscriptionPref:Landroid/widget/TabHost$TabSpec;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/app/TabActivity;-><init>()V

    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 105
    const-string v0, "SelectSubscription"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x0

    .line 70
    invoke-super {p0, p1}, Landroid/app/TabActivity;->onCreate(Landroid/os/Bundle;)V

    .line 71
    const-string v9, "Creating activity"

    invoke-static {v9}, Lcom/android/settings/SelectSubscription;->log(Ljava/lang/String;)V

    .line 73
    const v9, 0x7f040075

    invoke-virtual {p0, v9}, Lcom/android/settings/SelectSubscription;->setContentView(I)V

    .line 74
    invoke-virtual {p0}, Lcom/android/settings/SelectSubscription;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f08005f

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 75
    .local v5, "tabLabel":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/SelectSubscription;->getTabHost()Landroid/widget/TabHost;

    move-result-object v4

    .line 77
    .local v4, "tabHost":Landroid/widget/TabHost;
    invoke-virtual {p0}, Lcom/android/settings/SelectSubscription;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 78
    .local v1, "intent":Landroid/content/Intent;
    const-string v9, "PACKAGE"

    invoke-virtual {v1, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 79
    .local v3, "pkg":Ljava/lang/String;
    const-string v9, "TARGET_CLASS"

    invoke-virtual {v1, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 80
    .local v6, "targetClass":Ljava/lang/String;
    const-string v9, "TITLE"

    invoke-virtual {v1, v9, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 81
    .local v7, "titleRes":I
    if-eqz v7, :cond_0

    invoke-virtual {p0, v7}, Lcom/android/settings/SelectSubscription;->setTitle(I)V

    .line 83
    :cond_0
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v2

    .line 85
    .local v2, "numPhones":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 86
    aget-object v9, v5, v0

    invoke-virtual {v4, v9}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/SelectSubscription;->subscriptionPref:Landroid/widget/TabHost$TabSpec;

    .line 87
    iget-object v9, p0, Lcom/android/settings/SelectSubscription;->subscriptionPref:Landroid/widget/TabHost$TabSpec;

    aget-object v10, v5, v0

    invoke-virtual {v9, v10}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    .line 88
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v9, v3, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v9

    const-string v10, "subscription"

    invoke-virtual {v9, v10, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    .line 90
    iget-object v9, p0, Lcom/android/settings/SelectSubscription;->subscriptionPref:Landroid/widget/TabHost$TabSpec;

    invoke-virtual {v9, v1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    .line 91
    invoke-static {}, Lcom/codeaurora/telephony/msim/SubscriptionManager;->getInstance()Lcom/codeaurora/telephony/msim/SubscriptionManager;

    move-result-object v9

    invoke-virtual {v9, v0}, Lcom/codeaurora/telephony/msim/SubscriptionManager;->isSubActive(I)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 92
    iget-object v9, p0, Lcom/android/settings/SelectSubscription;->subscriptionPref:Landroid/widget/TabHost$TabSpec;

    invoke-virtual {v4, v9}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 85
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 95
    :cond_2
    invoke-virtual {v4}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v9

    invoke-virtual {v4}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/TabWidget;->getChildCount()I

    move-result v10

    const/4 v11, 0x1

    if-le v10, v11, :cond_3

    :goto_1
    invoke-virtual {v9, v8}, Landroid/widget/TabWidget;->setVisibility(I)V

    .line 97
    return-void

    .line 95
    :cond_3
    const/16 v8, 0x8

    goto :goto_1
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 61
    invoke-super {p0}, Landroid/app/TabActivity;->onPause()V

    .line 62
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 101
    invoke-super {p0}, Landroid/app/TabActivity;->onResume()V

    .line 102
    return-void
.end method
