.class public Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference;
.super Landroid/preference/CheckBoxPreference;
.source "CheckBoxAndSettingsPreference.java"


# instance fields
.field private mFragment:Lcom/android/settings/SettingsPreferenceFragment;

.field private mSettingsButton:Landroid/widget/ImageView;

.field private mSettingsIntent:Landroid/content/Intent;

.field private mSummaryText:Landroid/widget/TextView;

.field private mTitleText:Landroid/widget/TextView;

.field private settingsLineVisible:Z

.field private settings_line:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference;->settingsLineVisible:Z

    .line 44
    const v0, 0x7f04005d

    invoke-virtual {p0, v0}, Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference;->setLayoutResource(I)V

    .line 45
    const v0, 0x7f04005e

    invoke-virtual {p0, v0}, Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference;->setWidgetLayoutResource(I)V

    .line 46
    return-void
.end method

.method private enableSettingsButton()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 100
    iget-object v1, p0, Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference;->mSettingsButton:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 101
    iget-object v1, p0, Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference;->mSettingsIntent:Landroid/content/Intent;

    if-nez v1, :cond_4

    .line 102
    iget-object v1, p0, Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference;->mSettingsButton:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 113
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference;->mTitleText:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 114
    iget-object v1, p0, Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 116
    :cond_1
    iget-object v1, p0, Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference;->mSummaryText:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    .line 117
    iget-object v1, p0, Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference;->mSummaryText:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 119
    :cond_2
    iget-object v1, p0, Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference;->settings_line:Landroid/view/View;

    if-eqz v1, :cond_3

    .line 121
    iget-object v2, p0, Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference;->settings_line:Landroid/view/View;

    iget-boolean v1, p0, Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference;->settingsLineVisible:Z

    if-eqz v1, :cond_5

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 123
    :cond_3
    return-void

    .line 104
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference;->isChecked()Z

    move-result v0

    .line 105
    .local v0, "checked":Z
    iget-object v1, p0, Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference;->mSettingsButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 106
    iget-object v1, p0, Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference;->mSettingsButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 107
    iget-object v1, p0, Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference;->mSettingsButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 108
    if-nez v0, :cond_0

    .line 109
    iget-object v1, p0, Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference;->mSettingsButton:Landroid/widget/ImageView;

    const v2, 0x3ecccccd

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_0

    .line 121
    .end local v0    # "checked":Z
    :cond_5
    const/4 v1, 0x4

    goto :goto_1
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 50
    invoke-super {p0, p1}, Landroid/preference/CheckBoxPreference;->onBindView(Landroid/view/View;)V

    .line 51
    const v1, 0x7f0900ed

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 52
    .local v0, "textLayout":Landroid/view/View;
    const v1, 0x7f0900ee

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference;->settings_line:Landroid/view/View;

    .line 53
    new-instance v1, Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference$1;

    invoke-direct {v1, p0}, Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference$1;-><init>(Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    const v1, 0x7f0900ef

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference;->mSettingsButton:Landroid/widget/ImageView;

    .line 62
    const v1, 0x1020016

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference;->mTitleText:Landroid/widget/TextView;

    .line 63
    const v1, 0x1020010

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference;->mSummaryText:Landroid/widget/TextView;

    .line 64
    iget-object v1, p0, Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference;->mSettingsButton:Landroid/widget/ImageView;

    new-instance v2, Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference$2;

    invoke-direct {v2, p0}, Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference$2;-><init>(Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    invoke-direct {p0}, Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference;->enableSettingsButton()V

    .line 72
    return-void
.end method

.method protected onCheckBoxClicked()V
    .locals 1

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference;->setChecked(Z)V

    .line 91
    :goto_0
    return-void

    .line 89
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference;->setChecked(Z)V

    goto :goto_0
.end method

.method protected onSettingsButtonClicked()V
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference;->mFragment:Lcom/android/settings/SettingsPreferenceFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference;->mSettingsIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference;->mFragment:Lcom/android/settings/SettingsPreferenceFragment;

    iget-object v1, p0, Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference;->mSettingsIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->startActivity(Landroid/content/Intent;)V

    .line 97
    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 76
    invoke-super {p0, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 77
    invoke-direct {p0}, Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference;->enableSettingsButton()V

    .line 78
    return-void
.end method

.method public settingsLineVisiblity(Z)V
    .locals 0
    .param p1, "visibility"    # Z

    .prologue
    .line 127
    iput-boolean p1, p0, Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference;->settingsLineVisible:Z

    .line 128
    return-void
.end method
