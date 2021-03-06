.class Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListAdapter;
.super Landroid/widget/BaseAdapter;
.source "PackageDisplayListAdapter.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPackages:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mWhitelist:Lcom/sonymobile/settings/stamina/xssm/WhiteList;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/Vector;Lcom/sonymobile/settings/stamina/xssm/WhiteList;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "whitelist"    # Lcom/sonymobile/settings/stamina/xssm/WhiteList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Vector",
            "<",
            "Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;",
            ">;",
            "Lcom/sonymobile/settings/stamina/xssm/WhiteList;",
            ")V"
        }
    .end annotation

    .prologue
    .line 37
    .local p2, "packages":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListAdapter;->mContext:Landroid/content/Context;

    .line 39
    iput-object p2, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListAdapter;->mPackages:Ljava/util/Vector;

    .line 42
    iput-object p3, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListAdapter;->mWhitelist:Lcom/sonymobile/settings/stamina/xssm/WhiteList;

    .line 43
    return-void
.end method


# virtual methods
.method public commitToWhitelist()V
    .locals 6

    .prologue
    .line 94
    iget-object v5, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListAdapter;->mWhitelist:Lcom/sonymobile/settings/stamina/xssm/WhiteList;

    invoke-virtual {v5}, Lcom/sonymobile/settings/stamina/xssm/WhiteList;->getWhiteList()Ljava/util/HashSet;

    move-result-object v4

    .line 95
    .local v4, "whitelist":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListAdapter;->mWhitelist:Lcom/sonymobile/settings/stamina/xssm/WhiteList;

    invoke-virtual {v5}, Lcom/sonymobile/settings/stamina/xssm/WhiteList;->getTemporaryWhiteList()Ljava/util/HashSet;

    move-result-object v3

    .line 96
    .local v3, "temporaryWhiteList":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 97
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 98
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 99
    .local v1, "item":Ljava/lang/String;
    invoke-virtual {v3, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 100
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 105
    .end local v1    # "item":Ljava/lang/String;
    :cond_1
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 106
    .restart local v1    # "item":Ljava/lang/String;
    invoke-virtual {v4, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 108
    .end local v1    # "item":Ljava/lang/String;
    :cond_2
    iget-object v5, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v5, v4}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->setWhitelist(Landroid/content/Context;Ljava/util/HashSet;)V

    .line 109
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListAdapter;->mPackages:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "pos"    # I

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListAdapter;->mPackages:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "pos"    # I

    .prologue
    .line 57
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "pos"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const v6, 0x7f0900b1

    const v5, 0x7f09007a

    const v4, 0x7f090026

    .line 62
    if-nez p2, :cond_0

    .line 63
    iget-object v2, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 64
    .local v1, "li":Landroid/view/LayoutInflater;
    const v2, 0x7f04008e

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 67
    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p2, v6, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 68
    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p2, v4, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 69
    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p2, v5, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 72
    .end local v1    # "li":Landroid/view/LayoutInflater;
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListAdapter;->mPackages:Ljava/util/Vector;

    invoke-virtual {v2, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;

    .line 74
    .local v0, "data":Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;
    invoke-virtual {p2, v6}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    invoke-virtual {p2, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;->getApplicationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 76
    invoke-virtual {p2, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListAdapter;->mWhitelist:Lcom/sonymobile/settings/stamina/xssm/WhiteList;

    invoke-virtual {v3}, Lcom/sonymobile/settings/stamina/xssm/WhiteList;->getTemporaryWhiteList()Ljava/util/HashSet;

    move-result-object v4

    iget-object v3, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListAdapter;->mPackages:Ljava/util/Vector;

    invoke-virtual {v3, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;

    invoke-virtual {v3}, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 79
    return-object p2
.end method

.method public toggleTemporaryWhitelist(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 84
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListAdapter;->mPackages:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;

    invoke-virtual {v1}, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, "pkg":Ljava/lang/String;
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListAdapter;->mWhitelist:Lcom/sonymobile/settings/stamina/xssm/WhiteList;

    invoke-virtual {v1}, Lcom/sonymobile/settings/stamina/xssm/WhiteList;->getTemporaryWhiteList()Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 86
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListAdapter;->mWhitelist:Lcom/sonymobile/settings/stamina/xssm/WhiteList;

    invoke-virtual {v1}, Lcom/sonymobile/settings/stamina/xssm/WhiteList;->getTemporaryWhiteList()Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 88
    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListAdapter;->notifyDataSetChanged()V

    .line 89
    return-void
.end method
