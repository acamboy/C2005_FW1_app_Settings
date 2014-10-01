.class Lcom/android/settings/users/AppRestrictionsFragment$EditUserPhotoController$3;
.super Ljava/lang/Object;
.source "AppRestrictionsFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/users/AppRestrictionsFragment$EditUserPhotoController;->showUpdatePhotoPopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/users/AppRestrictionsFragment$EditUserPhotoController;

.field final synthetic val$items:Ljava/util/List;

.field final synthetic val$listPopupWindow:Landroid/widget/ListPopupWindow;


# direct methods
.method constructor <init>(Lcom/android/settings/users/AppRestrictionsFragment$EditUserPhotoController;Ljava/util/List;Landroid/widget/ListPopupWindow;)V
    .locals 0

    .prologue
    .line 1213
    iput-object p1, p0, Lcom/android/settings/users/AppRestrictionsFragment$EditUserPhotoController$3;->this$0:Lcom/android/settings/users/AppRestrictionsFragment$EditUserPhotoController;

    iput-object p2, p0, Lcom/android/settings/users/AppRestrictionsFragment$EditUserPhotoController$3;->val$items:Ljava/util/List;

    iput-object p3, p0, Lcom/android/settings/users/AppRestrictionsFragment$EditUserPhotoController$3;->val$listPopupWindow:Landroid/widget/ListPopupWindow;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
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
    .line 1216
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/android/settings/users/AppRestrictionsFragment$EditUserPhotoController$3;->val$items:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/users/AppRestrictionsFragment$EditUserPhotoController$AdapterItem;

    .line 1217
    .local v0, "item":Lcom/android/settings/users/AppRestrictionsFragment$EditUserPhotoController$AdapterItem;
    iget v1, v0, Lcom/android/settings/users/AppRestrictionsFragment$EditUserPhotoController$AdapterItem;->id:I

    packed-switch v1, :pswitch_data_0

    .line 1229
    :goto_0
    return-void

    .line 1219
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings/users/AppRestrictionsFragment$EditUserPhotoController$3;->this$0:Lcom/android/settings/users/AppRestrictionsFragment$EditUserPhotoController;

    # invokes: Lcom/android/settings/users/AppRestrictionsFragment$EditUserPhotoController;->choosePhoto()V
    invoke-static {v1}, Lcom/android/settings/users/AppRestrictionsFragment$EditUserPhotoController;->access$2800(Lcom/android/settings/users/AppRestrictionsFragment$EditUserPhotoController;)V

    .line 1220
    iget-object v1, p0, Lcom/android/settings/users/AppRestrictionsFragment$EditUserPhotoController$3;->val$listPopupWindow:Landroid/widget/ListPopupWindow;

    invoke-virtual {v1}, Landroid/widget/ListPopupWindow;->dismiss()V

    goto :goto_0

    .line 1223
    :pswitch_1
    iget-object v1, p0, Lcom/android/settings/users/AppRestrictionsFragment$EditUserPhotoController$3;->this$0:Lcom/android/settings/users/AppRestrictionsFragment$EditUserPhotoController;

    # invokes: Lcom/android/settings/users/AppRestrictionsFragment$EditUserPhotoController;->takePhoto()V
    invoke-static {v1}, Lcom/android/settings/users/AppRestrictionsFragment$EditUserPhotoController;->access$2900(Lcom/android/settings/users/AppRestrictionsFragment$EditUserPhotoController;)V

    .line 1224
    iget-object v1, p0, Lcom/android/settings/users/AppRestrictionsFragment$EditUserPhotoController$3;->val$listPopupWindow:Landroid/widget/ListPopupWindow;

    invoke-virtual {v1}, Landroid/widget/ListPopupWindow;->dismiss()V

    goto :goto_0

    .line 1217
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
