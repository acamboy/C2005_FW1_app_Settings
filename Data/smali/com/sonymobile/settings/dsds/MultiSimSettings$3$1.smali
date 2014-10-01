.class Lcom/sonymobile/settings/dsds/MultiSimSettings$3$1;
.super Ljava/lang/Object;
.source "MultiSimSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/settings/dsds/MultiSimSettings$3;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonymobile/settings/dsds/MultiSimSettings$3;

.field final synthetic val$sub:I


# direct methods
.method constructor <init>(Lcom/sonymobile/settings/dsds/MultiSimSettings$3;I)V
    .locals 0

    .prologue
    .line 352
    iput-object p1, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings$3$1;->this$1:Lcom/sonymobile/settings/dsds/MultiSimSettings$3;

    iput p2, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings$3$1;->val$sub:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 354
    invoke-static {}, Lcom/codeaurora/telephony/msim/SubscriptionManager;->getInstance()Lcom/codeaurora/telephony/msim/SubscriptionManager;

    move-result-object v0

    .line 355
    .local v0, "mSubscriptionManager":Lcom/codeaurora/telephony/msim/SubscriptionManager;
    iget-object v2, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings$3$1;->this$1:Lcom/sonymobile/settings/dsds/MultiSimSettings$3;

    iget-object v2, v2, Lcom/sonymobile/settings/dsds/MultiSimSettings$3;->this$0:Lcom/sonymobile/settings/dsds/MultiSimSettings;

    # getter for: Lcom/sonymobile/settings/dsds/MultiSimSettings;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/sonymobile/settings/dsds/MultiSimSettings;->access$200(Lcom/sonymobile/settings/dsds/MultiSimSettings;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 357
    .local v1, "setDdsMsg":Landroid/os/Message;
    iget v2, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings$3$1;->val$sub:I

    invoke-virtual {v0, v2, v1}, Lcom/codeaurora/telephony/msim/SubscriptionManager;->setDataSubscription(ILandroid/os/Message;)V

    .line 358
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 359
    return-void
.end method
