.class Lcom/android/settings/simmanager/MSimCallForwardingDialogActivity$1;
.super Ljava/lang/Object;
.source "MSimCallForwardingDialogActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


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


# direct methods
.method constructor <init>(Lcom/android/settings/simmanager/MSimCallForwardingDialogActivity;)V
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Lcom/android/settings/simmanager/MSimCallForwardingDialogActivity$1;->this$0:Lcom/android/settings/simmanager/MSimCallForwardingDialogActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .param p1, "arg0"    # Landroid/text/Editable;

    .prologue
    const/4 v1, 0x0

    .line 159
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/android/settings/simmanager/MSimCallForwardingDialogActivity$1;->this$0:Lcom/android/settings/simmanager/MSimCallForwardingDialogActivity;

    # getter for: Lcom/android/settings/simmanager/MSimCallForwardingDialogActivity;->positiveButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/settings/simmanager/MSimCallForwardingDialogActivity;->access$000(Lcom/android/settings/simmanager/MSimCallForwardingDialogActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 166
    :goto_0
    return-void

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/android/settings/simmanager/MSimCallForwardingDialogActivity$1;->this$0:Lcom/android/settings/simmanager/MSimCallForwardingDialogActivity;

    # getter for: Lcom/android/settings/simmanager/MSimCallForwardingDialogActivity;->inputSIM2:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/settings/simmanager/MSimCallForwardingDialogActivity;->access$100(Lcom/android/settings/simmanager/MSimCallForwardingDialogActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 162
    iget-object v0, p0, Lcom/android/settings/simmanager/MSimCallForwardingDialogActivity$1;->this$0:Lcom/android/settings/simmanager/MSimCallForwardingDialogActivity;

    # getter for: Lcom/android/settings/simmanager/MSimCallForwardingDialogActivity;->positiveButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/settings/simmanager/MSimCallForwardingDialogActivity;->access$000(Lcom/android/settings/simmanager/MSimCallForwardingDialogActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 164
    :cond_1
    iget-object v0, p0, Lcom/android/settings/simmanager/MSimCallForwardingDialogActivity$1;->this$0:Lcom/android/settings/simmanager/MSimCallForwardingDialogActivity;

    # getter for: Lcom/android/settings/simmanager/MSimCallForwardingDialogActivity;->positiveButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/settings/simmanager/MSimCallForwardingDialogActivity;->access$000(Lcom/android/settings/simmanager/MSimCallForwardingDialogActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/CharSequence;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I

    .prologue
    .line 155
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/CharSequence;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I

    .prologue
    .line 151
    return-void
.end method
