.class Lcom/sonymobile/settings/stamina/StaminaSettings$5;
.super Landroid/content/BroadcastReceiver;
.source "StaminaSettings.java"


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
    .line 114
    iput-object p1, p0, Lcom/sonymobile/settings/stamina/StaminaSettings$5;->this$0:Lcom/sonymobile/settings/stamina/StaminaSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 119
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 120
    .local v0, "action":Ljava/lang/String;
    const-string v1, "com,android.settings.intent.ACTION_BT_SWITCH"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 121
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/StaminaSettings$5;->this$0:Lcom/sonymobile/settings/stamina/StaminaSettings;

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    # setter for: Lcom/sonymobile/settings/stamina/StaminaSettings;->mBTAdapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-static {v1, v2}, Lcom/sonymobile/settings/stamina/StaminaSettings;->access$302(Lcom/sonymobile/settings/stamina/StaminaSettings;Landroid/bluetooth/BluetoothAdapter;)Landroid/bluetooth/BluetoothAdapter;

    .line 122
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/StaminaSettings$5;->this$0:Lcom/sonymobile/settings/stamina/StaminaSettings;

    # getter for: Lcom/sonymobile/settings/stamina/StaminaSettings;->mBTAdapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-static {v1}, Lcom/sonymobile/settings/stamina/StaminaSettings;->access$300(Lcom/sonymobile/settings/stamina/StaminaSettings;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 124
    :cond_0
    return-void
.end method
