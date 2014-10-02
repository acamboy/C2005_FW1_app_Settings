.class Lcom/android/settings/autostarts/LewaManageAutostarts$5;
.super Landroid/os/Handler;
.source "LewaManageAutostarts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/autostarts/LewaManageAutostarts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/autostarts/LewaManageAutostarts;


# direct methods
.method constructor <init>(Lcom/android/settings/autostarts/LewaManageAutostarts;)V
    .registers 2

    .prologue
    .line 252
    iput-object p1, p0, Lcom/android/settings/autostarts/LewaManageAutostarts$5;->this$0:Lcom/android/settings/autostarts/LewaManageAutostarts;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 256
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_2a

    .line 264
    :goto_5
    return-void

    .line 258
    :pswitch_6
    iget-object v0, p0, Lcom/android/settings/autostarts/LewaManageAutostarts$5;->this$0:Lcom/android/settings/autostarts/LewaManageAutostarts;

    # getter for: Lcom/android/settings/autostarts/LewaManageAutostarts;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/settings/autostarts/LewaManageAutostarts;->access$500(Lcom/android/settings/autostarts/LewaManageAutostarts;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 259
    iget-object v0, p0, Lcom/android/settings/autostarts/LewaManageAutostarts$5;->this$0:Lcom/android/settings/autostarts/LewaManageAutostarts;

    # getter for: Lcom/android/settings/autostarts/LewaManageAutostarts;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/settings/autostarts/LewaManageAutostarts;->access$500(Lcom/android/settings/autostarts/LewaManageAutostarts;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 260
    :cond_17
    iget-object v0, p0, Lcom/android/settings/autostarts/LewaManageAutostarts$5;->this$0:Lcom/android/settings/autostarts/LewaManageAutostarts;

    # getter for: Lcom/android/settings/autostarts/LewaManageAutostarts;->appItems:Lcom/android/settings/autostarts/LewaManageAutostarts$AppAdapter;
    invoke-static {v0}, Lcom/android/settings/autostarts/LewaManageAutostarts;->access$100(Lcom/android/settings/autostarts/LewaManageAutostarts;)Lcom/android/settings/autostarts/LewaManageAutostarts$AppAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/autostarts/LewaManageAutostarts$AppAdapter;->notifyDataSetChanged()V

    .line 261
    iget-object v0, p0, Lcom/android/settings/autostarts/LewaManageAutostarts$5;->this$0:Lcom/android/settings/autostarts/LewaManageAutostarts;

    # getter for: Lcom/android/settings/autostarts/LewaManageAutostarts;->optimizableAppItems:Lcom/android/settings/autostarts/LewaManageAutostarts$AppAdapter;
    invoke-static {v0}, Lcom/android/settings/autostarts/LewaManageAutostarts;->access$200(Lcom/android/settings/autostarts/LewaManageAutostarts;)Lcom/android/settings/autostarts/LewaManageAutostarts$AppAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/autostarts/LewaManageAutostarts$AppAdapter;->notifyDataSetChanged()V

    goto :goto_5

    .line 256
    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method
