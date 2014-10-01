.class public Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;
.super Landroid/preference/PreferenceFragment;
.source "PowerSaverSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings$PowersaveEnableObserver;
    }
.end annotation


# instance fields
.field private mActivation:Landroid/view/View;

.field private mAdapter:Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter;

.field private mBatteryThresholdHelper:Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;

.field private mBatteryThresholdProvider:Lcom/sonymobile/settings/stamina/BatteryThresholdHelper$DataProvider;

.field private mBrightnessDialog:Lcom/sonymobile/settings/stamina/powersaver/BrightnessDialog;

.field private mEnabledSwitch:Landroid/widget/Switch;

.field private mListView:Landroid/widget/ListView;

.field private mListViewListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mPowerSaverEnableListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mPowersaveEnableObserver:Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings$PowersaveEnableObserver;

.field private mTimeoutDialog:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 74
    new-instance v0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings$1;-><init>(Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;)V

    iput-object v0, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mListViewListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 114
    new-instance v0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings$2;

    invoke-direct {v0, p0}, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings$2;-><init>(Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;)V

    iput-object v0, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mPowerSaverEnableListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 121
    new-instance v0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings$3;

    invoke-direct {v0, p0}, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings$3;-><init>(Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;)V

    iput-object v0, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mBatteryThresholdProvider:Lcom/sonymobile/settings/stamina/BatteryThresholdHelper$DataProvider;

    .line 57
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;)Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mAdapter:Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mActivation:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->onActivationClicked()V

    return-void
.end method

.method static synthetic access$300(Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;)Lcom/sonymobile/settings/stamina/powersaver/BrightnessDialog;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mBrightnessDialog:Lcom/sonymobile/settings/stamina/powersaver/BrightnessDialog;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;
    .param p1, "x1"    # Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->showTimeoutDialog(Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;)V

    return-void
.end method

.method static synthetic access$500(Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;)Landroid/widget/Switch;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mEnabledSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->setUiEnabled(Z)V

    return-void
.end method

