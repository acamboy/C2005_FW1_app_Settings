.class Lcom/android/settings/simmanager/MSimCallForwardingProgressActivity$4;
.super Landroid/content/BroadcastReceiver;
.source "MSimCallForwardingProgressActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/simmanager/MSimCallForwardingProgressActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/simmanager/MSimCallForwardingProgressActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/simmanager/MSimCallForwardingProgressActivity;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lcom/android/settings/simmanager/MSimCallForwardingProgressActivity$4;->this$0:Lcom/android/settings/simmanager/MSimCallForwardingProgressActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 156
    # getter for: Lcom/android/settings/simmanager/MSimCallForwardingProgressActivity;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/simmanager/MSimCallForwardingProgressActivity;->access$000()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.DISMISS_READING_PROGRESS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 158
    iget-object v0, p0, Lcom/android/settings/simmanager/MSimCallForwardingProgressActivity$4;->this$0:Lcom/android/settings/simmanager/MSimCallForwardingProgressActivity;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/settings/simmanager/MSimCallForwardingProgressActivity;->removeDialog(I)V

    .line 159
    iget-object v0, p0, Lcom/android/settings/simmanager/MSimCallForwardingProgressActivity$4;->this$0:Lcom/android/settings/simmanager/MSimCallForwardingProgressActivity;

    invoke-virtual {v0}, Lcom/android/settings/simmanager/MSimCallForwardingProgressActivity;->finish()V

    .line 170
    :cond_0
    :goto_0
    return-void

    .line 161
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.DISMISS_ON_UPDATING_PROGRESS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 162
    iget-object v0, p0, Lcom/android/settings/simmanager/MSimCallForwardingProgressActivity$4;->this$0:Lcom/android/settings/simmanager/MSimCallForwardingProgressActivity;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/settings/simmanager/MSimCallForwardingProgressActivity;->removeDialog(I)V

    .line 163
    iget-object v0, p0, Lcom/android/settings/simmanager/MSimCallForwardingProgressActivity$4;->this$0:Lcom/android/settings/simmanager/MSimCallForwardingProgressActivity;

    invoke-virtual {v0}, Lcom/android/settings/simmanager/MSimCallForwardingProgressActivity;->finish()V

    goto :goto_0

    .line 165
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.DISMISS_OFF_UPDATING_PROGRESS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/android/settings/simmanager/MSimCallForwardingProgressActivity$4;->this$0:Lcom/android/settings/simmanager/MSimCallForwardingProgressActivity;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/settings/simmanager/MSimCallForwardingProgressActivity;->removeDialog(I)V

    .line 167
    iget-object v0, p0, Lcom/android/settings/simmanager/MSimCallForwardingProgressActivity$4;->this$0:Lcom/android/settings/simmanager/MSimCallForwardingProgressActivity;

    invoke-virtual {v0}, Lcom/android/settings/simmanager/MSimCallForwardingProgressActivity;->finish()V

    goto :goto_0
.end method
