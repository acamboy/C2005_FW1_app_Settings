.class public Lcom/sonymobile/settings/dsds/SimManager;
.super Ljava/lang/Object;
.source "SimManager.java"


# static fields
.field private static SIM1_LABLE:Ljava/lang/String;

.field private static SIM2_LABLE:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-string v0, "SIM1"

    sput-object v0, Lcom/sonymobile/settings/dsds/SimManager;->SIM1_LABLE:Ljava/lang/String;

    .line 36
    const-string v0, "SIM2"

    sput-object v0, Lcom/sonymobile/settings/dsds/SimManager;->SIM2_LABLE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSim1Name(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "sContext"    # Landroid/content/Context;

    .prologue
    .line 40
    const-string v0, ""

    .line 43
    .local v0, "name":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "sim1_name"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 45
    const-string v2, "SIMManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSim1Name is  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    :goto_0
    return-object v0

    .line 46
    :catch_0
    move-exception v1

    .line 47
    .local v1, "snfe":Ljava/lang/Exception;
    const-string v2, "SIMManager"

    const-string v3, "Settings Exception Reading Sim1 Name Values"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static getSim2Name(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "sContext"    # Landroid/content/Context;

    .prologue
    .line 55
    const-string v0, ""

    .line 58
    .local v0, "name":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "sim2_name"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 60
    const-string v2, "SIMManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSim2Name is  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :goto_0
    return-object v0

    .line 61
    :catch_0
    move-exception v1

    .line 62
    .local v1, "snfe":Ljava/lang/Exception;
    const-string v2, "SIMManager"

    const-string v3, "Settings Exception Reading Sim2 Name Values"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static getSimCardName(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2
    .param p0, "sContext"    # Landroid/content/Context;
    .param p1, "sub"    # I

    .prologue
    .line 70
    const-string v0, ""

    .line 72
    .local v0, "name":Ljava/lang/String;
    const/4 v1, 0x1

    if-gt p1, v1, :cond_0

    if-gez p1, :cond_1

    .line 73
    :cond_0
    const/4 v1, 0x0

    .line 76
    :goto_0
    return-object v1

    .line 75
    :cond_1
    if-nez p1, :cond_2

    invoke-static {p0}, Lcom/sonymobile/settings/dsds/SimManager;->getSim1Name(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    move-object v1, v0

    .line 76
    goto :goto_0

    .line 75
    :cond_2
    invoke-static {p0}, Lcom/sonymobile/settings/dsds/SimManager;->getSim2Name(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public static setSim1Name(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p0, "sContext"    # Landroid/content/Context;
    .param p1, "sim1"    # Ljava/lang/String;

    .prologue
    .line 81
    const-string v1, "DualSIM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sim1 ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "sim1_name"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :goto_0
    return-void

    .line 85
    :catch_0
    move-exception v0

    .line 86
    .local v0, "snfe":Ljava/lang/Exception;
    const-string v1, "SIMManager"

    const-string v2, "Settings Exception Puting Sim1 Name Values"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static setSim2Name(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "sContext"    # Landroid/content/Context;
    .param p1, "sim2"    # Ljava/lang/String;

    .prologue
    .line 94
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "sim2_name"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    :goto_0
    return-void

    .line 96
    :catch_0
    move-exception v0

    .line 97
    .local v0, "snfe":Ljava/lang/Exception;
    const-string v1, "SIMManager"

    const-string v2, "Settings Exception Puting Sim2 Name Values"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