.method private find([II)I
    .locals 2
    .param p1, "values"    # [I
    .param p2, "value"    # I

    .prologue
    .line 305
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 306
    aget v1, p1, v0

    if-ne v1, p2, :cond_0

    .line 310
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 305
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 310
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private getCurrentTimeout()I
    .locals 3

    .prologue
    .line 336
    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_off_timeout"

    const/16 v2, 0xbb8

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private onActivationClicked()V
    .locals 2

    .prologue
    .line 264
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mBatteryThresholdHelper:Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;->show(Landroid/os/Bundle;)V

    .line 265
    return-void
.end method

.method private removeNonSavingTimeoutEntries(Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;[I[Ljava/lang/CharSequence;)[Ljava/lang/CharSequence;
    .locals 5
    .param p1, "timeoutFeature"    # Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;
    .param p2, "timeoutValues"    # [I
    .param p3, "timeoutEntries"    # [Ljava/lang/CharSequence;

    .prologue
    .line 320
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 321
    .local v2, "revisedTimeoutEntries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    iget v3, p1, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;->state:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    iget v1, p1, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;->saved:I

    .line 324
    .local v1, "maxTimeout":I
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v3, p2

    if-ge v0, v3, :cond_1

    .line 325
    aget v3, p2, v0

    if-ge v3, v1, :cond_1

    .line 326
    aget-object v3, p3, v0

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 324
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 321
    .end local v0    # "i":I
    .end local v1    # "maxTimeout":I
    :cond_0
    invoke-direct {p0}, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->getCurrentTimeout()I

    move-result v1

    goto :goto_0

    .line 332
    .restart local v0    # "i":I
    .restart local v1    # "maxTimeout":I
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/CharSequence;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/CharSequence;

    return-object v3
.end method

.method private setUiEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 256
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mActivation:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 257
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mActivation:Landroid/view/View;

    const v1, 0x7f090167

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 258
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mActivation:Landroid/view/View;

    const v1, 0x7f090168

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 259
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mAdapter:Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter;

    invoke-virtual {v0, p1}, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter;->setPowerSaverEnabled(Z)V

    .line 260
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mAdapter:Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter;

    invoke-virtual {v0}, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter;->notifyDataSetChanged()V

    .line 261
    return-void
.end method

.method private showTimeoutDialog(Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;)V
    .locals 6
    .param p1, "f"    # Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;

    .prologue
    .line 268
    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080069

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    .line 270
    .local v3, "values":[I
    iget-boolean v4, p1, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;->enabled:Z

    if-eqz v4, :cond_1

    iget v4, p1, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;->param:I

    invoke-direct {p0, v3, v4}, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->find([II)I

    move-result v1

    .line 271
    .local v1, "defIdx":I
    :goto_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 272
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v4, 0x7f0200e2

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 273
    const v4, 0x7f07004f

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 274
    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080068

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p1, v3, v4}, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->removeNonSavingTimeoutEntries(Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;[I[Ljava/lang/CharSequence;)[Ljava/lang/CharSequence;

    move-result-object v2

    .line 276
    .local v2, "validEntries":[Ljava/lang/CharSequence;
    new-instance v4, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings$4;

    invoke-direct {v4, p0, p1, v3}, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings$4;-><init>(Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;[I)V

    invoke-virtual {v0, v2, v1, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 291
    const/high16 v4, 0x1040000

    new-instance v5, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings$5;

    invoke-direct {v5, p0}, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings$5;-><init>(Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 297
    iget-object v4, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mTimeoutDialog:Landroid/app/AlertDialog;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mTimeoutDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 298
    iget-object v4, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mTimeoutDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->dismiss()V

    .line 300
    :cond_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mTimeoutDialog:Landroid/app/AlertDialog;

    .line 301
    iget-object v4, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mTimeoutDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 302
    return-void

    .line 270
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v1    # "defIdx":I
    .end local v2    # "validEntries":[Ljava/lang/CharSequence;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 195
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 197
    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 198
    .local v0, "activity":Landroid/app/Activity;
    new-instance v2, Landroid/widget/Switch;

    invoke-direct {v2, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mEnabledSwitch:Landroid/widget/Switch;

    .line 200
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0002

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 202
    .local v1, "padding":I
    iget-object v2, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mEnabledSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v4, v4, v1, v4}, Landroid/widget/Switch;->setPaddingRelative(IIII)V

    .line 205
    new-instance v2, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter;

    invoke-direct {v2, v0}, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mAdapter:Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter;

    .line 206
    iget-object v2, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mAdapter:Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 207
    iget-object v2, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mListViewListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 209
    new-instance v2, Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;

    iget-object v3, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mBatteryThresholdProvider:Lcom/sonymobile/settings/stamina/BatteryThresholdHelper$DataProvider;

    iget-object v4, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mActivation:Landroid/view/View;

    invoke-direct {v2, v0, v3, v4, p1}, Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;-><init>(Landroid/content/Context;Lcom/sonymobile/settings/stamina/BatteryThresholdHelper$DataProvider;Landroid/view/View;Landroid/os/Bundle;)V

    iput-object v2, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mBatteryThresholdHelper:Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;

    .line 212
    new-instance v2, Lcom/sonymobile/settings/stamina/powersaver/BrightnessDialog;

    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sonymobile/settings/stamina/powersaver/BrightnessDialog;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mBrightnessDialog:Lcom/sonymobile/settings/stamina/powersaver/BrightnessDialog;

    .line 213
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 137
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 138
    new-instance v0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings$PowersaveEnableObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings$PowersaveEnableObserver;-><init>(Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mPowersaveEnableObserver:Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings$PowersaveEnableObserver;

    .line 139
    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mPowersaveEnableObserver:Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings$PowersaveEnableObserver;

    invoke-static {v0, v1}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->registerPowersaveEnableObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V

    .line 141
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 165
    const v2, 0x7f04008c

    invoke-virtual {p1, v2, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 166
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f09016d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mListView:Landroid/widget/ListView;

    .line 169
    const v2, 0x7f040087

    iget-object v3, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mActivation:Landroid/view/View;

    .line 170
    iget-object v2, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mActivation:Landroid/view/View;

    invoke-virtual {v2, v3, v6, v5}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 173
    const v2, 0x7f040085

    iget-object v3, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 175
    .local v0, "title":Landroid/widget/TextView;
    const v2, 0x7f070049

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 176
    iget-object v2, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v0, v6, v4}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 180
    instance-of v2, p2, Landroid/preference/PreferenceFrameLayout;

    if-eqz v2, :cond_0

    .line 181
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceFrameLayout$LayoutParams;

    iput-boolean v5, v2, Landroid/preference/PreferenceFrameLayout$LayoutParams;->removeBorders:Z

    .line 184
    :cond_0
    return-object v1
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 145
    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mPowersaveEnableObserver:Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings$PowersaveEnableObserver;

    invoke-static {v0, v1}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->unRegisterPowersaveEnableObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V

    .line 147
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    .line 148
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mBatteryThresholdHelper:Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;

    invoke-virtual {v0}, Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;->onDetach()V

    .line 153
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mTimeoutDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mTimeoutDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 155
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mTimeoutDialog:Landroid/app/AlertDialog;

    .line 157
    :cond_0
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroyView()V

    .line 158
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 238
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mEnabledSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 239
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mBrightnessDialog:Lcom/sonymobile/settings/stamina/powersaver/BrightnessDialog;

    invoke-virtual {v0}, Lcom/sonymobile/settings/stamina/powersaver/BrightnessDialog;->close()V

    .line 240
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onPause()V

    .line 241
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 245
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 246
    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->isPowerSaverEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 247
    .local v0, "enabled":Z
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mEnabledSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 248
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mEnabledSwitch:Landroid/widget/Switch;

    iget-object v2, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mPowerSaverEnableListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 249
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mBatteryThresholdHelper:Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;

    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->getPowerSaverBatteryThreshold(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;->updateView(I)V

    .line 251
    invoke-direct {p0, v0}, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->setUiEnabled(Z)V

    .line 252
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 189
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 190
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mBatteryThresholdHelper:Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;

    invoke-virtual {v0, p1}, Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 191
    return-void
.end method

.method public onStart()V
    .locals 6

    .prologue
    const/16 v2, 0x10

    const/4 v5, -0x2

    .line 217
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStart()V

    .line 218
    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 219
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v2, v2}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 221
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mEnabledSwitch:Landroid/widget/Switch;

    new-instance v3, Landroid/app/ActionBar$LayoutParams;

    const v4, 0x800015

    invoke-direct {v3, v5, v5, v4}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v2, v3}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 226
    return-void
.end method

.method public onStop()V
    .locals 4

    .prologue
    .line 230
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStop()V

    .line 231
    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 232
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x10

    invoke-virtual {v1, v2, v3}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 233
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 234
    return-void
.end method
