.class final Lcom/android/settings/widget/SettingsAppWidgetProvider$GpsStateTracker;
.super Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;
.source "SettingsAppWidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/widget/SettingsAppWidgetProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "GpsStateTracker"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 517
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;-><init>(Lcom/android/settings/widget/SettingsAppWidgetProvider$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/widget/SettingsAppWidgetProvider$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings/widget/SettingsAppWidgetProvider$1;

    .prologue
    .line 517
    invoke-direct {p0}, Lcom/android/settings/widget/SettingsAppWidgetProvider$GpsStateTracker;-><init>()V

    return-void
.end method


# virtual methods
.method public getActualState(Landroid/content/Context;)I
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 529
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 530
    .local v1, "resolver":Landroid/content/ContentResolver;
    const-string v2, "gps"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    .line 532
    .local v0, "on":Z
    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getButtonDescription()I
    .locals 1

    .prologue
    .line 521
    const v0, 0x7f070659

    return v0
.end method

.method public getButtonId()I
    .locals 1

    .prologue
    .line 519
    const v0, 0x7f0901bb

    return v0
.end method

.method public getButtonImageId(Z)I
    .locals 1
    .param p1, "on"    # Z

    .prologue
    .line 523
    if-eqz p1, :cond_0

    const v0, 0x7f02003d

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f02003c

    goto :goto_0
.end method

.method public getContainerId()I
    .locals 1

    .prologue
    .line 518
    const v0, 0x7f0901ba

    return v0
.end method

.method public getIndicatorId()I
    .locals 1

    .prologue
    .line 520
    const v0, 0x7f0901bc

    return v0
.end method

.method public onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "unused"    # Landroid/content/Intent;

    .prologue
    .line 539
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SettingsAppWidgetProvider$GpsStateTracker;->getActualState(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/widget/SettingsAppWidgetProvider$GpsStateTracker;->setCurrentState(Landroid/content/Context;I)V

    .line 540
    return-void
.end method

.method public requestStateChange(Landroid/content/Context;Z)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "desiredState"    # Z

    .prologue
    .line 544
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 545
    .local v0, "resolver":Landroid/content/ContentResolver;
    new-instance v1, Lcom/android/settings/widget/SettingsAppWidgetProvider$GpsStateTracker$1;

    invoke-direct {v1, p0, p1, v0, p2}, Lcom/android/settings/widget/SettingsAppWidgetProvider$GpsStateTracker$1;-><init>(Lcom/android/settings/widget/SettingsAppWidgetProvider$GpsStateTracker;Landroid/content/Context;Landroid/content/ContentResolver;Z)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SettingsAppWidgetProvider$GpsStateTracker$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 570
    return-void
.end method
