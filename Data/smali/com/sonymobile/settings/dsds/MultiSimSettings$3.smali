.class Lcom/sonymobile/settings/dsds/MultiSimSettings$3;
.super Ljava/lang/Object;
.source "MultiSimSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/settings/dsds/MultiSimSettings;->selectPreferedConnection()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/settings/dsds/MultiSimSettings;

.field final synthetic val$preDataConnectionID:I


# direct methods
.method constructor <init>(Lcom/sonymobile/settings/dsds/MultiSimSettings;I)V
    .locals 0

    .prologue
    .line 339
    iput-object p1, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings$3;->this$0:Lcom/sonymobile/settings/dsds/MultiSimSettings;

    iput p2, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings$3;->val$preDataConnectionID:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "index"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 341
    iget v3, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings$3;->val$preDataConnectionID:I

    if-eq p2, v3, :cond_1

    .line 342
    move v2, p2

    .line 343
    .local v2, "sub":I
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/MSimTelephonyManager;->getDataActivity()I

    move-result v3

    if-eq v3, v5, :cond_0

    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/MSimTelephonyManager;->getDataActivity()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/MSimTelephonyManager;->getDataActivity()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    .line 349
    :cond_0
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings$3;->this$0:Lcom/sonymobile/settings/dsds/MultiSimSettings;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f070822

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0707b6

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x104000a

    new-instance v5, Lcom/sonymobile/settings/dsds/MultiSimSettings$3$1;

    invoke-direct {v5, p0, v2}, Lcom/sonymobile/settings/dsds/MultiSimSettings$3$1;-><init>(Lcom/sonymobile/settings/dsds/MultiSimSettings$3;I)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/high16 v4, 0x1040000

    invoke-virtual {v3, v4, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 368
    .end local v2    # "sub":I
    :cond_1
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 369
    return-void

    .line 362
    .restart local v2    # "sub":I
    :cond_2
    invoke-static {}, Lcom/codeaurora/telephony/msim/SubscriptionManager;->getInstance()Lcom/codeaurora/telephony/msim/SubscriptionManager;

    move-result-object v0

    .line 363
    .local v0, "mSubscriptionManager":Lcom/codeaurora/telephony/msim/SubscriptionManager;
    iget-object v3, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings$3;->this$0:Lcom/sonymobile/settings/dsds/MultiSimSettings;

    # getter for: Lcom/sonymobile/settings/dsds/MultiSimSettings;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/sonymobile/settings/dsds/MultiSimSettings;->access$200(Lcom/sonymobile/settings/dsds/MultiSimSettings;)Landroid/os/Handler;

    move-result-object v3

    invoke-static {v3, v5, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 365
    .local v1, "setDdsMsg":Landroid/os/Message;
    invoke-virtual {v0, v2, v1}, Lcom/codeaurora/telephony/msim/SubscriptionManager;->setDataSubscription(ILandroid/os/Message;)V

    goto :goto_0
.end method
