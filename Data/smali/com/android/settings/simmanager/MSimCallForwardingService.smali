.class public Lcom/android/settings/simmanager/MSimCallForwardingService;
.super Landroid/app/Service;
.source "MSimCallForwardingService.java"


# instance fields
.field private actionCF:I

.field private count:I

.field isFromSwitch:Z

.field private mHandler:Landroid/os/Handler;

.field private sim:Ljava/lang/String;

.field private sim1Number:Ljava/lang/String;

.field private sim1Phone:Lcom/android/internal/telephony/Phone;

.field private sim2Number:Ljava/lang/String;

.field private sim2Phone:Lcom/android/internal/telephony/Phone;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/simmanager/MSimCallForwardingService;->count:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/simmanager/MSimCallForwardingService;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/simmanager/MSimCallForwardingService;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/android/settings/simmanager/MSimCallForwardingService;->handleSetCFResponse(Landroid/os/Message;)V

    return-void
.end method

.method private handleSetCFResponse(Landroid/os/Message;)V
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 128
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 129
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_4

    .line 130
    const-string v1, "MSimCallForwardingService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SetSCF fail, ar.exception="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " count:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/settings/simmanager/MSimCallForwardingService;->count:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    const-string v0, "sim1"

    iget-object v1, p0, Lcom/android/settings/simmanager/MSimCallForwardingService;->sim:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    const-wide/16 v0, 0x12c

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/android/settings/simmanager/MSimCallForwardingService;->isFromSwitch:Z

    if-nez v0, :cond_2

    .line 140
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL_FORWARD_UPDATE_ON_ERROR_EVENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p0, v0}, Lcom/android/settings/simmanager/MSimCallForwardingService;->sendBroadcast(Landroid/content/Intent;)V

    .line 150
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/simmanager/MSimCallForwardingService;->stopSelf()V

    .line 151
    const-string v0, "MSimCallForwardingService"

    const-string v1, "Stop self"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :goto_2
    return-void

    .line 142
    :cond_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v4, :cond_3

    .line 143
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL_FORWARD_ON_ERROR_EVENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p0, v0}, Lcom/android/settings/simmanager/MSimCallForwardingService;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    .line 145
    :cond_3
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_1

    .line 146
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL_FORWARD_OFF_ERROR_EVENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p0, v0}, Lcom/android/settings/simmanager/MSimCallForwardingService;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    .line 154
    :cond_4
    const-string v0, "MSimCallForwardingService"

    const-string v1, "SetCF success"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    const-string v0, "sim2"

    iget-object v1, p0, Lcom/android/settings/simmanager/MSimCallForwardingService;->sim:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 156
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v4, :cond_5

    .line 157
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL_FORWARD_ON_DONE_EVENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 158
    invoke-virtual {p0, v0}, Lcom/android/settings/simmanager/MSimCallForwardingService;->sendBroadcast(Landroid/content/Intent;)V

    .line 160
    :cond_5
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_6

    .line 161
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL_FORWARD_OFF_DONE_EVENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p0, v0}, Lcom/android/settings/simmanager/MSimCallForwardingService;->sendBroadcast(Landroid/content/Intent;)V

    .line 165
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/simmanager/MSimCallForwardingService;->stopSelf()V

    .line 166
    const-string v0, "MSimCallForwardingService"

    const-string v1, "Stop self"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 169
    :cond_7
    new-instance v1, Landroid/content/Intent;

    const-class v0, Lcom/android/settings/simmanager/MSimCallForwardingService;

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 170
    const-string v0, "sim1Number"

    iget-object v2, p0, Lcom/android/settings/simmanager/MSimCallForwardingService;->sim1Number:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 171
    const-string v0, "sim2Number"

    iget-object v2, p0, Lcom/android/settings/simmanager/MSimCallForwardingService;->sim2Number:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 172
    const-string v0, "sim"

    const-string v2, "sim2"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 173
    const-string v2, "isFromSwitch"

    iget-boolean v0, p0, Lcom/android/settings/simmanager/MSimCallForwardingService;->isFromSwitch:Z

    if-eqz v0, :cond_8

    const-string v0, "TRUE"

    :goto_3
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 174
    const-string v0, "actionCF"

    iget v2, p0, Lcom/android/settings/simmanager/MSimCallForwardingService;->actionCF:I

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 175
    invoke-virtual {p0, v1}, Lcom/android/settings/simmanager/MSimCallForwardingService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_2

    .line 173
    :cond_8
    const-string v0, "FALSE"

    goto :goto_3

    .line 135
    :catch_0
    move-exception v0

    goto/16 :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "arg0"    # Landroid/content/Intent;

    .prologue
    .line 123
    const-string v0, "MSimCallForwardingService"

    const-string v1, ": onBind() - Binding is not supported!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 4

    .prologue
    .line 58
    const-string v2, "MSimCallForwardingService"

    const-string v3, ": onCreate"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 60
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/codeaurora/telephony/msim/MSimPhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/simmanager/MSimCallForwardingService;->sim1Phone:Lcom/android/internal/telephony/Phone;

    .line 61
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/codeaurora/telephony/msim/MSimPhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/simmanager/MSimCallForwardingService;->sim2Phone:Lcom/android/internal/telephony/Phone;

    .line 63
    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "MSimCallForwardService"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 64
    .local v0, "callForwardThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 65
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    .line 66
    .local v1, "looper":Landroid/os/Looper;
    if-eqz v1, :cond_0

    .line 67
    new-instance v2, Lcom/android/settings/simmanager/MSimCallForwardingService$1;

    invoke-direct {v2, p0, v1}, Lcom/android/settings/simmanager/MSimCallForwardingService$1;-><init>(Lcom/android/settings/simmanager/MSimCallForwardingService;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/settings/simmanager/MSimCallForwardingService;->mHandler:Landroid/os/Handler;

    .line 78
    :cond_0
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v8, 0x2

    const/4 v4, 0x0

    const/4 v2, 0x3

    const/4 v7, 0x1

    .line 82
    const-string v0, "MSimCallForwardingService"

    const-string v1, ": onStartCommand"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    if-nez p1, :cond_1

    .line 117
    :cond_0
    :goto_0
    return v8

    .line 86
    :cond_1
    const-string v0, "sim"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/simmanager/MSimCallForwardingService;->sim:Ljava/lang/String;

    .line 87
    const-string v0, "sim1Number"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/simmanager/MSimCallForwardingService;->sim1Number:Ljava/lang/String;

    .line 88
    const-string v0, "sim2Number"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/simmanager/MSimCallForwardingService;->sim2Number:Ljava/lang/String;

    .line 89
    const-string v0, "TRUE"

    const-string v1, "isFromSwitch"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/simmanager/MSimCallForwardingService;->isFromSwitch:Z

    .line 91
    const-string v0, "MSimCallForwardingService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sim1 number: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/simmanager/MSimCallForwardingService;->sim1Number:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    const-string v0, "MSimCallForwardingService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sim2 number: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/simmanager/MSimCallForwardingService;->sim2Number:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    const-string v0, "actionCF"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/simmanager/MSimCallForwardingService;->actionCF:I

    .line 95
    const-string v0, "sim1"

    iget-object v1, p0, Lcom/android/settings/simmanager/MSimCallForwardingService;->sim:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 96
    iget-object v0, p0, Lcom/android/settings/simmanager/MSimCallForwardingService;->sim1Phone:Lcom/android/internal/telephony/Phone;

    iget v1, p0, Lcom/android/settings/simmanager/MSimCallForwardingService;->actionCF:I

    iget-object v3, p0, Lcom/android/settings/simmanager/MSimCallForwardingService;->sim2Number:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/settings/simmanager/MSimCallForwardingService;->mHandler:Landroid/os/Handler;

    iget v6, p0, Lcom/android/settings/simmanager/MSimCallForwardingService;->actionCF:I

    invoke-virtual {v5, v7, v6, v7}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V

    .line 103
    const-string v0, "MSimCallForwardingService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Set sim1 call forwarding "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/android/settings/simmanager/MSimCallForwardingService;->actionCF:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :cond_2
    const-string v0, "sim2"

    iget-object v1, p0, Lcom/android/settings/simmanager/MSimCallForwardingService;->sim:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/android/settings/simmanager/MSimCallForwardingService;->sim2Phone:Lcom/android/internal/telephony/Phone;

    iget v1, p0, Lcom/android/settings/simmanager/MSimCallForwardingService;->actionCF:I

    iget-object v3, p0, Lcom/android/settings/simmanager/MSimCallForwardingService;->sim1Number:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/settings/simmanager/MSimCallForwardingService;->mHandler:Landroid/os/Handler;

    iget v6, p0, Lcom/android/settings/simmanager/MSimCallForwardingService;->actionCF:I

    invoke-virtual {v5, v7, v6, v7}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V

    .line 114
    const-string v0, "MSimCallForwardingService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set sim2 call forwarding "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/simmanager/MSimCallForwardingService;->actionCF:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
