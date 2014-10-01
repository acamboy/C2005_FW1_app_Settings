.class public Lcom/sonymobile/settings/dsds/DeviceStatusTab;
.super Landroid/app/TabActivity;
.source "DeviceStatusTab.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/TabActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 22
    invoke-super {p0, p1}, Landroid/app/TabActivity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    const v7, 0x7f040075

    invoke-virtual {p0, v7}, Lcom/sonymobile/settings/dsds/DeviceStatusTab;->setContentView(I)V

    .line 25
    invoke-virtual {p0}, Lcom/sonymobile/settings/dsds/DeviceStatusTab;->getTabHost()Landroid/widget/TabHost;

    move-result-object v5

    .line 27
    .local v5, "tabHost":Landroid/widget/TabHost;
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v3

    .line 28
    .local v3, "numPhones":I
    const/4 v7, 0x3

    new-array v0, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "com.android.settings.deviceinfo.MSimSubscriptionStatus"

    aput-object v8, v0, v7

    const/4 v7, 0x1

    const-string v8, "com.android.settings.deviceinfo.MSimSubscriptionStatus"

    aput-object v8, v0, v7

    const/4 v7, 0x2

    const-string v8, "com.android.settings.deviceinfo.MSimStatus"

    aput-object v8, v0, v7

    .line 32
    .local v0, "className":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sonymobile/settings/dsds/DeviceStatusTab;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f080060

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .line 35
    .local v6, "tabLabel":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-gt v1, v3, :cond_1

    .line 36
    aget-object v7, v6, v1

    invoke-virtual {v5, v7}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    .line 37
    .local v4, "subscriptionPref":Landroid/widget/TabHost$TabSpec;
    aget-object v7, v6, v1

    invoke-virtual {v4, v7}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    .line 38
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    const-string v8, "com.android.settings"

    aget-object v9, v0, v1

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 39
    .local v2, "intent":Landroid/content/Intent;
    if-ge v1, v3, :cond_0

    .line 40
    const-string v7, "subscription"

    invoke-virtual {v2, v7, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 42
    :cond_0
    invoke-virtual {v4, v2}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    .line 43
    invoke-virtual {v5, v4}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 35
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 45
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v4    # "subscriptionPref":Landroid/widget/TabHost$TabSpec;
    :cond_1
    return-void
.end method
