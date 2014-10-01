.class Lcom/android/settings/simmanager/MSimCallForwardingService$1;
.super Landroid/os/Handler;
.source "MSimCallForwardingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/simmanager/MSimCallForwardingService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/simmanager/MSimCallForwardingService;


# direct methods
.method constructor <init>(Lcom/android/settings/simmanager/MSimCallForwardingService;Landroid/os/Looper;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/settings/simmanager/MSimCallForwardingService$1;->this$0:Lcom/android/settings/simmanager/MSimCallForwardingService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 70
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 75
    :goto_0
    return-void

    .line 72
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/simmanager/MSimCallForwardingService$1;->this$0:Lcom/android/settings/simmanager/MSimCallForwardingService;

    # invokes: Lcom/android/settings/simmanager/MSimCallForwardingService;->handleSetCFResponse(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lcom/android/settings/simmanager/MSimCallForwardingService;->access$000(Lcom/android/settings/simmanager/MSimCallForwardingService;Landroid/os/Message;)V

    goto :goto_0

    .line 70
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
