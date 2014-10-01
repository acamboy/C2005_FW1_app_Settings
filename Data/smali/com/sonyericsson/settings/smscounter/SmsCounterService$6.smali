.class Lcom/sonyericsson/settings/smscounter/SmsCounterService$6;
.super Ljava/lang/Thread;
.source "SmsCounterService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/settings/smscounter/SmsCounterService;->onSmsDBChanged()V
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
    .line 378
    iput-object p1, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterService$6;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 24

    .prologue
    .line 381
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/settings/smscounter/SmsCounterService$6;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterService;

    move-object/from16 v22, v0

    monitor-enter v22

    .line 383
    const/16 v21, -0x1

    .line 384
    .local v21, "slotIndex":I
    const/16 v19, 0x0

    .line 385
    .local v19, "slot1CurrentCount":I
    const/16 v20, 0x0

    .line 389
    .local v20, "slot2CurrentCount":I
    :try_start_0
    const-string v2, "Dcm Sms Counter"

    const-string v7, "onSmsDBChanged"

    invoke-static {v2, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 391
    const/4 v8, 0x0

    .line 393
    .local v8, "c":Landroid/database/Cursor;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/settings/smscounter/SmsCounterService$6;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterService;

    invoke-virtual {v2}, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/settings/smscounter/SmsCounterConfig;->SENT_URI:Landroid/net/Uri;

    const/4 v7, 0x5

    new-array v4, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v23, "_id"

    aput-object v23, v4, v7

    const/4 v7, 0x1

    const-string v23, "type"

    aput-object v23, v4, v7

    const/4 v7, 0x2

    const-string v23, "date"

    aput-object v23, v4, v7

    const/4 v7, 0x3

    const-string v23, "body"

    aput-object v23, v4, v7

    const/4 v7, 0x4

    const-string v23, "sub_id"

    aput-object v23, v4, v7

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "_id desc"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 400
    if-eqz v8, :cond_8

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 401
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v10

    .line 403
    .local v10, "currentCount":I
    const-string v2, "sub_id"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    .line 404
    if-nez v21, :cond_4

    .line 405
    add-int/lit8 v19, v19, 0x1

    .line 422
    :goto_0
    # getter for: Lcom/sonyericsson/settings/smscounter/SmsCounterService;->mSmsTotalCount:[I
    invoke-static {}, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->access$600()[I

    move-result-object v2

    aget v2, v2, v21

    if-le v10, v2, :cond_7

    .line 423
    const/4 v14, 0x0

    .line 424
    .local v14, "index":I
    const-string v17, ""

    .line 425
    .local v17, "msgBody":Ljava/lang/String;
    const/16 v18, 0x1

    .line 429
    .local v18, "recordID":I
    :cond_0
    const-string v2, "body"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 430
    const-string v2, "_id"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 435
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/settings/smscounter/SmsCounterService$6;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterService;

    # getter for: Lcom/sonyericsson/settings/smscounter/SmsCounterService;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v2}, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->access$400(Lcom/sonyericsson/settings/smscounter/SmsCounterService;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    move/from16 v0, v18

    invoke-static {v2, v0}, Lcom/sonyericsson/settings/smscounter/SmsCounterTable;->isRecordIDExist(Landroid/database/sqlite/SQLiteDatabase;I)Z

    move-result v2

    if-nez v2, :cond_6

    .line 436
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/settings/smscounter/SmsCounterService$6;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterService;

    move-object/from16 v0, v17

    # invokes: Lcom/sonyericsson/settings/smscounter/SmsCounterService;->caculateLength(Ljava/lang/String;)I
    invoke-static {v2, v0}, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->access$700(Lcom/sonyericsson/settings/smscounter/SmsCounterService;Ljava/lang/String;)I

    move-result v15

    .line 437
    .local v15, "length":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_1
    if-ge v13, v15, :cond_5

    .line 439
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/settings/smscounter/SmsCounterService$6;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterService;

    move/from16 v0, v18

    move/from16 v1, v21

    # invokes: Lcom/sonyericsson/settings/smscounter/SmsCounterService;->insertSMSRecord(II)V
    invoke-static {v2, v0, v1}, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->access$800(Lcom/sonyericsson/settings/smscounter/SmsCounterService;II)V

    .line 440
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/settings/smscounter/SmsCounterService$6;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterService;

    # getter for: Lcom/sonyericsson/settings/smscounter/SmsCounterService;->mUtil:Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;
    invoke-static {v2}, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->access$000(Lcom/sonyericsson/settings/smscounter/SmsCounterService;)Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sonyericsson/settings/smscounter/SmsCounterService$6;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterService;

    # getter for: Lcom/sonyericsson/settings/smscounter/SmsCounterService;->mPrefs:[Landroid/content/SharedPreferences;
    invoke-static {v7}, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->access$100(Lcom/sonyericsson/settings/smscounter/SmsCounterService;)[Landroid/content/SharedPreferences;

    move-result-object v7

    aget-object v7, v7, v21

    move/from16 v0, v21

    invoke-virtual {v2, v7, v0}, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->getSmsCounterStatus(Landroid/content/SharedPreferences;I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 441
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/settings/smscounter/SmsCounterService$6;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterService;

    # getter for: Lcom/sonyericsson/settings/smscounter/SmsCounterService;->mUtil:Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;
    invoke-static {v2}, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->access$000(Lcom/sonyericsson/settings/smscounter/SmsCounterService;)Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sonyericsson/settings/smscounter/SmsCounterService$6;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterService;

    # getter for: Lcom/sonyericsson/settings/smscounter/SmsCounterService;->mPrefs:[Landroid/content/SharedPreferences;
    invoke-static {v7}, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->access$100(Lcom/sonyericsson/settings/smscounter/SmsCounterService;)[Landroid/content/SharedPreferences;

    move-result-object v7

    aget-object v7, v7, v21

    invoke-virtual {v2, v7}, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->getStartTimeSettings(Landroid/content/SharedPreferences;)J

    move-result-wide v3

    .line 442
    .local v3, "startTime":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/settings/smscounter/SmsCounterService$6;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterService;

    # getter for: Lcom/sonyericsson/settings/smscounter/SmsCounterService;->mUtil:Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;
    invoke-static {v2}, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->access$000(Lcom/sonyericsson/settings/smscounter/SmsCounterService;)Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sonyericsson/settings/smscounter/SmsCounterService$6;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterService;

    # getter for: Lcom/sonyericsson/settings/smscounter/SmsCounterService;->mPrefs:[Landroid/content/SharedPreferences;
    invoke-static {v7}, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->access$100(Lcom/sonyericsson/settings/smscounter/SmsCounterService;)[Landroid/content/SharedPreferences;

    move-result-object v7

    aget-object v7, v7, v21

    invoke-virtual {v2, v7}, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->getEndTimeSettings(Landroid/content/SharedPreferences;)J

    move-result-wide v5

    .line 443
    .local v5, "endTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 445
    .local v11, "currentTime":J
    cmp-long v2, v3, v11

    if-gtz v2, :cond_1

    cmp-long v2, v11, v5

    if-ltz v2, :cond_2

    .line 446
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/settings/smscounter/SmsCounterService$6;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterService;

    # getter for: Lcom/sonyericsson/settings/smscounter/SmsCounterService;->mUtil:Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;
    invoke-static {v2}, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->access$000(Lcom/sonyericsson/settings/smscounter/SmsCounterService;)Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sonyericsson/settings/smscounter/SmsCounterService$6;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterService;

    # getter for: Lcom/sonyericsson/settings/smscounter/SmsCounterService;->mPrefs:[Landroid/content/SharedPreferences;
    invoke-static {v7}, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->access$100(Lcom/sonyericsson/settings/smscounter/SmsCounterService;)[Landroid/content/SharedPreferences;

    move-result-object v7

    aget-object v7, v7, v21

    move/from16 v0, v21

    invoke-virtual {v2, v7, v0}, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->updateDateRange(Landroid/content/SharedPreferences;I)V

    .line 447
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/settings/smscounter/SmsCounterService$6;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterService;

    # getter for: Lcom/sonyericsson/settings/smscounter/SmsCounterService;->mUtil:Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;
    invoke-static {v2}, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->access$000(Lcom/sonyericsson/settings/smscounter/SmsCounterService;)Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sonyericsson/settings/smscounter/SmsCounterService$6;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterService;

    # getter for: Lcom/sonyericsson/settings/smscounter/SmsCounterService;->mPrefs:[Landroid/content/SharedPreferences;
    invoke-static {v7}, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->access$100(Lcom/sonyericsson/settings/smscounter/SmsCounterService;)[Landroid/content/SharedPreferences;

    move-result-object v7

    aget-object v7, v7, v21

    invoke-virtual {v2, v7}, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->getStartTimeSettings(Landroid/content/SharedPreferences;)J

    move-result-wide v3

    .line 448
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/settings/smscounter/SmsCounterService$6;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterService;

    # getter for: Lcom/sonyericsson/settings/smscounter/SmsCounterService;->mUtil:Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;
    invoke-static {v2}, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->access$000(Lcom/sonyericsson/settings/smscounter/SmsCounterService;)Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sonyericsson/settings/smscounter/SmsCounterService$6;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterService;

    # getter for: Lcom/sonyericsson/settings/smscounter/SmsCounterService;->mPrefs:[Landroid/content/SharedPreferences;
    invoke-static {v7}, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->access$100(Lcom/sonyericsson/settings/smscounter/SmsCounterService;)[Landroid/content/SharedPreferences;

    move-result-object v7

    aget-object v7, v7, v21

    invoke-virtual {v2, v7}, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->getEndTimeSettings(Landroid/content/SharedPreferences;)J

    move-result-wide v5

    .line 449
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/settings/smscounter/SmsCounterService$6;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterService;

    # getter for: Lcom/sonyericsson/settings/smscounter/SmsCounterService;->mUtil:Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;
    invoke-static {v2}, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->access$000(Lcom/sonyericsson/settings/smscounter/SmsCounterService;)Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;

    move-result-object v2

    invoke-virtual {v2, v5, v6}, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->setAlarmManager(J)V

    .line 452
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/settings/smscounter/SmsCounterService$6;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterService;

    # getter for: Lcom/sonyericsson/settings/smscounter/SmsCounterService;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v2}, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->access$400(Lcom/sonyericsson/settings/smscounter/SmsCounterService;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-static/range {v21 .. v21}, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->getMyPhoneIMSI(I)Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v2 .. v7}, Lcom/sonyericsson/settings/smscounter/SmsCounterTable;->getSmsCount(Landroid/database/sqlite/SQLiteDatabase;JJLjava/lang/String;)I

    move-result v9

    .line 455
    .local v9, "count":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/settings/smscounter/SmsCounterService$6;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterService;

    # getter for: Lcom/sonyericsson/settings/smscounter/SmsCounterService;->mUtil:Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;
    invoke-static {v2}, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->access$000(Lcom/sonyericsson/settings/smscounter/SmsCounterService;)Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sonyericsson/settings/smscounter/SmsCounterService$6;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterService;

    # getter for: Lcom/sonyericsson/settings/smscounter/SmsCounterService;->mPrefs:[Landroid/content/SharedPreferences;
    invoke-static {v7}, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->access$100(Lcom/sonyericsson/settings/smscounter/SmsCounterService;)[Landroid/content/SharedPreferences;

    move-result-object v7

    aget-object v7, v7, v21

    invoke-virtual {v2, v7, v9}, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->setCurrentCount(Landroid/content/SharedPreferences;I)V

    .line 456
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/settings/smscounter/SmsCounterService$6;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterService;

    # getter for: Lcom/sonyericsson/settings/smscounter/SmsCounterService;->mUtil:Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;
    invoke-static {v2}, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->access$000(Lcom/sonyericsson/settings/smscounter/SmsCounterService;)Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sonyericsson/settings/smscounter/SmsCounterService$6;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterService;

    invoke-virtual {v7}, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/settings/smscounter/SmsCounterService$6;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterService;

    move-object/from16 v23, v0

    # getter for: Lcom/sonyericsson/settings/smscounter/SmsCounterService;->mPrefs:[Landroid/content/SharedPreferences;
    invoke-static/range {v23 .. v23}, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->access$100(Lcom/sonyericsson/settings/smscounter/SmsCounterService;)[Landroid/content/SharedPreferences;

    move-result-object v23

    aget-object v23, v23, v21

    move-object/from16 v0, v23

    move/from16 v1, v21

    invoke-virtual {v2, v7, v0, v9, v1}, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->updateWidget(Landroid/content/Context;Landroid/content/SharedPreferences;II)V

    .line 459
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/settings/smscounter/SmsCounterService$6;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterService;

    # getter for: Lcom/sonyericsson/settings/smscounter/SmsCounterService;->mDBHandler:[Landroid/os/Handler;
    invoke-static {v2}, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->access$500(Lcom/sonyericsson/settings/smscounter/SmsCounterService;)[Landroid/os/Handler;

    move-result-object v2

    aget-object v2, v2, v21

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v16

    .line 460
    .local v16, "message":Landroid/os/Message;
    move-object/from16 v0, v16

    iput v9, v0, Landroid/os/Message;->arg1:I

    .line 461
    const/4 v2, 0x3

    move-object/from16 v0, v16

    iput v2, v0, Landroid/os/Message;->what:I

    .line 463
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/settings/smscounter/SmsCounterService$6;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterService;

    # getter for: Lcom/sonyericsson/settings/smscounter/SmsCounterService;->mDBHandler:[Landroid/os/Handler;
    invoke-static {v2}, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->access$500(Lcom/sonyericsson/settings/smscounter/SmsCounterService;)[Landroid/os/Handler;

    move-result-object v2

    aget-object v2, v2, v21

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 437
    .end local v3    # "startTime":J
    .end local v5    # "endTime":J
    .end local v9    # "count":I
    .end local v11    # "currentTime":J
    .end local v16    # "message":Landroid/os/Message;
    :cond_3
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_1

    .line 407
    .end local v13    # "i":I
    .end local v14    # "index":I
    .end local v15    # "length":I
    .end local v17    # "msgBody":Ljava/lang/String;
    .end local v18    # "recordID":I
    :cond_4
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_0

    .line 469
    .restart local v13    # "i":I
    .restart local v14    # "index":I
    .restart local v15    # "length":I
    .restart local v17    # "msgBody":Ljava/lang/String;
    .restart local v18    # "recordID":I
    :cond_5
    if-nez v21, :cond_a

    .line 470
    # getter for: Lcom/sonyericsson/settings/smscounter/SmsCounterService;->mSmsTotalCount:[I
    invoke-static {}, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->access$600()[I

    move-result-object v2

    aput v19, v2, v21

    .line 476
    .end local v13    # "i":I
    .end local v15    # "length":I
    :cond_6
    :goto_2
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_7

    add-int/lit8 v14, v14, 0x1

    const/16 v2, 0x32

    if-lt v14, v2, :cond_0

    .line 480
    .end local v14    # "index":I
    .end local v17    # "msgBody":Ljava/lang/String;
    .end local v18    # "recordID":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/settings/smscounter/SmsCounterService$6;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterService;

    const/4 v7, 0x0

    # invokes: Lcom/sonyericsson/settings/smscounter/SmsCounterService;->savePreference(I)V
    invoke-static {v2, v7}, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->access$900(Lcom/sonyericsson/settings/smscounter/SmsCounterService;I)V

    .line 481
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/settings/smscounter/SmsCounterService$6;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterService;

    const/4 v7, 0x1

    # invokes: Lcom/sonyericsson/settings/smscounter/SmsCounterService;->savePreference(I)V
    invoke-static {v2, v7}, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->access$900(Lcom/sonyericsson/settings/smscounter/SmsCounterService;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 485
    .end local v10    # "currentCount":I
    :cond_8
    if-eqz v8, :cond_9

    .line 486
    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 489
    :cond_9
    monitor-exit v22
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 491
    return-void

    .line 472
    .restart local v10    # "currentCount":I
    .restart local v13    # "i":I
    .restart local v14    # "index":I
    .restart local v15    # "length":I
    .restart local v17    # "msgBody":Ljava/lang/String;
    .restart local v18    # "recordID":I
    :cond_a
    :try_start_3
    # getter for: Lcom/sonyericsson/settings/smscounter/SmsCounterService;->mSmsTotalCount:[I
    invoke-static {}, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->access$600()[I

    move-result-object v2

    aput v20, v2, v21
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 485
    .end local v10    # "currentCount":I
    .end local v13    # "i":I
    .end local v14    # "index":I
    .end local v15    # "length":I
    .end local v17    # "msgBody":Ljava/lang/String;
    .end local v18    # "recordID":I
    :catchall_0
    move-exception v2

    if-eqz v8, :cond_b

    .line 486
    :try_start_4
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_b
    throw v2

    .line 489
    .end local v8    # "c":Landroid/database/Cursor;
    :catchall_1
    move-exception v2

    monitor-exit v22
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v2
.end method
