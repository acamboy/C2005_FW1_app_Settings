.class public Lcom/android/settings/AccessibilitySettings$ToggleGlobalGesturePreferenceFragment;
.super Lcom/android/settings/AccessibilitySettings$ToggleFeaturePreferenceFragment;
.source "AccessibilitySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/AccessibilitySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ToggleGlobalGesturePreferenceFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 965
    invoke-direct {p0}, Lcom/android/settings/AccessibilitySettings$ToggleFeaturePreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected onInstallActionBarToggleSwitch()V
    .locals 2

    .prologue
    .line 975
    invoke-super {p0}, Lcom/android/settings/AccessibilitySettings$ToggleFeaturePreferenceFragment;->onInstallActionBarToggleSwitch()V

    .line 976
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings$ToggleFeaturePreferenceFragment;->mToggleSwitch:Lcom/android/settings/AccessibilitySettings$ToggleSwitch;

    new-instance v1, Lcom/android/settings/AccessibilitySettings$ToggleGlobalGesturePreferenceFragment$1;

    invoke-direct {v1, p0}, Lcom/android/settings/AccessibilitySettings$ToggleGlobalGesturePreferenceFragment$1;-><init>(Lcom/android/settings/AccessibilitySettings$ToggleGlobalGesturePreferenceFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/AccessibilitySettings$ToggleSwitch;->setOnBeforeCheckedChangeListener(Lcom/android/settings/AccessibilitySettings$ToggleSwitch$OnBeforeCheckedChangeListener;)V

    .line 985
    return-void
.end method

.method protected onPreferenceToggled(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "preferenceKey"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .prologue
    .line 969
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings$ToggleGlobalGesturePreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "enable_accessibility_global_gesture_enabled"

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 971
    return-void

    .line 969
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 990
    invoke-super {p0, p1, p2}, Lcom/android/settings/AccessibilitySettings$ToggleFeaturePreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 991
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings$ToggleGlobalGesturePreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEnabled(Z)V

    .line 992
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings$ToggleGlobalGesturePreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 993
    return-void
.end method
