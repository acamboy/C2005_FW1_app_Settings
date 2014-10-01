.class Lcom/android/settings/accounts/SyncSettings$1;
.super Ljava/lang/Object;
.source "SyncSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accounts/SyncSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accounts/SyncSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/accounts/SyncSettings;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/settings/accounts/SyncSettings$1;->this$0:Lcom/android/settings/accounts/SyncSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v6, 0x1

    .line 68
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 69
    const-string v1, "SyncSettings"

    const-string v3, "ignoring monkey\'s attempt to flip sync state"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    .end local p2    # "newValue":Ljava/lang/Object;
    :goto_0
    return v6

    .line 71
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 72
    .local v2, "args":Landroid/os/Bundle;
    const-string v1, "enabling"

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 73
    iget-object v1, p0, Lcom/android/settings/accounts/SyncSettings$1;->this$0:Lcom/android/settings/accounts/SyncSettings;

    invoke-virtual {v1}, Lcom/android/settings/accounts/SyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 74
    .local v0, "activity":Landroid/preference/PreferenceActivity;
    const-string v1, "com.android.settings.AutoSyncDialogFragment"

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/settings/accounts/SyncSettings$1;->this$0:Lcom/android/settings/accounts/SyncSettings;

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0
.end method
