.class Lcom/android/settings/DataUsageSummary$1;
.super Landroid/content/BroadcastReceiver;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DataUsageSummary;


# direct methods
.method constructor <init>(Lcom/android/settings/DataUsageSummary;)V
    .locals 0

    .prologue
    .line 292
    iput-object p1, p0, Lcom/android/settings/DataUsageSummary$1;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 295
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 297
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 299
    iget-object v2, p0, Lcom/android/settings/DataUsageSummary$1;->this$0:Lcom/android/settings/DataUsageSummary;

    # getter for: Lcom/android/settings/DataUsageSummary;->mUpdateUiForAirplaneModeOff:Z
    invoke-static {v2}, Lcom/android/settings/DataUsageSummary;->access$000(Lcom/android/settings/DataUsageSummary;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 300
    invoke-static {p1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 301
    .local v1, "tele":Landroid/telephony/TelephonyManager;
    iget-object v2, p0, Lcom/android/settings/DataUsageSummary$1;->this$0:Lcom/android/settings/DataUsageSummary;

    # getter for: Lcom/android/settings/DataUsageSummary;->mHandler:Lcom/android/settings/DataUsageSummary$MyHandler;
    invoke-static {v2}, Lcom/android/settings/DataUsageSummary;->access$100(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/DataUsageSummary$MyHandler;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/settings/DataUsageSummary$MyHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 304
    .end local v1    # "tele":Landroid/telephony/TelephonyManager;
    :cond_0
    return-void
.end method
