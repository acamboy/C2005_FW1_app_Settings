.class public Lcom/android/settings/MSimTabIccLockSettings;
.super Landroid/app/ActivityGroup;
.source "MSimTabIccLockSettings.java"


# instance fields
.field private mSubManager:Lcom/codeaurora/telephony/msim/SubscriptionManager;

.field private mTabHost:Landroid/widget/TabHost;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/ActivityGroup;-><init>()V

    return-void
.end method

.method private grayOutTab(I)V
    .locals 4
    .param p1, "sub"    # I

    .prologue
    const/4 v3, 0x0

    .line 75
    iget-object v2, p0, Lcom/android/settings/MSimTabIccLockSettings;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v2}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    .line 76
    .local v0, "tab":Landroid/view/View;
    const v2, 0x1020016

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 77
    .local v1, "tv":Landroid/widget/TextView;
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 78
    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 79
    invoke-virtual {v0, v3}, Landroid/view/View;->setClickable(Z)V

    .line 80
    return-void
.end method

.method private initTabs()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 42
    const v0, 0x7f090173

    invoke-virtual {p0, v0}, Lcom/android/settings/MSimTabIccLockSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TabHost;

    iput-object v0, p0, Lcom/android/settings/MSimTabIccLockSettings;->mTabHost:Landroid/widget/TabHost;

    .line 43
    iget-object v0, p0, Lcom/android/settings/MSimTabIccLockSettings;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {p0}, Lcom/android/settings/MSimTabIccLockSettings;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setup(Landroid/app/LocalActivityManager;)V

    .line 45
    iget-object v0, p0, Lcom/android/settings/MSimTabIccLockSettings;->mTabHost:Landroid/widget/TabHost;

    iget-object v1, p0, Lcom/android/settings/MSimTabIccLockSettings;->mTabHost:Landroid/widget/TabHost;

    const-string v2, "SIM1"

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    const-string v2, "SIM1"

    invoke-virtual {v1, v2, v4}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/android/settings/IccLockSettings;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "android.intent.action.MAIN"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "subscription"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 51
    iget-object v0, p0, Lcom/android/settings/MSimTabIccLockSettings;->mTabHost:Landroid/widget/TabHost;

    iget-object v1, p0, Lcom/android/settings/MSimTabIccLockSettings;->mTabHost:Landroid/widget/TabHost;

    const-string v2, "SIM2"

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    const-string v2, "SIM2"

    invoke-virtual {v1, v2, v4}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/android/settings/IccLockSettings;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "android.intent.action.MAIN"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "subscription"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 57
    iget-object v0, p0, Lcom/android/settings/MSimTabIccLockSettings;->mSubManager:Lcom/codeaurora/telephony/msim/SubscriptionManager;

    invoke-virtual {v0, v5}, Lcom/codeaurora/telephony/msim/SubscriptionManager;->isSubActive(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/android/settings/MSimTabIccLockSettings;->mTabHost:Landroid/widget/TabHost;

    const-string v1, "SIM2"

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 62
    :goto_0
    return-void

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/android/settings/MSimTabIccLockSettings;->mTabHost:Landroid/widget/TabHost;

    const-string v1, "SIM1"

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 30
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onCreate(Landroid/os/Bundle;)V

    .line 32
    const v1, 0x7f040092

    invoke-virtual {p0, v1}, Lcom/android/settings/MSimTabIccLockSettings;->setContentView(I)V

    .line 33
    invoke-static {}, Lcom/codeaurora/telephony/msim/SubscriptionManager;->getInstance()Lcom/codeaurora/telephony/msim/SubscriptionManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/MSimTabIccLockSettings;->mSubManager:Lcom/codeaurora/telephony/msim/SubscriptionManager;

    .line 34
    invoke-direct {p0}, Lcom/android/settings/MSimTabIccLockSettings;->initTabs()V

    .line 35
    invoke-virtual {p0}, Lcom/android/settings/MSimTabIccLockSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 36
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 37
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 39
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 84
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 91
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 86
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/MSimTabIccLockSettings;->finish()V

    .line 87
    const/4 v0, 0x1

    goto :goto_0

    .line 84
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 66
    invoke-super {p0}, Landroid/app/ActivityGroup;->onResume()V

    .line 67
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 68
    iget-object v1, p0, Lcom/android/settings/MSimTabIccLockSettings;->mSubManager:Lcom/codeaurora/telephony/msim/SubscriptionManager;

    invoke-virtual {v1, v0}, Lcom/codeaurora/telephony/msim/SubscriptionManager;->isSubActive(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 69
    invoke-direct {p0, v0}, Lcom/android/settings/MSimTabIccLockSettings;->grayOutTab(I)V

    .line 67
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 72
    :cond_1
    return-void
.end method
