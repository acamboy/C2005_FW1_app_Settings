.class Lcom/sonymobile/settings/stamina/StaminaSettings$3;
.super Ljava/lang/Object;
.source "StaminaSettings.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/settings/stamina/StaminaSettings;
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
    .line 79
    iput-object p1, p0, Lcom/sonymobile/settings/stamina/StaminaSettings$3;->this$0:Lcom/sonymobile/settings/stamina/StaminaSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "btn"    # Landroid/widget/CompoundButton;
    .param p2, "checked"    # Z

    .prologue
    .line 82
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/StaminaSettings$3;->this$0:Lcom/sonymobile/settings/stamina/StaminaSettings;

    # getter for: Lcom/sonymobile/settings/stamina/StaminaSettings;->mLBWPreference:Lcom/sonymobile/settings/stamina/SwitchPreference;
    invoke-static {v0}, Lcom/sonymobile/settings/stamina/StaminaSettings;->access$000(Lcom/sonymobile/settings/stamina/StaminaSettings;)Lcom/sonymobile/settings/stamina/SwitchPreference;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/sonymobile/settings/stamina/SwitchPreference;->setChecked(Z)V

    .line 83
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/StaminaSettings$3;->this$0:Lcom/sonymobile/settings/stamina/StaminaSettings;

    invoke-virtual {v0}, Lcom/sonymobile/settings/stamina/StaminaSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz p2, :cond_0

    # getter for: Lcom/sonymobile/settings/stamina/StaminaSettings;->LBW_ENABLE_INTENT:Landroid/content/Intent;
    invoke-static {}, Lcom/sonymobile/settings/stamina/StaminaSettings;->access$100()Landroid/content/Intent;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 84
    return-void

    .line 83
    :cond_0
    # getter for: Lcom/sonymobile/settings/stamina/StaminaSettings;->LBW_DISABLE_INTENT:Landroid/content/Intent;
    invoke-static {}, Lcom/sonymobile/settings/stamina/StaminaSettings;->access$200()Landroid/content/Intent;

    move-result-object v0

    goto :goto_0
.end method
