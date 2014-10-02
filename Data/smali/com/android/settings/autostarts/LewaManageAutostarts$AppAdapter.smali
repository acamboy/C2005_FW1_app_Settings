.class Lcom/android/settings/autostarts/LewaManageAutostarts$AppAdapter;
.super Landroid/widget/BaseAdapter;
.source "LewaManageAutostarts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/autostarts/LewaManageAutostarts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AppAdapter"
.end annotation


# instance fields
.field protected context:Landroid/content/Context;

.field protected inflater:Landroid/view/LayoutInflater;

.field protected list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/autostarts/AppItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/settings/autostarts/LewaManageAutostarts;


# direct methods
.method public constructor <init>(Lcom/android/settings/autostarts/LewaManageAutostarts;Landroid/view/LayoutInflater;)V
    .registers 4
    .param p2, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    .line 274
    iput-object p1, p0, Lcom/android/settings/autostarts/LewaManageAutostarts$AppAdapter;->this$0:Lcom/android/settings/autostarts/LewaManageAutostarts;

    .line 275
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 276
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/autostarts/LewaManageAutostarts$AppAdapter;->list:Ljava/util/List;

    .line 277
    return-void
.end method


# virtual methods
.method public add(Lcom/android/settings/autostarts/AppItem;)V
    .registers 3
    .param p1, "item"    # Lcom/android/settings/autostarts/AppItem;

    .prologue
    .line 280
    iget-object v0, p0, Lcom/android/settings/autostarts/LewaManageAutostarts$AppAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 281
    return-void
.end method

.method public clear()V
    .registers 2

    .prologue
    .line 284
    iget-object v0, p0, Lcom/android/settings/autostarts/LewaManageAutostarts$AppAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 285
    return-void
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/settings/autostarts/LewaManageAutostarts$AppAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/android/settings/autostarts/AppItem;
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 294
    iget-object v0, p0, Lcom/android/settings/autostarts/LewaManageAutostarts$AppAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/autostarts/AppItem;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # I

    .prologue
    .line 268
    invoke-virtual {p0, p1}, Lcom/android/settings/autostarts/LewaManageAutostarts$AppAdapter;->getItem(I)Lcom/android/settings/autostarts/AppItem;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 299
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 13
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v8, 0x1

    .line 304
    if-nez p2, :cond_11

    .line 305
    iget-object v5, p0, Lcom/android/settings/autostarts/LewaManageAutostarts$AppAdapter;->this$0:Lcom/android/settings/autostarts/LewaManageAutostarts;

    # getter for: Lcom/android/settings/autostarts/LewaManageAutostarts;->mLayoutInflater:Landroid/view/LayoutInflater;
    invoke-static {v5}, Lcom/android/settings/autostarts/LewaManageAutostarts;->access$600(Lcom/android/settings/autostarts/LewaManageAutostarts;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f0400b7 #manage_autostarts_item

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 306
    :cond_11
    const v5, 0x7f090026 #icon

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 307
    .local v3, "imageview":Landroid/widget/ImageView;
    invoke-virtual {p0, p1}, Lcom/android/settings/autostarts/LewaManageAutostarts$AppAdapter;->getItem(I)Lcom/android/settings/autostarts/AppItem;

    move-result-object v5

    iget-object v2, v5, Lcom/android/settings/autostarts/AppItem;->icon:Landroid/graphics/drawable/Drawable;

    .line 308
    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 309
    const v5, 0x7f09024a #appName

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 310
    .local v0, "appName":Landroid/widget/TextView;
    invoke-virtual {p0, p1}, Lcom/android/settings/autostarts/LewaManageAutostarts$AppAdapter;->getItem(I)Lcom/android/settings/autostarts/AppItem;

    move-result-object v5

    iget-object v5, v5, Lcom/android/settings/autostarts/AppItem;->appName:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 311
    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 312
    const v5, 0x7f090016 #status

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 313
    .local v4, "status":Landroid/widget/TextView;
    invoke-virtual {p0, p1}, Lcom/android/settings/autostarts/LewaManageAutostarts$AppAdapter;->getItem(I)Lcom/android/settings/autostarts/AppItem;

    move-result-object v5

    iget-object v5, v5, Lcom/android/settings/autostarts/AppItem;->status:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 315
    const v5, 0x7f0900ba #app_on_sdcard

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 316
    .local v1, "check":Landroid/widget/CheckBox;
    invoke-virtual {p0, p1}, Lcom/android/settings/autostarts/LewaManageAutostarts$AppAdapter;->getItem(I)Lcom/android/settings/autostarts/AppItem;

    move-result-object v5

    iget-boolean v5, v5, Lcom/android/settings/autostarts/AppItem;->checked:Z

    if-eqz v5, :cond_5f

    .line 317
    invoke-virtual {v1, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 320
    :goto_5e
    return-object p2

    .line 319
    :cond_5f
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_5e
.end method
