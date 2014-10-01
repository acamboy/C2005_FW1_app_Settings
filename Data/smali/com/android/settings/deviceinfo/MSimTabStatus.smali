.class public Lcom/android/settings/deviceinfo/MSimTabStatus;
.super Landroid/app/ActivityGroup;
.source "MSimTabStatus.java"


# static fields
.field public static TAB_GENERAL:Ljava/lang/String;


# instance fields
.field private mTabHost:Landroid/widget/TabHost;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/app/ActivityGroup;-><init>()V

    return-void
.end method

.method private initTabs()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 35
    const/high16 v0, 0x7f070000

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/MSimTabStatus;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/deviceinfo/MSimTabStatus;->TAB_GENERAL:Ljava/lang/String;

    .line 36
    const v0, 0x7f090173

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/MSimTabStatus;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TabHost;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/MSimTabStatus;->mTabHost:Landroid/widget/TabHost;

    .line 37
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MSimTabStatus;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/MSimTabStatus;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setup(Landroid/app/LocalActivityManager;)V

    .line 39
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MSimTabStatus;->mTabHost:Landroid/widget/TabHost;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/MSimTabStatus;->mTabHost:Landroid/widget/TabHost;

    const-string v2, "SIM1"

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    const-string v2, "SIM1"

    invoke-virtual {v1, v2, v5}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "android.intent.action.MAIN"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "subscription"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 43
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MSimTabStatus;->mTabHost:Landroid/widget/TabHost;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/MSimTabStatus;->mTabHost:Landroid/widget/TabHost;

    const-string v2, "SIM2"

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    const-string v2, "SIM2"

    invoke-virtual {v1, v2, v5}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;

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

    .line 47
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MSimTabStatus;->mTabHost:Landroid/widget/TabHost;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/MSimTabStatus;->mTabHost:Landroid/widget/TabHost;

    sget-object v2, Lcom/android/settings/deviceinfo/MSimTabStatus;->TAB_GENERAL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    sget-object v2, Lcom/android/settings/deviceinfo/MSimTabStatus;->TAB_GENERAL:Ljava/lang/String;

    invoke-virtual {v1, v2, v5}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/android/settings/deviceinfo/MSimStatus;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 51
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MSimTabStatus;->mTabHost:Landroid/widget/TabHost;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 53
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 23
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onCreate(Landroid/os/Bundle;)V

    .line 25
    const v1, 0x7f040092

    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/MSimTabStatus;->setContentView(I)V

    .line 26
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/MSimTabStatus;->initTabs()V

    .line 28
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/MSimTabStatus;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 29
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 30
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 32
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 57
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 64
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 59
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/MSimTabStatus;->finish()V

    .line 60
    const/4 v0, 0x1

    goto :goto_0

    .line 57
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
