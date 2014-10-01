.class Lcom/android/settings/simmanager/MSimCallForwardingProgressActivity$2;
.super Ljava/lang/Object;
.source "MSimCallForwardingProgressActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/simmanager/MSimCallForwardingProgressActivity;->onCreateDialog(I)Landroid/app/Dialog;
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
    .line 119
    iput-object p1, p0, Lcom/android/settings/simmanager/MSimCallForwardingProgressActivity$2;->this$0:Lcom/android/settings/simmanager/MSimCallForwardingProgressActivity;

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
    .line 121
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/android/settings/simmanager/MSimCallForwardingProgressActivity$2;->this$0:Lcom/android/settings/simmanager/MSimCallForwardingProgressActivity;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL_FORWARD_OFF_CANCEL_EVENT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/simmanager/MSimCallForwardingProgressActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 123
    iget-object v0, p0, Lcom/android/settings/simmanager/MSimCallForwardingProgressActivity$2;->this$0:Lcom/android/settings/simmanager/MSimCallForwardingProgressActivity;

    invoke-virtual {v0}, Lcom/android/settings/simmanager/MSimCallForwardingProgressActivity;->finish()V

    .line 125
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
