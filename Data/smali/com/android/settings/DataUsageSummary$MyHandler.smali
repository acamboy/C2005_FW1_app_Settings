.class Lcom/android/settings/DataUsageSummary$MyHandler;
.super Landroid/os/Handler;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyHandler"
.end annotation


# instance fields
.field private mOuter:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/settings/DataUsageSummary;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/settings/DataUsageSummary;)V
    .locals 1
    .param p1, "fragment"    # Lcom/android/settings/DataUsageSummary;

    .prologue
    .line 2662
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 2663
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary$MyHandler;->mOuter:Ljava/lang/ref/WeakReference;

    .line 2664
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 2668
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary$MyHandler;->mOuter:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/DataUsageSummary;

    .line 2669
    .local v0, "outer":Lcom/android/settings/DataUsageSummary;
    if-eqz v0, :cond_0

    .line 2670
    # invokes: Lcom/android/settings/DataUsageSummary;->handleMessage(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lcom/android/settings/DataUsageSummary;->access$3300(Lcom/android/settings/DataUsageSummary;Landroid/os/Message;)V

    .line 2672
    :cond_0
    return-void
.end method
