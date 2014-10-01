.class Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack$2;
.super Landroid/database/ContentObserver;
.source "MultiSimSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;


# direct methods
.method constructor <init>(Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 469
    iput-object p1, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack$2;->this$1:Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 472
    iget-object v0, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack$2;->this$1:Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;

    invoke-virtual {v0}, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;->onUpdate()V

    .line 473
    return-void
.end method
