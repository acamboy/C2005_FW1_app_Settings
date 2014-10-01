.class Lcom/android/settings/ApnSettings$RestoreApnProcessHandler;
.super Landroid/os/Handler;
.source "ApnSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ApnSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RestoreApnProcessHandler"
.end annotation


# instance fields
.field private mRestoreApnUiHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/android/settings/ApnSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/ApnSettings;Landroid/os/Looper;Landroid/os/Handler;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "restoreApnUiHandler"    # Landroid/os/Handler;

    .prologue
    .line 457
    iput-object p1, p0, Lcom/android/settings/ApnSettings$RestoreApnProcessHandler;->this$0:Lcom/android/settings/ApnSettings;

    .line 458
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 459
    iput-object p3, p0, Lcom/android/settings/ApnSettings$RestoreApnProcessHandler;->mRestoreApnUiHandler:Landroid/os/Handler;

    .line 460
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x0

    .line 464
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 502
    :cond_0
    :goto_0
    return-void

    .line 466
    :pswitch_0
    iget-object v4, p0, Lcom/android/settings/ApnSettings$RestoreApnProcessHandler;->this$0:Lcom/android/settings/ApnSettings;

    invoke-virtual {v4}, Lcom/android/settings/ApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 469
    .local v3, "resolver":Landroid/content/ContentResolver;
    iget-object v4, p0, Lcom/android/settings/ApnSettings$RestoreApnProcessHandler;->this$0:Lcom/android/settings/ApnSettings;

    # getter for: Lcom/android/settings/ApnSettings;->mSubscription:I
    invoke-static {v4}, Lcom/android/settings/ApnSettings;->access$500(Lcom/android/settings/ApnSettings;)I

    move-result v4

    if-nez v4, :cond_1

    .line 470
    const-string v4, "ApnSettings"

    const-string v5, "Darren modify Restore SIM1 to default!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    # getter for: Lcom/android/settings/ApnSettings;->DEFAULTAPN_URI_SIM1:Landroid/net/Uri;
    invoke-static {}, Lcom/android/settings/ApnSettings;->access$600()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4, v6, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 478
    :goto_1
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.sonyericsson.action.APN_RESET_TO_DEFAULT"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 479
    .local v2, "resetIntent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/settings/ApnSettings$RestoreApnProcessHandler;->this$0:Lcom/android/settings/ApnSettings;

    invoke-virtual {v4}, Lcom/android/settings/ApnSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 481
    .local v1, "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 482
    iget-object v4, p0, Lcom/android/settings/ApnSettings$RestoreApnProcessHandler;->this$0:Lcom/android/settings/ApnSettings;

    invoke-virtual {v4, v2}, Lcom/android/settings/ApnSettings;->sendBroadcast(Landroid/content/Intent;)V

    .line 488
    :goto_2
    iget-object v4, p0, Lcom/android/settings/ApnSettings$RestoreApnProcessHandler;->this$0:Lcom/android/settings/ApnSettings;

    invoke-virtual {v4}, Lcom/android/settings/ApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0009

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 489
    iget-object v4, p0, Lcom/android/settings/ApnSettings$RestoreApnProcessHandler;->this$0:Lcom/android/settings/ApnSettings;

    invoke-virtual {v4}, Lcom/android/settings/ApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "default_tether_dun_apn"

    invoke-static {v4, v5}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 492
    .local v0, "defaultApnDataString":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 493
    iget-object v4, p0, Lcom/android/settings/ApnSettings$RestoreApnProcessHandler;->this$0:Lcom/android/settings/ApnSettings;

    invoke-virtual {v4}, Lcom/android/settings/ApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "tether_dun_apn"

    invoke-static {v4, v5, v0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 473
    .end local v0    # "defaultApnDataString":Ljava/lang/String;
    .end local v1    # "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v2    # "resetIntent":Landroid/content/Intent;
    :cond_1
    const-string v4, "ApnSettings"

    const-string v5, "Darren modify Restore SIM2 to default!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    # getter for: Lcom/android/settings/ApnSettings;->DEFAULTAPN_URI_SIM2:Landroid/net/Uri;
    invoke-static {}, Lcom/android/settings/ApnSettings;->access$700()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4, v6, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1

    .line 484
    .restart local v1    # "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v2    # "resetIntent":Landroid/content/Intent;
    :cond_2
    iget-object v4, p0, Lcom/android/settings/ApnSettings$RestoreApnProcessHandler;->mRestoreApnUiHandler:Landroid/os/Handler;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_2

    .line 464
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
