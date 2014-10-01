.class Lcom/android/settings/simmanager/MSimCallForwardingPreferenceScreen$1;
.super Ljava/lang/Object;
.source "MSimCallForwardingPreferenceScreen.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/simmanager/MSimCallForwardingPreferenceScreen;->onBindView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/simmanager/MSimCallForwardingPreferenceScreen;


# direct methods
.method constructor <init>(Lcom/android/settings/simmanager/MSimCallForwardingPreferenceScreen;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/settings/simmanager/MSimCallForwardingPreferenceScreen$1;->this$0:Lcom/android/settings/simmanager/MSimCallForwardingPreferenceScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1, "checkbox"    # Landroid/widget/CompoundButton;
    .param p2, "flag"    # Z

    .prologue
    .line 87
    iget-object v1, p0, Lcom/android/settings/simmanager/MSimCallForwardingPreferenceScreen$1;->this$0:Lcom/android/settings/simmanager/MSimCallForwardingPreferenceScreen;

    # getter for: Lcom/android/settings/simmanager/MSimCallForwardingPreferenceScreen;->triggerState:Z
    invoke-static {v1}, Lcom/android/settings/simmanager/MSimCallForwardingPreferenceScreen;->access$000(Lcom/android/settings/simmanager/MSimCallForwardingPreferenceScreen;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 88
    # getter for: Lcom/android/settings/simmanager/MSimCallForwardingPreferenceScreen;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/simmanager/MSimCallForwardingPreferenceScreen;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "triggerState is false"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget-object v1, p0, Lcom/android/settings/simmanager/MSimCallForwardingPreferenceScreen$1;->this$0:Lcom/android/settings/simmanager/MSimCallForwardingPreferenceScreen;

    const/4 v2, 0x1

    # setter for: Lcom/android/settings/simmanager/MSimCallForwardingPreferenceScreen;->triggerState:Z
    invoke-static {v1, v2}, Lcom/android/settings/simmanager/MSimCallForwardingPreferenceScreen;->access$002(Lcom/android/settings/simmanager/MSimCallForwardingPreferenceScreen;Z)Z

    .line 106
    :goto_0
    return-void

    .line 94
    :cond_0
    if-eqz p2, :cond_1

    .line 95
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL_FORWARD_ON_EVENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 96
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 97
    # getter for: Lcom/android/settings/simmanager/MSimCallForwardingPreferenceScreen;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/simmanager/MSimCallForwardingPreferenceScreen;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Enable call forward"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 99
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL_FORWARD_OFF_EVENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 100
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 102
    # getter for: Lcom/android/settings/simmanager/MSimCallForwardingPreferenceScreen;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/simmanager/MSimCallForwardingPreferenceScreen;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Disable call forward"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
