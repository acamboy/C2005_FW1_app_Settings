.class public abstract Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;
.super Ljava/lang/Object;
.source "StaminaDataProviderUtils.java"


# static fields
.field private static final CONTENT_URI_BATTERY_PERCENTAGE:Landroid/net/Uri;

.field private static final CONTENT_URI_BATTERY_WITHOUT_XSSM:Landroid/net/Uri;

.field private static final CONTENT_URI_BATTERY_WITH_XSSM:Landroid/net/Uri;

.field private static final CONTENT_URI_INSTALLED_APPS:Landroid/net/Uri;

.field private static final CONTENT_URI_POWERSAVER_ENABLED:Landroid/net/Uri;

.field private static final CONTENT_URI_POWERSAVER_FEATURES:Landroid/net/Uri;

.field private static final CONTENT_URI_POWERSAVER_SHOW_ACTIVATION_DIALOG:Landroid/net/Uri;

.field private static final CONTENT_URI_POWERSAVER_THRESHOLD:Landroid/net/Uri;

.field private static final CONTENT_URI_POWERSAVER_TOGGLE_ENABLED:Landroid/net/Uri;

.field private static final CONTENT_URI_STANDBY_WITHOUT_XSSM:Landroid/net/Uri;

.field private static final CONTENT_URI_STANDBY_WITH_XSSM:Landroid/net/Uri;

.field private static final CONTENT_URI_WHITELIST:Landroid/net/Uri;

.field private static final CONTENT_URI_WHITELIST_GROUPS:Landroid/net/Uri;

.field private static final CONTENT_URI_XSSM_ENABLED:Landroid/net/Uri;

.field private static final CONTENT_URI_XSSM_SHOW_ACTIVATION_DIALOG:Landroid/net/Uri;

.field private static final CONTENT_URI_XSSM_THRESHOLD:Landroid/net/Uri;

