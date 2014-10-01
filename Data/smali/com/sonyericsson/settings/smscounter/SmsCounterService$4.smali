.class Lcom/sonyericsson/settings/smscounter/SmsCounterService$4;
.super Landroid/os/AsyncTask;
.source "SmsCounterService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/settings/smscounter/SmsCounterService;->resetFromAirMode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "[",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterService;


# direct methods
.method constructor <init>(Lcom/sonyericsson/settings/smscounter/SmsCounterService;)V
    .locals 0

    .prologue
    .line 277
    iput-object p1, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterService$4;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 277
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/settings/smscounter/SmsCounterService$4;->doInBackground([Ljava/lang/Void;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)[Ljava/lang/String;
    .locals 6
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 281
    const/4 v4, 0x2

    new-array v3, v4, [Ljava/lang/String;

    .line 282
    .local v3, "newPhoneIMSI":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterService$4;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterService;

    # getter for: Lcom/sonyericsson/settings/smscounter/SmsCounterService;->SIM_NUM:I
    invoke-static {v4}, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->access$200(Lcom/sonyericsson/settings/smscounter/SmsCounterService;)I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 283
    iget-object v4, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterService$4;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterService;

    # getter for: Lcom/sonyericsson/settings/smscounter/SmsCounterService;->mUtil:Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;
    invoke-static {v4}, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->access$000(Lcom/sonyericsson/settings/smscounter/SmsCounterService;)Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->getPhoneIMSI(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    .line 282
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 285
    :cond_0
    const/4 v2, 0x0

    .line 287
    .local v2, "index":I
    :cond_1
    const/4 v1, 0x0

    :goto_1
    iget-object v4, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterService$4;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterService;

    # getter for: Lcom/sonyericsson/settings/smscounter/SmsCounterService;->SIM_NUM:I
    invoke-static {v4}, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->access$200(Lcom/sonyericsson/settings/smscounter/SmsCounterService;)I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 288
    iget-object v4, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterService$4;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterService;

    # getter for: Lcom/sonyericsson/settings/smscounter/SmsCounterService;->mUtil:Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;
    invoke-static {v4}, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->access$000(Lcom/sonyericsson/settings/smscounter/SmsCounterService;)Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->getPhoneIMSI(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    .line 287
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 295
    :cond_2
    const-wide/16 v4, 0x3e8

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 299
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 302
    const/4 v4, 0x0

    aget-object v4, v3, v4

    const-string v5, "11111111"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x1

    aget-object v4, v3, v4

    const-string v5, "11111111"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/16 v4, 0xa

    if-lt v2, v4, :cond_1

    .line 304
    :cond_3
    return-object v3

    .line 296
    :catch_0
    move-exception v0

    .line 297
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 277
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/settings/smscounter/SmsCounterService$4;->onPostExecute([Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute([Ljava/lang/String;)V
    .locals 10
    .param p1, "result"    # [Ljava/lang/String;

    .prologue
    .line 309
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterService$4;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterService;

    # getter for: Lcom/sonyericsson/settings/smscounter/SmsCounterService;->SIM_NUM:I
    invoke-static {v0}, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->access$200(Lcom/sonyericsson/settings/smscounter/SmsCounterService;)I

    move-result v0

    if-ge v7, v0, :cond_1

    .line 310
    iget-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterService$4;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterService;

    aget-object v5, p1, v7

    iget-object v9, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterService$4;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterService;

    # getter for: Lcom/sonyericsson/settings/smscounter/SmsCounterService;->mPrefs:[Landroid/content/SharedPreferences;
    invoke-static {v9}, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->access$100(Lcom/sonyericsson/settings/smscounter/SmsCounterService;)[Landroid/content/SharedPreferences;

    move-result-object v9

    aget-object v9, v9, v7

    # invokes: Lcom/sonyericsson/settings/smscounter/SmsCounterService;->setMyPhoneIMSI(Ljava/lang/String;Landroid/content/SharedPreferences;I)V
    invoke-static {v0, v5, v9, v7}, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->access$300(Lcom/sonyericsson/settings/smscounter/SmsCounterService;Ljava/lang/String;Landroid/content/SharedPreferences;I)V

    .line 311
    iget-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterService$4;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterService;

    # getter for: Lcom/sonyericsson/settings/smscounter/SmsCounterService;->mUtil:Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;
    invoke-static {v0}, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->access$000(Lcom/sonyericsson/settings/smscounter/SmsCounterService;)Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;

    move-result-object v0

    iget-object v5, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterService$4;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterService;

    # getter for: Lcom/sonyericsson/settings/smscounter/SmsCounterService;->mPrefs:[Landroid/content/SharedPreferences;
    invoke-static {v5}, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->access$100(Lcom/sonyericsson/settings/smscounter/SmsCounterService;)[Landroid/content/SharedPreferences;

    move-result-object v5

    aget-object v5, v5, v7

    invoke-virtual {v0, v5, v7}, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->getSmsCounterStatus(Landroid/content/SharedPreferences;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterService$4;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterService;

    # getter for: Lcom/sonyericsson/settings/smscounter/SmsCounterService;->mUtil:Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;
    invoke-static {v0}, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->access$000(Lcom/sonyericsson/settings/smscounter/SmsCounterService;)Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;

    move-result-object v0

    iget-object v5, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterService$4;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterService;

    # getter for: Lcom/sonyericsson/settings/smscounter/SmsCounterService;->mPrefs:[Landroid/content/SharedPreferences;
    invoke-static {v5}, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->access$100(Lcom/sonyericsson/settings/smscounter/SmsCounterService;)[Landroid/content/SharedPreferences;

    move-result-object v5

    aget-object v5, v5, v7

    invoke-virtual {v0, v5}, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->getStartTimeSettings(Landroid/content/SharedPreferences;)J

    move-result-wide v1

    .line 313
    .local v1, "startTime":J
    iget-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterService$4;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterService;

    # getter for: Lcom/sonyericsson/settings/smscounter/SmsCounterService;->mUtil:Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;
    invoke-static {v0}, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->access$000(Lcom/sonyericsson/settings/smscounter/SmsCounterService;)Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;

    move-result-object v0

    iget-object v5, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterService$4;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterService;

    # getter for: Lcom/sonyericsson/settings/smscounter/SmsCounterService;->mPrefs:[Landroid/content/SharedPreferences;
    invoke-static {v5}, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->access$100(Lcom/sonyericsson/settings/smscounter/SmsCounterService;)[Landroid/content/SharedPreferences;

    move-result-object v5

    aget-object v5, v5, v7

    invoke-virtual {v0, v5}, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->getEndTimeSettings(Landroid/content/SharedPreferences;)J

    move-result-wide v3

    .line 314
    .local v3, "endTime":J
    iget-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterService$4;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterService;

    # getter for: Lcom/sonyericsson/settings/smscounter/SmsCounterService;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v0}, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->access$400(Lcom/sonyericsson/settings/smscounter/SmsCounterService;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    aget-object v5, p1, v7

    invoke-static/range {v0 .. v5}, Lcom/sonyericsson/settings/smscounter/SmsCounterTable;->getSmsCount(Landroid/database/sqlite/SQLiteDatabase;JJLjava/lang/String;)I

    move-result v6

    .line 316
    .local v6, "count":I
    iget-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterService$4;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterService;

    # getter for: Lcom/sonyericsson/settings/smscounter/SmsCounterService;->mUtil:Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;
    invoke-static {v0}, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->access$000(Lcom/sonyericsson/settings/smscounter/SmsCounterService;)Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;

    move-result-object v0

    iget-object v5, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterService$4;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterService;

    # getter for: Lcom/sonyericsson/settings/smscounter/SmsCounterService;->mPrefs:[Landroid/content/SharedPreferences;
    invoke-static {v5}, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->access$100(Lcom/sonyericsson/settings/smscounter/SmsCounterService;)[Landroid/content/SharedPreferences;

    move-result-object v5

    aget-object v5, v5, v7

    invoke-virtual {v0, v5, v6}, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->setCurrentCount(Landroid/content/SharedPreferences;I)V

    .line 317
    iget-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterService$4;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterService;

    # getter for: Lcom/sonyericsson/settings/smscounter/SmsCounterService;->mUtil:Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;
    invoke-static {v0}, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->access$000(Lcom/sonyericsson/settings/smscounter/SmsCounterService;)Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->updateWidget()V

    .line 319
    iget-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterService$4;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterService;

    # getter for: Lcom/sonyericsson/settings/smscounter/SmsCounterService;->mDBHandler:[Landroid/os/Handler;
    invoke-static {v0}, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->access$500(Lcom/sonyericsson/settings/smscounter/SmsCounterService;)[Landroid/os/Handler;

    move-result-object v0

    aget-object v0, v0, v7

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v8

    .line 320
    .local v8, "message":Landroid/os/Message;
    iput v6, v8, Landroid/os/Message;->arg1:I

    .line 321
    const/4 v0, 0x1

    iput v0, v8, Landroid/os/Message;->what:I

    .line 323
    iget-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterService$4;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterService;

    # getter for: Lcom/sonyericsson/settings/smscounter/SmsCounterService;->mDBHandler:[Landroid/os/Handler;
    invoke-static {v0}, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->access$500(Lcom/sonyericsson/settings/smscounter/SmsCounterService;)[Landroid/os/Handler;

    move-result-object v0

    aget-object v0, v0, v7

    invoke-virtual {v0, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 309
    .end local v1    # "startTime":J
    .end local v3    # "endTime":J
    .end local v6    # "count":I
    .end local v8    # "message":Landroid/os/Message;
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 326
    :cond_1
    return-void
.end method
