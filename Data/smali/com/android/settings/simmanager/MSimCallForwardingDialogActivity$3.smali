.class Lcom/android/settings/simmanager/MSimCallForwardingDialogActivity$3;
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
    .line 192
    iput-object p1, p0, Lcom/android/settings/simmanager/MSimCallForwardingDialogActivity$3;->this$0:Lcom/android/settings/simmanager/MSimCallForwardingDialogActivity;

    iput-boolean p2, p0, Lcom/android/settings/simmanager/MSimCallForwardingDialogActivity$3;->val$fromSwitch:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/settings/simmanager/MSimCallForwardingDialogActivity$3;->this$0:Lcom/android/settings/simmanager/MSimCallForwardingDialogActivity;

    iget-boolean v1, p0, Lcom/android/settings/simmanager/MSimCallForwardingDialogActivity$3;->val$fromSwitch:Z

    invoke-virtual {v0, v1}, Lcom/android/settings/simmanager/MSimCallForwardingDialogActivity;->sendDoneIntent(Z)V

    .line 197
    iget-object v0, p0, Lcom/android/settings/simmanager/MSimCallForwardingDialogActivity$3;->this$0:Lcom/android/settings/simmanager/MSimCallForwardingDialogActivity;

    invoke-virtual {v0}, Lcom/android/settings/simmanager/MSimCallForwardingDialogActivity;->finish()V

    .line 198
    return-void
.end method
