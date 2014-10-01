.class Lcom/android/settings/fuelgauge/PowerUsageDetail$1;
.super Ljava/lang/Object;
.source "PowerUsageDetail.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fuelgauge/PowerUsageDetail;->fillDetailsSection()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fuelgauge/PowerUsageDetail;


# direct methods
.method constructor <init>(Lcom/android/settings/fuelgauge/PowerUsageDetail;)V
    .locals 0

    .prologue
    .line 359
    iput-object p1, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail$1;->this$0:Lcom/android/settings/fuelgauge/PowerUsageDetail;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail$1;->this$0:Lcom/android/settings/fuelgauge/PowerUsageDetail;

    # getter for: Lcom/android/settings/fuelgauge/PowerUsageDetail;->mDetailsParent:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->access$000(Lcom/android/settings/fuelgauge/PowerUsageDetail;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 362
    return-void
.end method
