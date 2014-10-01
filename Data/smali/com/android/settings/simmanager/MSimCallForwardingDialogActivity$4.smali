.class Lcom/android/settings/simmanager/MSimCallForwardingDialogActivity$4;
.super Ljava/lang/Object;
.source "MSimCallForwardingDialogActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 201
    iput-object p1, p0, Lcom/android/settings/simmanager/MSimCallForwardingDialogActivity$4;->this$0:Lcom/android/settings/simmanager/MSimCallForwardingDialogActivity;

    iput-boolean p2, p0, Lcom/android/settings/simmanager/MSimCallForwardingDialogActivity$4;->val$fromSwitch:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 205
    iget-boolean v0, p0, Lcom/android/settings/simmanager/MSimCallForwardingDialogActivity$4;->val$fromSwitch:Z

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/android/settings/simmanager/MSimCallForwardingDialogActivity$4;->this$0:Lcom/android/settings/simmanager/MSimCallForwardingDialogActivity;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL_FORWARD_OFF_CANCEL_EVENT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/simmanager/MSimCallForwardingDialogActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/android/settings/simmanager/MSimCallForwardingDialogActivity$4;->this$0:Lcom/android/settings/simmanager/MSimCallForwardingDialogActivity;

    invoke-virtual {v0}, Lcom/android/settings/simmanager/MSimCallForwardingDialogActivity;->finish()V

    .line 209
    return-void
.end method
