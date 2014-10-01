.class Lcom/android/settings/MultiSimRingtoneEntry$3;
.super Ljava/lang/Object;
.source "MultiSimRingtoneEntry.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/MultiSimRingtoneEntry;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MultiSimRingtoneEntry;


# direct methods
.method constructor <init>(Lcom/android/settings/MultiSimRingtoneEntry;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/android/settings/MultiSimRingtoneEntry$3;->this$0:Lcom/android/settings/MultiSimRingtoneEntry;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 111
    const/4 v0, 0x0

    .line 112
    .local v0, "cancel":Z
    const/4 v1, 0x2

    if-ne p2, v1, :cond_0

    .line 113
    const/4 v0, 0x1

    .line 116
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 117
    if-nez v0, :cond_2

    .line 118
    iget-object v2, p0, Lcom/android/settings/MultiSimRingtoneEntry$3;->this$0:Lcom/android/settings/MultiSimRingtoneEntry;

    if-nez p2, :cond_1

    const/4 v1, 0x1

    :goto_0
    # setter for: Lcom/android/settings/MultiSimRingtoneEntry;->mIsFirstSub:Z
    invoke-static {v2, v1}, Lcom/android/settings/MultiSimRingtoneEntry;->access$102(Lcom/android/settings/MultiSimRingtoneEntry;Z)Z

    .line 119
    iget-object v1, p0, Lcom/android/settings/MultiSimRingtoneEntry$3;->this$0:Lcom/android/settings/MultiSimRingtoneEntry;

    invoke-virtual {v1}, Lcom/android/settings/MultiSimRingtoneEntry;->prepareRingtonePickerIntent()V

    .line 123
    :goto_1
    return-void

    .line 118
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 121
    :cond_2
    iget-object v1, p0, Lcom/android/settings/MultiSimRingtoneEntry$3;->this$0:Lcom/android/settings/MultiSimRingtoneEntry;

    invoke-virtual {v1}, Lcom/android/settings/MultiSimRingtoneEntry;->finish()V

    goto :goto_1
.end method
