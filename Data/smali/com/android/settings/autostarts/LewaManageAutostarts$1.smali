.class Lcom/android/settings/autostarts/LewaManageAutostarts$1;
.super Ljava/lang/Object;
.source "LewaManageAutostarts.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/autostarts/LewaManageAutostarts;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
    .line 131
    iput-object p1, p0, Lcom/android/settings/autostarts/LewaManageAutostarts$1;->this$0:Lcom/android/settings/autostarts/LewaManageAutostarts;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 8
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 136
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v0, 0x0

    .line 137
    .local v0, "item":Lcom/android/settings/autostarts/AppItem;
    iget-object v1, p0, Lcom/android/settings/autostarts/LewaManageAutostarts$1;->this$0:Lcom/android/settings/autostarts/LewaManageAutostarts;

    # getter for: Lcom/android/settings/autostarts/LewaManageAutostarts;->showOptimizeList:Z
    invoke-static {v1}, Lcom/android/settings/autostarts/LewaManageAutostarts;->access$000(Lcom/android/settings/autostarts/LewaManageAutostarts;)Z

    move-result v1

    if-nez v1, :cond_1d

    .line 138
    iget-object v1, p0, Lcom/android/settings/autostarts/LewaManageAutostarts$1;->this$0:Lcom/android/settings/autostarts/LewaManageAutostarts;

    # getter for: Lcom/android/settings/autostarts/LewaManageAutostarts;->appItems:Lcom/android/settings/autostarts/LewaManageAutostarts$AppAdapter;
    invoke-static {v1}, Lcom/android/settings/autostarts/LewaManageAutostarts;->access$100(Lcom/android/settings/autostarts/LewaManageAutostarts;)Lcom/android/settings/autostarts/LewaManageAutostarts$AppAdapter;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/android/settings/autostarts/LewaManageAutostarts$AppAdapter;->getItem(I)Lcom/android/settings/autostarts/AppItem;

    move-result-object v0

    .line 142
    :goto_13
    iget-boolean v1, v0, Lcom/android/settings/autostarts/AppItem;->checked:Z

    if-eqz v1, :cond_28

    .line 143
    iget-object v1, p0, Lcom/android/settings/autostarts/LewaManageAutostarts$1;->this$0:Lcom/android/settings/autostarts/LewaManageAutostarts;

    invoke-virtual {v1, v0}, Lcom/android/settings/autostarts/LewaManageAutostarts;->closeAutoStartApp(Lcom/android/settings/autostarts/AppItem;)V

    .line 147
    :goto_1c
    return-void

    .line 140
    :cond_1d
    iget-object v1, p0, Lcom/android/settings/autostarts/LewaManageAutostarts$1;->this$0:Lcom/android/settings/autostarts/LewaManageAutostarts;

    # getter for: Lcom/android/settings/autostarts/LewaManageAutostarts;->optimizableAppItems:Lcom/android/settings/autostarts/LewaManageAutostarts$AppAdapter;
    invoke-static {v1}, Lcom/android/settings/autostarts/LewaManageAutostarts;->access$200(Lcom/android/settings/autostarts/LewaManageAutostarts;)Lcom/android/settings/autostarts/LewaManageAutostarts$AppAdapter;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/android/settings/autostarts/LewaManageAutostarts$AppAdapter;->getItem(I)Lcom/android/settings/autostarts/AppItem;

    move-result-object v0

    goto :goto_13

    .line 145
    :cond_28
    iget-object v1, p0, Lcom/android/settings/autostarts/LewaManageAutostarts$1;->this$0:Lcom/android/settings/autostarts/LewaManageAutostarts;

    invoke-virtual {v1, v0}, Lcom/android/settings/autostarts/LewaManageAutostarts;->startAutoStartApp(Lcom/android/settings/autostarts/AppItem;)V

    goto :goto_1c
.end method
