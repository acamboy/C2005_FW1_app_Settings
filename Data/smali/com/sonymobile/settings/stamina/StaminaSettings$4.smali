.class Lcom/sonymobile/settings/stamina/StaminaSettings$4;
.super Ljava/lang/Object;
.source "StaminaSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/settings/stamina/StaminaSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/settings/stamina/StaminaSettings;


# direct methods
.method constructor <init>(Lcom/sonymobile/settings/stamina/StaminaSettings;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/sonymobile/settings/stamina/StaminaSettings$4;->this$0:Lcom/sonymobile/settings/stamina/StaminaSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/StaminaSettings$4;->this$0:Lcom/sonymobile/settings/stamina/StaminaSettings;

    invoke-virtual {v0}, Lcom/sonymobile/settings/stamina/StaminaSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->setBatteryShown(Landroid/content/Context;Z)V

    .line 106
    const/4 v0, 0x1

    return v0
.end method