.field private static final CONTENT_URI_XSSM_TOGGLE_ENABLED:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-string v0, "content://com.sonymobile.superstamina.xperiapowerservice.provider/xssm/whitelist/user"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->CONTENT_URI_WHITELIST:Landroid/net/Uri;

    .line 28
    const-string v0, "content://com.sonymobile.superstamina.xperiapowerservice.provider/xssm/enabled"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->CONTENT_URI_XSSM_ENABLED:Landroid/net/Uri;

    .line 31
    const-string v0, "content://com.sonymobile.superstamina.xperiapowerservice.provider/xssm/toggle_enabled"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->CONTENT_URI_XSSM_TOGGLE_ENABLED:Landroid/net/Uri;

    .line 34
    const-string v0, "content://com.sonymobile.superstamina.xperiapowerservice.provider/xssm/activation_dialog"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->CONTENT_URI_XSSM_SHOW_ACTIVATION_DIALOG:Landroid/net/Uri;

    .line 37
    const-string v0, "content://com.sonymobile.superstamina.xperiapowerservice.provider/xssm/estimates/standby_with_xssm"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->CONTENT_URI_STANDBY_WITH_XSSM:Landroid/net/Uri;

    .line 40
    const-string v0, "content://com.sonymobile.superstamina.xperiapowerservice.provider/xssm/estimates/standby_without_xssm"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->CONTENT_URI_STANDBY_WITHOUT_XSSM:Landroid/net/Uri;

    .line 43
    const-string v0, "content://com.sonymobile.superstamina.xperiapowerservice.provider/xssm/estimates/battery_with_xssm"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->CONTENT_URI_BATTERY_WITH_XSSM:Landroid/net/Uri;

    .line 46
    const-string v0, "content://com.sonymobile.superstamina.xperiapowerservice.provider/xssm/estimates/battery_without_xssm"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->CONTENT_URI_BATTERY_WITHOUT_XSSM:Landroid/net/Uri;

    .line 49
    const-string v0, "content://com.sonymobile.superstamina.xperiapowerservice.provider/xssm/battery_threshold"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->CONTENT_URI_XSSM_THRESHOLD:Landroid/net/Uri;

    .line 52
    const-string v0, "content://com.sonymobile.superstamina.xperiapowerservice.provider/battery_percentage"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->CONTENT_URI_BATTERY_PERCENTAGE:Landroid/net/Uri;

    .line 55
    const-string v0, "content://com.sonymobile.superstamina.xperiapowerservice.provider/installedApps"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->CONTENT_URI_INSTALLED_APPS:Landroid/net/Uri;

    .line 58
    const-string v0, "content://com.sonymobile.superstamina.xperiapowerservice.provider/powersaver/features"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->CONTENT_URI_POWERSAVER_FEATURES:Landroid/net/Uri;

    .line 61
    const-string v0, "content://com.sonymobile.superstamina.xperiapowerservice.provider/powersaver/enabled"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->CONTENT_URI_POWERSAVER_ENABLED:Landroid/net/Uri;

    .line 64
    const-string v0, "content://com.sonymobile.superstamina.xperiapowerservice.provider/powersaver/toggle_enabled"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->CONTENT_URI_POWERSAVER_TOGGLE_ENABLED:Landroid/net/Uri;

    .line 67
    const-string v0, "content://com.sonymobile.superstamina.xperiapowerservice.provider/powersaver/activation_dialog"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->CONTENT_URI_POWERSAVER_SHOW_ACTIVATION_DIALOG:Landroid/net/Uri;

    .line 70
    const-string v0, "content://com.sonymobile.superstamina.xperiapowerservice.provider/powersaver/battery_threshold"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->CONTENT_URI_POWERSAVER_THRESHOLD:Landroid/net/Uri;

    .line 73
    const-string v0, "content://com.sonymobile.superstamina.xperiapowerservice.provider/xssm/whitelist_groups"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->CONTENT_URI_WHITELIST_GROUPS:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBatteryTimeEstimate(Landroid/content/Context;Z)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isXssmEnabled"    # Z

    .prologue
    .line 106
    if-eqz p1, :cond_0

    sget-object v0, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->CONTENT_URI_BATTERY_WITH_XSSM:Landroid/net/Uri;

    :goto_0
    invoke-static {p0, v0}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->getTimeEstimate(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v0

    return v0

    :cond_0
    sget-object v0, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->CONTENT_URI_BATTERY_WITHOUT_XSSM:Landroid/net/Uri;

    goto :goto_0
.end method

.method public static getInstalledApplications(Landroid/content/Context;)Landroid/database/Cursor;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 170
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->CONTENT_URI_INSTALLED_APPS:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 172
    .local v6, "cursor":Landroid/database/Cursor;
    return-object v6
.end method

.method public static getPowerSaverBatteryThreshold(Landroid/content/Context;)I
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 241
    const/4 v7, 0x0

    .line 242
    .local v7, "result":I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->CONTENT_URI_POWERSAVER_THRESHOLD:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 244
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 246
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 247
    const-string v0, "threshold"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 249
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 252
    :cond_0
    return v7

    .line 249
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static getPowerSaverFeatures(Landroid/content/Context;)Landroid/database/Cursor;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 205
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->CONTENT_URI_POWERSAVER_FEATURES:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static getStandbyTimeEstimate(Landroid/content/Context;Z)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isXssmEnabled"    # Z

    .prologue
    .line 101
    if-eqz p1, :cond_0

    sget-object v0, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->CONTENT_URI_STANDBY_WITH_XSSM:Landroid/net/Uri;

    :goto_0
    invoke-static {p0, v0}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->getTimeEstimate(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v0

    return v0

    :cond_0
    sget-object v0, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->CONTENT_URI_STANDBY_WITHOUT_XSSM:Landroid/net/Uri;

    goto :goto_0
.end method

.method private static getTimeEstimate(Landroid/content/Context;Landroid/net/Uri;)I
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v2, 0x0

    .line 111
    const/4 v7, 0x0

    .line 112
    .local v7, "result":I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 113
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 115
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 116
    const-string v0, "time"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 118
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 121
    :cond_0
    return v7

    .line 118
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static getWhitelist(Landroid/content/Context;)Landroid/database/Cursor;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 80
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->CONTENT_URI_WHITELIST:Landroid/net/Uri;

    const-string v3, "user = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 82
    .local v6, "cursor":Landroid/database/Cursor;
    return-object v6
.end method

.method public static getWhitelistGroups(Landroid/content/Context;)Landroid/database/Cursor;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 321
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->CONTENT_URI_WHITELIST_GROUPS:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 323
    .local v6, "cursor":Landroid/database/Cursor;
    return-object v6
.end method

.method public static getXssmBatteryThreshold(Landroid/content/Context;)I
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 148
    const/4 v7, 0x0

    .line 149
    .local v7, "result":I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->CONTENT_URI_XSSM_THRESHOLD:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 151
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 153
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 154
    const-string v0, "threshold"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 156
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 159
    :cond_0
    return v7

    .line 156
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static isBatteryShown(Landroid/content/Context;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 125
    const/4 v7, 0x0

    .line 126
    .local v7, "result":Z
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->CONTENT_URI_BATTERY_PERCENTAGE:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 128
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 130
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 131
    const-string v0, "show_battery"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 134
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 137
    :cond_0
    return v7

    .line 134
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static isPowerSaverEnabled(Landroid/content/Context;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 210
    const/4 v7, 0x0

    .line 211
    .local v7, "result":Z
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->CONTENT_URI_POWERSAVER_ENABLED:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 213
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 215
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 216
    const-string v0, "enabled"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 218
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 221
    :cond_0
    return v7

    .line 218
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static isXssmEnabled(Landroid/content/Context;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 86
    const/4 v7, 0x0

    .line 87
    .local v7, "result":Z
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->CONTENT_URI_XSSM_ENABLED:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 89
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 91
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 92
    const-string v0, "enabled"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 94
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 97
    :cond_0
    return v7

    .line 94
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static registerPowersaveEnableObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "observer"    # Landroid/database/ContentObserver;

    .prologue
    .line 312
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->CONTENT_URI_POWERSAVER_ENABLED:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 314
    return-void
.end method

.method public static registerXssmEnableObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "observer"    # Landroid/database/ContentObserver;

    .prologue
    .line 298
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->CONTENT_URI_XSSM_ENABLED:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 300
    return-void
.end method

.method public static removePackageFromWhitelist(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 198
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->CONTENT_URI_WHITELIST:Landroid/net/Uri;

    const-string v2, "user=? and package=?"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 202
    return-void
.end method

.method public static setBatteryShown(Landroid/content/Context;Z)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "show"    # Z

    .prologue
    const/4 v3, 0x0

    .line 141
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 142
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "show_battery"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 143
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->CONTENT_URI_BATTERY_PERCENTAGE:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 145
    return-void
.end method

.method public static setPowerSaverBatteryThreshold(Landroid/content/Context;I)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "value"    # I

    .prologue
    const/4 v3, 0x0

    .line 256
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 257
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "threshold"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 258
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->CONTENT_URI_POWERSAVER_THRESHOLD:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 260
    return-void
.end method

.method public static setWhitelist(Landroid/content/Context;Ljava/util/HashSet;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 176
    .local p1, "mWhitelist":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 177
    .local v4, "user":Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 179
    .local v3, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    sget-object v5, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->CONTENT_URI_WHITELIST:Landroid/net/Uri;

    invoke-static {v5}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    const-string v6, "user=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v4, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 185
    .local v2, "item":Ljava/lang/String;
    sget-object v5, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->CONTENT_URI_WHITELIST:Landroid/net/Uri;

    invoke-static {v5}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    const-string v6, "user"

    invoke-virtual {v5, v6, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    const-string v6, "package"

    invoke-virtual {v5, v6, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 189
    .end local v2    # "item":Ljava/lang/String;
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "com.sonymobile.superstamina.xperiapowerservice.provider"

    invoke-virtual {v5, v6, v3}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 195
    return-void

    .line 190
    :catch_0
    move-exception v0

    .line 191
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 192
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 193
    .local v0, "e":Landroid/content/OperationApplicationException;
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method

.method public static setXssmBatteryThreshold(Landroid/content/Context;I)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "value"    # I

    .prologue
    const/4 v3, 0x0

    .line 163
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 164
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "threshold"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 165
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->CONTENT_URI_XSSM_THRESHOLD:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 167
    return-void
.end method

.method public static togglePowersaveEnable(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 307
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->CONTENT_URI_POWERSAVER_TOGGLE_ENABLED:Landroid/net/Uri;

    new-instance v2, Landroid/content/ContentValues;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/content/ContentValues;-><init>(I)V

    invoke-virtual {v0, v1, v2, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 309
    return-void
.end method

.method public static toggleXssmEnable(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 293
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->CONTENT_URI_XSSM_TOGGLE_ENABLED:Landroid/net/Uri;

    new-instance v2, Landroid/content/ContentValues;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/content/ContentValues;-><init>(I)V

    invoke-virtual {v0, v1, v2, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 295
    return-void
.end method

.method public static unRegisterPowersaveEnableObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "observer"    # Landroid/database/ContentObserver;

    .prologue
    .line 317
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 318
    return-void
.end method

.method public static unregisterObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "observer"    # Landroid/database/ContentObserver;

    .prologue
    .line 303
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 304
    return-void
.end method

.method public static updatePowerSaverFeature(Landroid/content/Context;Ljava/lang/String;ZI)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "enabled"    # Z
    .param p3, "param"    # I

    .prologue
    .line 233
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 234
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "overriden"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 235
    const-string v1, "param"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 236
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->CONTENT_URI_POWERSAVER_FEATURES:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, p1, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 238
    return-void
.end method
