.class Lcom/android/settings/simmanager/MSimCallForwardingAlertActivity$5;
.super Ljava/lang/Object;
.source "MSimCallForwardingAlertActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/simmanager/MSimCallForwardingAlertActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/simmanager/MSimCallForwardingAlertActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/simmanager/MSimCallForwardingAlertActivity;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lcom/android/settings/simmanager/MSimCallForwardingAlertActivity$5;->this$0:Lcom/android/settings/simmanager/MSimCallForwardingAlertActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/settings/simmanager/MSimCallForwardingAlertActivity$5;->this$0:Lcom/android/settings/simmanager/MSimCallForwardingAlertActivity;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL_FORWARD_ON_CANCEL_EVENT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/simmanager/MSimCallForwardingAlertActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 143
    iget-object v0, p0, Lcom/android/settings/simmanager/MSimCallForwardingAlertActivity$5;->this$0:Lcom/android/settings/simmanager/MSimCallForwardingAlertActivity;

    invoke-virtual {v0}, Lcom/android/settings/simmanager/MSimCallForwardingAlertActivity;->finish()V

    .line 144
    return-void
.end method
