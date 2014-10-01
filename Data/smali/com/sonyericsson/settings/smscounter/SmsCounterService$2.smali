.class Lcom/sonyericsson/settings/smscounter/SmsCounterService$2;
.super Landroid/os/Handler;
.source "SmsCounterService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/settings/smscounter/SmsCounterService;->initHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterService;


# direct methods
.method constructor <init>(Lcom/sonyericsson/settings/smscounter/SmsCounterService;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterService$2;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x1

    .line 126
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 127
    iget-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterService$2;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterService;

    # getter for: Lcom/sonyericsson/settings/smscounter/SmsCounterService;->mUtil:Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;
    invoke-static {v0}, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->access$000(Lcom/sonyericsson/settings/smscounter/SmsCounterService;)Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->getWarningLevel1(I)I

    move-result v3

    .line 128
    .local v3, "warningLevel1":I
    iget-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterService$2;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterService;

    # getter for: Lcom/sonyericsson/settings/smscounter/SmsCounterService;->mUtil:Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;
    invoke-static {v0}, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->access$000(Lcom/sonyericsson/settings/smscounter/SmsCounterService;)Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->getWarningLevel2(I)I

    move-result v4

    .line 129
    .local v4, "warningLevel2":I
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 141
    :goto_0
    return-void

    .line 133
    :pswitch_0
    iget-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterService$2;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterService;

    # getter for: Lcom/sonyericsson/settings/smscounter/SmsCounterService;->mUtil:Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;
    invoke-static {v0}, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->access$000(Lcom/sonyericsson/settings/smscounter/SmsCounterService;)Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterService$2;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterService;

    # getter for: Lcom/sonyericsson/settings/smscounter/SmsCounterService;->mPrefs:[Landroid/content/SharedPreferences;
    invoke-static {v1}, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->access$100(Lcom/sonyericsson/settings/smscounter/SmsCounterService;)[Landroid/content/SharedPreferences;

    move-result-object v1

    aget-object v1, v1, v5

    iget v2, p1, Landroid/os/Message;->arg1:I

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->checkWarningStatus(Landroid/content/SharedPreferences;IIIZI)V

    .line 134
    iget-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterService$2;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterService;

    # getter for: Lcom/sonyericsson/settings/smscounter/SmsCounterService;->mUtil:Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;
    invoke-static {v0}, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->access$000(Lcom/sonyericsson/settings/smscounter/SmsCounterService;)Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterService$2;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterService;

    invoke-virtual {v1}, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterService$2;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterService;

    # getter for: Lcom/sonyericsson/settings/smscounter/SmsCounterService;->mPrefs:[Landroid/content/SharedPreferences;
    invoke-static {v2}, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->access$100(Lcom/sonyericsson/settings/smscounter/SmsCounterService;)[Landroid/content/SharedPreferences;

    move-result-object v2

    aget-object v2, v2, v5

    iget v6, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1, v2, v6, v5}, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->updateWidget(Landroid/content/Context;Landroid/content/SharedPreferences;II)V

    goto :goto_0

    .line 138
    :pswitch_1
    iget-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterService$2;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterService;

    # getter for: Lcom/sonyericsson/settings/smscounter/SmsCounterService;->mUtil:Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;
    invoke-static {v0}, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->access$000(Lcom/sonyericsson/settings/smscounter/SmsCounterService;)Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;

    move-result-object v6

    iget-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterService$2;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterService;

    # getter for: Lcom/sonyericsson/settings/smscounter/SmsCounterService;->mPrefs:[Landroid/content/SharedPreferences;
    invoke-static {v0}, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->access$100(Lcom/sonyericsson/settings/smscounter/SmsCounterService;)[Landroid/content/SharedPreferences;

    move-result-object v0

    aget-object v7, v0, v5

    iget v8, p1, Landroid/os/Message;->arg1:I

    const/4 v11, 0x0

    move v9, v3

    move v10, v4

    move v12, v5

    invoke-virtual/range {v6 .. v12}, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->checkWarningStatus(Landroid/content/SharedPreferences;IIIZI)V

    goto :goto_0

    .line 129
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
