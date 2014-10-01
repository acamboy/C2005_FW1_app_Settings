.class Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack$3;
.super Ljava/lang/Object;
.source "MultiSimSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;->setSIMStatus(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;

.field final synthetic val$sub1:I


# direct methods
.method constructor <init>(Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;I)V
    .locals 0

    .prologue
    .line 582
    iput-object p1, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack$3;->this$1:Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;

    iput p2, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack$3;->val$sub1:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 584
    iget-object v0, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack$3;->this$1:Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;

    iget v1, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack$3;->val$sub1:I

    invoke-virtual {v0, v1}, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;->disableIccCard(I)Z

    .line 585
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 586
    return-void
.end method
