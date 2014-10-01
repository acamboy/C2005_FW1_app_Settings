.class Lcom/android/settings/MultiSimRingtoneEntry$1;
.super Landroid/widget/ArrayAdapter;
.source "MultiSimRingtoneEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/MultiSimRingtoneEntry;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MultiSimRingtoneEntry;


# direct methods
.method constructor <init>(Lcom/android/settings/MultiSimRingtoneEntry;Landroid/content/Context;I[Ljava/lang/CharSequence;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;
    .param p3, "x1"    # I
    .param p4, "x2"    # [Ljava/lang/CharSequence;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/android/settings/MultiSimRingtoneEntry$1;->this$0:Lcom/android/settings/MultiSimRingtoneEntry;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v6, 0x0

    .line 92
    const/4 v3, 0x0

    .line 94
    .local v3, "view":Landroid/view/View;
    iget-object v4, p0, Lcom/android/settings/MultiSimRingtoneEntry$1;->this$0:Lcom/android/settings/MultiSimRingtoneEntry;

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Lcom/android/settings/MultiSimRingtoneEntry;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 96
    .local v0, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual {p0}, Lcom/android/settings/MultiSimRingtoneEntry$1;->getCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-eq p1, v4, :cond_0

    .line 97
    const v4, 0x1090011

    invoke-virtual {v0, v4, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 98
    const v4, 0x1020014

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 103
    .local v2, "text":Landroid/widget/TextView;
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/settings/MultiSimRingtoneEntry$1;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 104
    .local v1, "item":Ljava/lang/CharSequence;
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    return-object v3

    .line 100
    .end local v1    # "item":Ljava/lang/CharSequence;
    .end local v2    # "text":Landroid/widget/TextView;
    :cond_0
    const v4, 0x7f040073

    invoke-virtual {v0, v4, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 101
    const v4, 0x7f090139

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .restart local v2    # "text":Landroid/widget/TextView;
    goto :goto_0
.end method
