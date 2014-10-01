.class Lcom/android/settings/DataUsageSummary$5;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DataUsageSummary;


# direct methods
.method constructor <init>(Lcom/android/settings/DataUsageSummary;)V
    .locals 0

    .prologue
    .line 1200
    iput-object p1, p0, Lcom/android/settings/DataUsageSummary$5;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 6
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v5, 0x1

    .line 1203
    iget-object v3, p0, Lcom/android/settings/DataUsageSummary$5;->this$0:Lcom/android/settings/DataUsageSummary;

    # getter for: Lcom/android/settings/DataUsageSummary;->mBinding:Z
    invoke-static {v3}, Lcom/android/settings/DataUsageSummary;->access$500(Lcom/android/settings/DataUsageSummary;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1225
    :goto_0
    return-void

    .line 1205
    :cond_0
    move v1, p2

    .line 1206
    .local v1, "dataEnabled":Z
    iget-object v3, p0, Lcom/android/settings/DataUsageSummary$5;->this$0:Lcom/android/settings/DataUsageSummary;

    # getter for: Lcom/android/settings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/settings/DataUsageSummary;->access$600(Lcom/android/settings/DataUsageSummary;)Ljava/lang/String;

    move-result-object v0

    .line 1207
    .local v0, "currentTab":Ljava/lang/String;
    const-string v3, "mobile"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "SIM"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1208
    :cond_1
    if-eqz v1, :cond_4

    .line 1209
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0007

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    .line 1212
    .local v2, "showDataCostWarning":Z
    if-eqz v2, :cond_3

    .line 1215
    iget-object v3, p0, Lcom/android/settings/DataUsageSummary$5;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-static {v3}, Lcom/android/settings/DataUsageSummary$ConfirmDataEnableFragment;->show(Lcom/android/settings/DataUsageSummary;)V

    .line 1224
    .end local v2    # "showDataCostWarning":Z
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/android/settings/DataUsageSummary$5;->this$0:Lcom/android/settings/DataUsageSummary;

    # invokes: Lcom/android/settings/DataUsageSummary;->updatePolicy(Z)V
    invoke-static {v3, v5}, Lcom/android/settings/DataUsageSummary;->access$800(Lcom/android/settings/DataUsageSummary;Z)V

    goto :goto_0

    .line 1217
    .restart local v2    # "showDataCostWarning":Z
    :cond_3
    iget-object v3, p0, Lcom/android/settings/DataUsageSummary$5;->this$0:Lcom/android/settings/DataUsageSummary;

    # invokes: Lcom/android/settings/DataUsageSummary;->setMobileDataEnabled(Z)V
    invoke-static {v3, v5}, Lcom/android/settings/DataUsageSummary;->access$700(Lcom/android/settings/DataUsageSummary;Z)V

    goto :goto_1

    .line 1220
    .end local v2    # "showDataCostWarning":Z
    :cond_4
    iget-object v3, p0, Lcom/android/settings/DataUsageSummary$5;->this$0:Lcom/android/settings/DataUsageSummary;

    const/4 v4, 0x0

    # invokes: Lcom/android/settings/DataUsageSummary;->setMobileDataEnabled(Z)V
    invoke-static {v3, v4}, Lcom/android/settings/DataUsageSummary;->access$700(Lcom/android/settings/DataUsageSummary;Z)V

    goto :goto_1
.end method
