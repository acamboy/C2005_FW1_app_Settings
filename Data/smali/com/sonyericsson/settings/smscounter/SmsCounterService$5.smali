.class Lcom/sonyericsson/settings/smscounter/SmsCounterService$5;
.super Ljava/lang/Thread;
.source "SmsCounterService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/settings/smscounter/SmsCounterService;->resetFromBoot()V
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
    .line 341
    iput-object p1, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterService$5;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 345
    iget-object v9, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterService$5;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterService;

    monitor-enter v9

    .line 350
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterService$5;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterService;

    # getter for: Lcom/sonyericsson/settings/smscounter/SmsCounterService;->mUtil:Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;
    invoke-static {v0}, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->access$000(Lcom/sonyericsson/settings/smscounter/SmsCounterService;)Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->getDefaultSlotIndex()I

    move-result v8

    .line 352
    .local v8, "slotIndex":I
    iget-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterService$5;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterService;

    # getter for: Lcom/sonyericsson/settings/smscounter/SmsCounterService;->mUtil:Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;
    invoke-static {v0}, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->access$000(Lcom/sonyericsson/settings/smscounter/SmsCounterService;)Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;

    move-result-object v0

    iget-object v10, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterService$5;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterService;

    # getter for: Lcom/sonyericsson/settings/smscounter/SmsCounterService;->mPrefs:[Landroid/content/SharedPreferences;
    invoke-static {v10}, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->access$100(Lcom/sonyericsson/settings/smscounter/SmsCounterService;)[Landroid/content/SharedPreferences;

    move-result-object v10

    aget-object v10, v10, v8

    invoke-virtual {v0, v10, v8}, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->getSmsCounterStatus(Landroid/content/SharedPreferences;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterService$5;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterService;

    # getter for: Lcom/sonyericsson/settings/smscounter/SmsCounterService;->mUtil:Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;
    invoke-static {v0}, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->access$000(Lcom/sonyericsson/settings/smscounter/SmsCounterService;)Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;

    move-result-object v0

    iget-object v10, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterService$5;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterService;

    # getter for: Lcom/sonyericsson/settings/smscounter/SmsCounterService;->mPrefs:[Landroid/content/SharedPreferences;
    invoke-static {v10}, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->access$100(Lcom/sonyericsson/settings/smscounter/SmsCounterService;)[Landroid/content/SharedPreferences;

    move-result-object v10

    aget-object v10, v10, v8

    invoke-virtual {v0, v10}, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->getSavedPhoneIMSI(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v5

    .line 355
    .local v5, "savedPhoneIMSI":Ljava/lang/String;
    iget-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterService$5;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterService;

    # getter for: Lcom/sonyericsson/settings/smscounter/SmsCounterService;->mUtil:Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;
    invoke-static {v0}, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->access$000(Lcom/sonyericsson/settings/smscounter/SmsCounterService;)Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;

    move-result-object v0

    iget-object v10, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterService$5;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterService;

    # getter for: Lcom/sonyericsson/settings/smscounter/SmsCounterService;->mPrefs:[Landroid/content/SharedPreferences;
    invoke-static {v10}, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->access$100(Lcom/sonyericsson/settings/smscounter/SmsCounterService;)[Landroid/content/SharedPreferences;

    move-result-object v10

    aget-object v10, v10, v8

    invoke-virtual {v0, v10}, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->getStartTimeSettings(Landroid/content/SharedPreferences;)J

    move-result-wide v1

    .line 356
    .local v1, "startTime":J
    iget-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterService$5;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterService;

    # getter for: Lcom/sonyericsson/settings/smscounter/SmsCounterService;->mUtil:Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;
    invoke-static {v0}, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->access$000(Lcom/sonyericsson/settings/smscounter/SmsCounterService;)Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;

    move-result-object v0

    iget-object v10, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterService$5;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterService;

    # getter for: Lcom/sonyericsson/settings/smscounter/SmsCounterService;->mPrefs:[Landroid/content/SharedPreferences;
    invoke-static {v10}, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->access$100(Lcom/sonyericsson/settings/smscounter/SmsCounterService;)[Landroid/content/SharedPreferences;

    move-result-object v10

    aget-object v10, v10, v8

    invoke-virtual {v0, v10}, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->getEndTimeSettings(Landroid/content/SharedPreferences;)J

    move-result-wide v3

    .line 357
    .local v3, "endTime":J
    iget-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterService$5;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterService;

    # getter for: Lcom/sonyericsson/settings/smscounter/SmsCounterService;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v0}, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->access$400(Lcom/sonyericsson/settings/smscounter/SmsCounterService;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-static/range {v0 .. v5}, Lcom/sonyericsson/settings/smscounter/SmsCounterTable;->getSmsCount(Landroid/database/sqlite/SQLiteDatabase;JJLjava/lang/String;)I

    move-result v6

    .line 359
    .local v6, "count":I
    iget-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterService$5;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterService;

    # getter for: Lcom/sonyericsson/settings/smscounter/SmsCounterService;->mUtil:Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;
    invoke-static {v0}, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->access$000(Lcom/sonyericsson/settings/smscounter/SmsCounterService;)Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;

    move-result-object v0

    iget-object v10, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterService$5;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterService;

    # getter for: Lcom/sonyericsson/settings/smscounter/SmsCounterService;->mPrefs:[Landroid/content/SharedPreferences;
    invoke-static {v10}, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->access$100(Lcom/sonyericsson/settings/smscounter/SmsCounterService;)[Landroid/content/SharedPreferences;

    move-result-object v10

    aget-object v10, v10, v8

    invoke-virtual {v0, v10, v6}, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->setCurrentCount(Landroid/content/SharedPreferences;I)V

    .line 360
    iget-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterService$5;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterService;

    # getter for: Lcom/sonyericsson/settings/smscounter/SmsCounterService;->mUtil:Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;
    invoke-static {v0}, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->access$000(Lcom/sonyericsson/settings/smscounter/SmsCounterService;)Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->updateWidget()V

    .line 362
    iget-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterService$5;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterService;

    # getter for: Lcom/sonyericsson/settings/smscounter/SmsCounterService;->mDBHandler:[Landroid/os/Handler;
    invoke-static {v0}, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->access$500(Lcom/sonyericsson/settings/smscounter/SmsCounterService;)[Landroid/os/Handler;

    move-result-object v0

    aget-object v0, v0, v8

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v7

    .line 363
    .local v7, "message":Landroid/os/Message;
    iput v6, v7, Landroid/os/Message;->arg1:I

    .line 364
    const/4 v0, 0x2

    iput v0, v7, Landroid/os/Message;->what:I

    .line 366
    iget-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterService$5;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterService;

    # getter for: Lcom/sonyericsson/settings/smscounter/SmsCounterService;->mDBHandler:[Landroid/os/Handler;
    invoke-static {v0}, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->access$500(Lcom/sonyericsson/settings/smscounter/SmsCounterService;)[Landroid/os/Handler;

    move-result-object v0

    aget-object v0, v0, v8

    invoke-virtual {v0, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 368
    .end local v1    # "startTime":J
    .end local v3    # "endTime":J
    .end local v5    # "savedPhoneIMSI":Ljava/lang/String;
    .end local v6    # "count":I
    .end local v7    # "message":Landroid/os/Message;
    :cond_0
    monitor-exit v9

    .line 369
    return-void

    .line 368
    .end local v8    # "slotIndex":I
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
