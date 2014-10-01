.class Lcom/android/settings/SmsCounterDsdsEntry$3;
.super Ljava/lang/Object;
.source "SmsCounterDsdsEntry.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 108
    iput-object p1, p0, Lcom/android/settings/SmsCounterDsdsEntry$3;->this$0:Lcom/android/settings/SmsCounterDsdsEntry;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/settings/SmsCounterDsdsEntry$3;->this$0:Lcom/android/settings/SmsCounterDsdsEntry;

    # getter for: Lcom/android/settings/SmsCounterDsdsEntry;->startDataUsageSummary:Landroid/content/Intent;
    invoke-static {v0}, Lcom/android/settings/SmsCounterDsdsEntry;->access$100(Lcom/android/settings/SmsCounterDsdsEntry;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 111
    iget-object v0, p0, Lcom/android/settings/SmsCounterDsdsEntry$3;->this$0:Lcom/android/settings/SmsCounterDsdsEntry;

    # getter for: Lcom/android/settings/SmsCounterDsdsEntry;->startDataUsageSummary:Landroid/content/Intent;
    invoke-static {v0}, Lcom/android/settings/SmsCounterDsdsEntry;->access$100(Lcom/android/settings/SmsCounterDsdsEntry;)Landroid/content/Intent;

    move-result-object v0

    const v1, 0x8000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 113
    if-nez p2, :cond_0

    .line 114
    iget-object v0, p0, Lcom/android/settings/SmsCounterDsdsEntry$3;->this$0:Lcom/android/settings/SmsCounterDsdsEntry;

    # getter for: Lcom/android/settings/SmsCounterDsdsEntry;->startDataUsageSummary:Landroid/content/Intent;
    invoke-static {v0}, Lcom/android/settings/SmsCounterDsdsEntry;->access$100(Lcom/android/settings/SmsCounterDsdsEntry;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.android.settings.SmsCounterSettingsActivity.Sim1"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 119
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 120
    iget-object v0, p0, Lcom/android/settings/SmsCounterDsdsEntry$3;->this$0:Lcom/android/settings/SmsCounterDsdsEntry;

    iget-object v1, p0, Lcom/android/settings/SmsCounterDsdsEntry$3;->this$0:Lcom/android/settings/SmsCounterDsdsEntry;

    # getter for: Lcom/android/settings/SmsCounterDsdsEntry;->startDataUsageSummary:Landroid/content/Intent;
    invoke-static {v1}, Lcom/android/settings/SmsCounterDsdsEntry;->access$100(Lcom/android/settings/SmsCounterDsdsEntry;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/SmsCounterDsdsEntry;->startActivity(Landroid/content/Intent;)V

    .line 121
    iget-object v0, p0, Lcom/android/settings/SmsCounterDsdsEntry$3;->this$0:Lcom/android/settings/SmsCounterDsdsEntry;

    invoke-virtual {v0}, Lcom/android/settings/SmsCounterDsdsEntry;->finish()V

    .line 122
    return-void

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/android/settings/SmsCounterDsdsEntry$3;->this$0:Lcom/android/settings/SmsCounterDsdsEntry;

    # getter for: Lcom/android/settings/SmsCounterDsdsEntry;->startDataUsageSummary:Landroid/content/Intent;
    invoke-static {v0}, Lcom/android/settings/SmsCounterDsdsEntry;->access$100(Lcom/android/settings/SmsCounterDsdsEntry;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.android.settings.SmsCounterSettingsActivity.Sim2"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method
