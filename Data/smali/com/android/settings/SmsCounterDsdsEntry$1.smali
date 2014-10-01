.class Lcom/android/settings/SmsCounterDsdsEntry$1;
.super Landroid/widget/ArrayAdapter;
.source "SmsCounterDsdsEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SmsCounterDsdsEntry;->onResume()V
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
.field final synthetic this$0:Lcom/android/settings/SmsCounterDsdsEntry;


# direct methods
.method constructor <init>(Lcom/android/settings/SmsCounterDsdsEntry;Landroid/content/Context;I[Ljava/lang/CharSequence;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;
    .param p3, "x1"    # I
    .param p4, "x2"    # [Ljava/lang/CharSequence;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/settings/SmsCounterDsdsEntry$1;->this$0:Lcom/android/settings/SmsCounterDsdsEntry;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 103
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 104
    .local v0, "view":Landroid/view/View;
    return-object v0
.end method
