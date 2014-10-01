.class Lcom/android/settings/DataUsageSummary$AirplaneContentObserver;
.super Landroid/database/ContentObserver;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AirplaneContentObserver"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/settings/DataUsageSummary;


# direct methods
.method public constructor <init>(Lcom/android/settings/DataUsageSummary;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 2636
    iput-object p1, p0, Lcom/android/settings/DataUsageSummary$AirplaneContentObserver;->this$0:Lcom/android/settings/DataUsageSummary;

    .line 2637
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 2638
    iput-object p2, p0, Lcom/android/settings/DataUsageSummary$AirplaneContentObserver;->mContext:Landroid/content/Context;

    .line 2639
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v3, 0x1

    .line 2643
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 2644
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary$AirplaneContentObserver;->this$0:Lcom/android/settings/DataUsageSummary;

    iget-object v1, p0, Lcom/android/settings/DataUsageSummary$AirplaneContentObserver;->mContext:Landroid/content/Context;

    # invokes: Lcom/android/settings/DataUsageSummary;->isAirplaneModeOn(Landroid/content/Context;)Z
    invoke-static {v1}, Lcom/android/settings/DataUsageSummary;->access$3200(Landroid/content/Context;)Z

    move-result v1

    # setter for: Lcom/android/settings/DataUsageSummary;->mIsAirplaneModeOn:Z
    invoke-static {v0, v1}, Lcom/android/settings/DataUsageSummary;->access$3102(Lcom/android/settings/DataUsageSummary;Z)Z

    .line 2645
    const-string v0, "DataUsage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[FXN.ASD]AirplaneContentObserver! Current AirplaneMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/DataUsageSummary$AirplaneContentObserver;->this$0:Lcom/android/settings/DataUsageSummary;

    # getter for: Lcom/android/settings/DataUsageSummary;->mIsAirplaneModeOn:Z
    invoke-static {v2}, Lcom/android/settings/DataUsageSummary;->access$3100(Lcom/android/settings/DataUsageSummary;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2647
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary$AirplaneContentObserver;->this$0:Lcom/android/settings/DataUsageSummary;

    # getter for: Lcom/android/settings/DataUsageSummary;->mIsAirplaneModeOn:Z
    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->access$3100(Lcom/android/settings/DataUsageSummary;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2649
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary$AirplaneContentObserver;->this$0:Lcom/android/settings/DataUsageSummary;

    # getter for: Lcom/android/settings/DataUsageSummary;->mHandler:Lcom/android/settings/DataUsageSummary$MyHandler;
    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->access$100(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/DataUsageSummary$MyHandler;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/settings/DataUsageSummary$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2655
    :goto_0
    return-void

    .line 2653
    :cond_0
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary$AirplaneContentObserver;->this$0:Lcom/android/settings/DataUsageSummary;

    # setter for: Lcom/android/settings/DataUsageSummary;->mUpdateUiForAirplaneModeOff:Z
    invoke-static {v0, v3}, Lcom/android/settings/DataUsageSummary;->access$002(Lcom/android/settings/DataUsageSummary;Z)Z

    goto :goto_0
.end method
