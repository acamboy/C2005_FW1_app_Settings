.class public Lcom/android/settings/recent/RamProgressBar;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "RamProgressBar.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mHideCarrier:Landroid/preference/CheckBoxPreference;

.field private mStatusBarRamProgressBar:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 48
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 50
    const v5, 0x7f050063

    invoke-virtual {p0, v5}, Lcom/android/settings/recent/RamProgressBar;->addPreferencesFromResource(I)V

    .line 52
    invoke-virtual {p0}, Lcom/android/settings/recent/RamProgressBar;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    .line 54
    .line 60
    .local v4, "prefs":Landroid/preference/PreferenceScreen;
    const-string v5, "ram_progrees_bar"

    invoke-virtual {p0, v5}, Lcom/android/settings/recent/RamProgressBar;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/settings/recent/RamProgressBar;->mStatusBarRamProgressBar:Landroid/preference/CheckBoxPreference;

    .line 61
    iget-object v5, p0, Lcom/android/settings/recent/RamProgressBar;->mStatusBarRamProgressBar:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/recent/RamProgressBar;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "ram_progrees_bar"

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v6, :cond_0

    :goto_0
    invoke-virtual {v5, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 63
    iget-object v5, p0, Lcom/android/settings/recent/RamProgressBar;->mStatusBarRamProgressBar:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    return-void

    :cond_0
    move v6, v7

    .line 61
    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 88
    invoke-virtual {p0}, Lcom/android/settings/recent/RamProgressBar;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 89
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-object v4, p0, Lcom/android/settings/recent/RamProgressBar;->mStatusBarRamProgressBar:Landroid/preference/CheckBoxPreference;

    if-ne p1, v4, :cond_1

    .line 90
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 91
    .local v1, "value":Z
    const-string v4, "ram_progrees_bar"

    if-eqz v1, :cond_0

    move v2, v3

    :cond_0
    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 100
    .end local v1    # "value":Z
    :goto_0
    return v3

    .line 94
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_1
    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 83
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 84
    return-void
.end method
