.class Lcom/android/settings/SmsCounterDsdsEntry$2;
.super Ljava/lang/Object;
.source "SmsCounterDsdsEntry.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SmsCounterDsdsEntry;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SmsCounterDsdsEntry;


# direct methods
.method constructor <init>(Lcom/android/settings/SmsCounterDsdsEntry;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/android/settings/SmsCounterDsdsEntry$2;->this$0:Lcom/android/settings/SmsCounterDsdsEntry;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 125
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 126
    iget-object v0, p0, Lcom/android/settings/SmsCounterDsdsEntry$2;->this$0:Lcom/android/settings/SmsCounterDsdsEntry;

    const/4 v1, 0x0

    # setter for: Lcom/android/settings/SmsCounterDsdsEntry;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/android/settings/SmsCounterDsdsEntry;->access$002(Lcom/android/settings/SmsCounterDsdsEntry;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 127
    iget-object v0, p0, Lcom/android/settings/SmsCounterDsdsEntry$2;->this$0:Lcom/android/settings/SmsCounterDsdsEntry;

    invoke-virtual {v0}, Lcom/android/settings/SmsCounterDsdsEntry;->finish()V

    .line 128
    return-void
.end method
