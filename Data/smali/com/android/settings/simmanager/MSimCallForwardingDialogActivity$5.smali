.class Lcom/android/settings/simmanager/MSimCallForwardingDialogActivity$5;
.super Ljava/lang/Object;
.source "MSimCallForwardingDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/simmanager/MSimCallForwardingDialogActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/simmanager/MSimCallForwardingDialogActivity;

.field final synthetic val$fromSwitch:Z


# direct methods
.method constructor <init>(Lcom/android/settings/simmanager/MSimCallForwardingDialogActivity;Z)V
    .locals 0

    .prologue
    .line 225
    iput-object p1, p0, Lcom/android/settings/simmanager/MSimCallForwardingDialogActivity$5;->this$0:Lcom/android/settings/simmanager/MSimCallForwardingDialogActivity;

    iput-boolean p2, p0, Lcom/android/settings/simmanager/MSimCallForwardingDialogActivity$5;->val$fromSwitch:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 227
    const/4 v0, 0x4

    if-ne p2, v0, :cond_1

    .line 228
    iget-boolean v0, p0, Lcom/android/settings/simmanager/MSimCallForwardingDialogActivity$5;->val$fromSwitch:Z

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/android/settings/simmanager/MSimCallForwardingDialogActivity$5;->this$0:Lcom/android/settings/simmanager/MSimCallForwardingDialogActivity;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL_FORWARD_OFF_CANCEL_EVENT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/simmanager/MSimCallForwardingDialogActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/android/settings/simmanager/MSimCallForwardingDialogActivity$5;->this$0:Lcom/android/settings/simmanager/MSimCallForwardingDialogActivity;

    invoke-virtual {v0}, Lcom/android/settings/simmanager/MSimCallForwardingDialogActivity;->finish()V

    .line 233
    :cond_1
    const/4 v0, 0x0

    return v0
.end method
