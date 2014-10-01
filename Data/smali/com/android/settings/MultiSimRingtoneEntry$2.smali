.class Lcom/android/settings/MultiSimRingtoneEntry$2;
.super Ljava/lang/Object;
.source "MultiSimRingtoneEntry.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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
    .line 124
    iput-object p1, p0, Lcom/android/settings/MultiSimRingtoneEntry$2;->this$0:Lcom/android/settings/MultiSimRingtoneEntry;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 126
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 127
    iget-object v0, p0, Lcom/android/settings/MultiSimRingtoneEntry$2;->this$0:Lcom/android/settings/MultiSimRingtoneEntry;

    const/4 v1, 0x0

    # setter for: Lcom/android/settings/MultiSimRingtoneEntry;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/android/settings/MultiSimRingtoneEntry;->access$002(Lcom/android/settings/MultiSimRingtoneEntry;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 128
    iget-object v0, p0, Lcom/android/settings/MultiSimRingtoneEntry$2;->this$0:Lcom/android/settings/MultiSimRingtoneEntry;

    invoke-virtual {v0}, Lcom/android/settings/MultiSimRingtoneEntry;->finish()V

    .line 129
    return-void
.end method
