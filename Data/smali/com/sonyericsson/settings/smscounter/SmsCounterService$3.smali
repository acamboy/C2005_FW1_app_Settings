.class Lcom/sonyericsson/settings/smscounter/SmsCounterService$3;
.super Ljava/lang/Thread;
.source "SmsCounterService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/settings/smscounter/SmsCounterService;->resetFromQuery()V
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
    .line 230
    iput-object p1, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterService$3;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 234
    iget-object v2, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterService$3;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterService;

    monitor-enter v2

    .line 238
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterService$3;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterService;

    # getter for: Lcom/sonyericsson/settings/smscounter/SmsCounterService;->SIM_NUM:I
    invoke-static {v1}, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->access$200(Lcom/sonyericsson/settings/smscounter/SmsCounterService;)I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 239
    iget-object v1, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterService$3;->this$0:Lcom/sonyericsson/settings/smscounter/SmsCounterService;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/settings/smscounter/SmsCounterService;->resetFromQueryDB(I)V

    .line 238
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 242
    :cond_0
    monitor-exit v2

    .line 243
    return-void

    .line 242
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
