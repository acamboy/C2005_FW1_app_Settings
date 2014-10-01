.class Lcom/sonyericsson/settings/smscounter/SmsCounterSettings$5;
.super Ljava/lang/Object;
.source "SmsCounterSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;

.field final synthetic val$cycleDayPicker:Landroid/widget/NumberPicker;


# direct methods
.method constructor <init>(Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;Landroid/widget/NumberPicker;)V
    .locals 0

    .prologue
    .line 661
    iput-object p1, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings$5;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;

    iput-object p2, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings$5;->val$cycleDayPicker:Landroid/widget/NumberPicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 663
    iget-object v2, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings$5;->val$cycleDayPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v2}, Landroid/widget/NumberPicker;->getValue()I

    move-result v0

    .line 664
    .local v0, "cycleDay":I
    iget-object v2, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings$5;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;

    # getter for: Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mSettings:Landroid/content/SharedPreferences;
    invoke-static {v2}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->access$1600(Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 666
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "sms_counter_startDay"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 667
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sms_counter_startDay"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings$5;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;

    # getter for: Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->mSim:I
    invoke-static {v3}, Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;->access$000(Lcom/sonyericsson/settings/smscounter/SmsCounterSettings;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 669
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 674
    const-string v2, "Dcm Sms CounterDSDS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Saved count monthly cycle starts at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    return-void
.end method
