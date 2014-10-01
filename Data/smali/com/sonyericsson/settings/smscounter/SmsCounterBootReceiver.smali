.class public Lcom/sonyericsson/settings/smscounter/SmsCounterBootReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SmsCounterBootReceiver.java"


# static fields
.field public static simState:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x2

    new-array v0, v0, [Z

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sonyericsson/settings/smscounter/SmsCounterBootReceiver;->simState:[Z

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 26
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 30
    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 35
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/sonyericsson/settings/smscounter/SmsCounterService;

    invoke-direct {v0, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 36
    const-string v2, "com.sonyericsson.settings.smscounter.BOOT_COMPLETED"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 37
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 38
    :cond_1
    const-string v3, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 43
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/sonyericsson/settings/smscounter/SmsCounterService;

    invoke-direct {v0, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 44
    const-string v2, "com.sonyericsson.settings.smscounter.AIRPLANE_MODE_CHANGED"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 45
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 46
    :cond_2
    const-string v3, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "android.intent.action.TIME_SET"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 58
    :cond_3
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "auto_time"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-lez v2, :cond_4

    move v0, v1

    .line 64
    :cond_4
    :goto_1
    if-nez v0, :cond_0

    .line 65
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/sonyericsson/settings/smscounter/SmsCounterService;

    invoke-direct {v0, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 66
    const-string v2, "com.sonyericsson.settings.smscounter.DB_QUERY"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 67
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 69
    :cond_5
    const-string v0, "android.intent.action.ACTION_DEFAULT_SUBSCRIPTION_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 74
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/sonyericsson/settings/smscounter/SmsCounterService;

    invoke-direct {v0, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 75
    const-string v2, "com.sonyericsson.settings.smscounter.DB_QUERY"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 76
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 77
    :cond_6
    const-string v0, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    new-instance v0, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;

    invoke-direct {v0, p1}, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;-><init>(Landroid/content/Context;)V

    .line 108
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/sonyericsson/settings/smscounter/SmsCounterService;

    invoke-direct {v0, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 109
    const-string v2, "com.sonyericsson.settings.smscounter.DB_QUERY"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 110
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 60
    :catch_0
    move-exception v2

    goto :goto_1
.end method
