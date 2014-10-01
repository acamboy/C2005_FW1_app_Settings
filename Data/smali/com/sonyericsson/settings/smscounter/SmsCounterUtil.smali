.class public Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;
.super Ljava/lang/Object;
.source "SmsCounterUtil.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field mTelephonyManager:Landroid/telephony/MSimTelephonyManager;

.field private final sBuilder:Ljava/lang/StringBuilder;

.field private final sFormatter:Ljava/util/Formatter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->sBuilder:Ljava/lang/StringBuilder;

    .line 204
    new-instance v0, Ljava/util/Formatter;

    iget-object v1, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->sBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->sFormatter:Ljava/util/Formatter;

    .line 56
    iput-object p1, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->mContext:Landroid/content/Context;

    .line 58
    iget-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->mContext:Landroid/content/Context;

    const-string v1, "phone_msim"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/MSimTelephonyManager;

    iput-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->mTelephonyManager:Landroid/telephony/MSimTelephonyManager;

    .line 60
    return-void
.end method

.method private update(ILjava/lang/String;Landroid/content/SharedPreferences;)V
    .locals 32
    .param p1, "selectedValue"    # I
    .param p2, "currentCycle"    # Ljava/lang/String;
    .param p3, "prefs"    # Landroid/content/SharedPreferences;

    .prologue
    .line 120
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v25

    .line 121
    .local v25, "cal":Ljava/util/Calendar;
    const/4 v3, 0x1

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 122
    .local v8, "year":I
    const/4 v3, 0x2

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 123
    .local v7, "month":I
    const-wide/16 v30, 0x0

    .line 124
    .local v30, "start":J
    const-wide/16 v22, 0x0

    .line 125
    .local v22, "end":J
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    .line 126
    .local v2, "time":Landroid/text/format/Time;
    const-string v3, "0"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 127
    const/4 v3, 0x5

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v26

    .line 129
    .local v26, "current":I
    move/from16 v0, p1

    move/from16 v1, v26

    if-gt v0, v1, :cond_3

    .line 130
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move/from16 v6, p1

    invoke-virtual/range {v2 .. v8}, Landroid/text/format/Time;->set(IIIIII)V

    .line 131
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v30

    .line 132
    const/16 v3, 0xb

    if-eq v7, v3, :cond_0

    .line 133
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    add-int/lit8 v14, v7, 0x1

    move-object v9, v2

    move v15, v8

    invoke-virtual/range {v9 .. v15}, Landroid/text/format/Time;->set(IIIIII)V

    .line 138
    :goto_0
    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->getActualMaximum(I)I

    move-result v13

    .line 139
    .local v13, "nextMax":I
    add-int/lit8 v3, p1, -0x1

    if-le v3, v13, :cond_1

    .line 140
    const/16 v10, 0x3b

    const/16 v11, 0x3b

    const/16 v12, 0x17

    add-int/lit8 v14, v7, 0x1

    move-object v9, v2

    move v15, v8

    invoke-virtual/range {v9 .. v15}, Landroid/text/format/Time;->set(IIIIII)V

    .line 148
    :goto_1
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v22

    move-wide/from16 v20, v30

    .end local v13    # "nextMax":I
    .end local v26    # "current":I
    .end local v30    # "start":J
    .local v20, "start":J
    :goto_2
    move-object/from16 v19, p0

    move-object/from16 v24, p3

    .line 187
    invoke-virtual/range {v19 .. v24}, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->saveDateRangeToPreference(JJLandroid/content/SharedPreferences;)V

    .line 188
    return-void

    .line 135
    .end local v20    # "start":J
    .restart local v26    # "current":I
    .restart local v30    # "start":J
    :cond_0
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    add-int/lit8 v15, v8, 0x1

    move-object v9, v2

    invoke-virtual/range {v9 .. v15}, Landroid/text/format/Time;->set(IIIIII)V

    goto :goto_0

    .line 142
    .restart local v13    # "nextMax":I
    :cond_1
    const/16 v3, 0xb

    if-ne v7, v3, :cond_2

    .line 143
    const/16 v15, 0x3b

    const/16 v16, 0x3b

    const/16 v17, 0x17

    add-int/lit8 v18, p1, -0x1

    const/16 v19, 0x0

    add-int/lit8 v20, v8, 0x1

    move-object v14, v2

    invoke-virtual/range {v14 .. v20}, Landroid/text/format/Time;->set(IIIIII)V

    goto :goto_1

    .line 145
    :cond_2
    const/16 v15, 0x3b

    const/16 v16, 0x3b

    const/16 v17, 0x17

    add-int/lit8 v18, p1, -0x1

    add-int/lit8 v19, v7, 0x1

    move-object v14, v2

    move/from16 v20, v8

    invoke-virtual/range {v14 .. v20}, Landroid/text/format/Time;->set(IIIIII)V

    goto :goto_1

    .line 149
    .end local v13    # "nextMax":I
    :cond_3
    move/from16 v0, p1

    move/from16 v1, v26

    if-le v0, v1, :cond_a

    .line 150
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual/range {v2 .. v8}, Landroid/text/format/Time;->set(IIIIII)V

    .line 151
    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->getActualMaximum(I)I

    move-result v6

    .line 152
    .local v6, "maxDate":I
    add-int/lit8 v3, p1, -0x1

    if-le v3, v6, :cond_4

    .line 153
    const/16 v3, 0x3b

    const/16 v4, 0x3b

    const/16 v5, 0x17

    invoke-virtual/range {v2 .. v8}, Landroid/text/format/Time;->set(IIIIII)V

    .line 157
    :goto_3
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v22

    .line 158
    if-eqz v7, :cond_6

    .line 159
    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1

    add-int/lit8 v19, v7, -0x1

    move-object v14, v2

    move/from16 v20, v8

    invoke-virtual/range {v14 .. v20}, Landroid/text/format/Time;->set(IIIIII)V

    .line 160
    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->getActualMaximum(I)I

    move-result v6

    .line 161
    move/from16 v0, p1

    if-le v0, v6, :cond_5

    .line 162
    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1

    move-object v14, v2

    move/from16 v19, v7

    move/from16 v20, v8

    invoke-virtual/range {v14 .. v20}, Landroid/text/format/Time;->set(IIIIII)V

    .line 169
    :goto_4
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v20

    .end local v30    # "start":J
    .restart local v20    # "start":J
    goto/16 :goto_2

    .line 155
    .end local v20    # "start":J
    .restart local v30    # "start":J
    :cond_4
    const/16 v15, 0x3b

    const/16 v16, 0x3b

    const/16 v17, 0x17

    add-int/lit8 v18, p1, -0x1

    move-object v14, v2

    move/from16 v19, v7

    move/from16 v20, v8

    invoke-virtual/range {v14 .. v20}, Landroid/text/format/Time;->set(IIIIII)V

    goto :goto_3

    .line 164
    :cond_5
    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    add-int/lit8 v19, v7, -0x1

    move-object v14, v2

    move/from16 v18, p1

    move/from16 v20, v8

    invoke-virtual/range {v14 .. v20}, Landroid/text/format/Time;->set(IIIIII)V

    goto :goto_4

    .line 167
    :cond_6
    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v19, 0xb

    add-int/lit8 v20, v8, -0x1

    move-object v14, v2

    move/from16 v18, p1

    invoke-virtual/range {v14 .. v20}, Landroid/text/format/Time;->set(IIIIII)V

    goto :goto_4

    .line 171
    .end local v6    # "maxDate":I
    .end local v26    # "current":I
    :cond_7
    const-string v3, "1"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 172
    const/4 v3, 0x7

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/lit8 v27, v3, -0x1

    .line 173
    .local v27, "currentWeek":I
    if-nez v27, :cond_8

    .line 174
    const/16 v27, 0x7

    .line 176
    :cond_8
    const/4 v3, 0x5

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v18

    .line 177
    .local v18, "day":I
    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v14, v2

    move/from16 v19, v7

    move/from16 v20, v8

    invoke-virtual/range {v14 .. v20}, Landroid/text/format/Time;->set(IIIIII)V

    .line 178
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v28

    .line 179
    .local v28, "now":J
    move/from16 v0, p1

    move/from16 v1, v27

    if-gt v0, v1, :cond_9

    .line 180
    const-wide/32 v3, 0x5265c00

    sub-int v5, v27, p1

    int-to-long v9, v5

    mul-long/2addr v3, v9

    sub-long v20, v28, v3

    .line 181
    .end local v30    # "start":J
    .restart local v20    # "start":J
    const-wide/32 v3, 0x240c8400

    add-long v22, v20, v3

    goto/16 :goto_2

    .line 182
    .end local v20    # "start":J
    .restart local v30    # "start":J
    :cond_9
    move/from16 v0, p1

    move/from16 v1, v27

    if-le v0, v1, :cond_a

    .line 183
    const-wide/32 v3, 0x5265c00

    sub-int v5, p1, v27

    int-to-long v9, v5

    mul-long/2addr v3, v9

    add-long v22, v28, v3

    .line 184
    const-wide/32 v3, 0x240c8400

    sub-long v20, v22, v3

    .end local v30    # "start":J
    .restart local v20    # "start":J
    goto/16 :goto_2

    .end local v18    # "day":I
    .end local v20    # "start":J
    .end local v27    # "currentWeek":I
    .end local v28    # "now":J
    .restart local v30    # "start":J
    :cond_a
    move-wide/from16 v20, v30

    .end local v30    # "start":J
    .restart local v20    # "start":J
    goto/16 :goto_2
.end method


# virtual methods
.method public cancelAlarmManager()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 287
    iget-object v3, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->mContext:Landroid/content/Context;

    const-string v4, "alarm"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    .line 288
    .local v1, "mAlarmManager":Landroid/app/AlarmManager;
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.sonyericsson.smscounter.action.NOTIFY_ALARM"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 289
    .local v0, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->mContext:Landroid/content/Context;

    invoke-static {v3, v5, v0, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 290
    .local v2, "mPendingIntent":Landroid/app/PendingIntent;
    invoke-virtual {v1, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 291
    return-void
.end method

.method public cancelNotification()V
    .locals 3

    .prologue
    .line 107
    iget-object v1, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 109
    .local v0, "mNotificationManager":Landroid/app/NotificationManager;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 110
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 111
    return-void
.end method

.method public cancelNotification(I)V
    .locals 3
    .param p1, "slotIndex"    # I

    .prologue
    .line 114
    iget-object v1, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 116
    .local v0, "mNotificationManager":Landroid/app/NotificationManager;
    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 117
    return-void
.end method

.method public checkWarningStatus(Landroid/content/SharedPreferences;IIIZI)V
    .locals 9
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "count"    # I
    .param p3, "warningLevel1"    # I
    .param p4, "warningLevel2"    # I
    .param p5, "update"    # Z
    .param p6, "slotIndex"    # I

    .prologue
    .line 300
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p6}, Landroid/telephony/MSimTelephonyManager;->hasIccCard(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 365
    :cond_0
    :goto_0
    return-void

    .line 307
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->isAirplaneModeOn()Z

    move-result v6

    .line 308
    .local v6, "isAirMode":Z
    invoke-virtual {p0, p6}, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->getSimState(I)I

    move-result v7

    .line 310
    .local v7, "state":I
    const-string v0, "sms_counter_on_off_status"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    .line 313
    .local v8, "status":Z
    const/4 v0, 0x1

    if-eq v6, v0, :cond_0

    const/4 v0, 0x5

    if-ne v7, v0, :cond_0

    if-eqz v8, :cond_0

    .line 316
    if-eqz p5, :cond_4

    .line 317
    if-ge p2, p3, :cond_2

    .line 318
    invoke-virtual {p0, p6}, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->cancelNotification(I)V

    goto :goto_0

    .line 319
    :cond_2
    if-lt p2, p3, :cond_3

    if-ge p2, p4, :cond_3

    .line 320
    iget-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070091

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f070091

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f070092

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    const v4, 0x7f0200d4

    move-object v0, p0

    move v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->sendNotification(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)V

    goto :goto_0

    .line 329
    :cond_3
    if-gt p4, p2, :cond_0

    .line 330
    iget-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070093

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f070093

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f070094

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    const v4, 0x7f0200d3

    move-object v0, p0

    move v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->sendNotification(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)V

    goto/16 :goto_0

    .line 341
    :cond_4
    if-ge p2, p3, :cond_5

    .line 342
    invoke-virtual {p0, p6}, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->cancelNotification(I)V

    goto/16 :goto_0

    .line 343
    :cond_5
    if-ne p2, p3, :cond_6

    .line 344
    iget-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070091

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f070091

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f070092

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    const v4, 0x7f0200d4

    move-object v0, p0

    move v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->sendNotification(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)V

    goto/16 :goto_0

    .line 353
    :cond_6
    if-ne p2, p4, :cond_0

    .line 354
    iget-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070093

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f070093

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f070094

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    const v4, 0x7f0200d3

    move-object v0, p0

    move v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->sendNotification(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)V

    goto/16 :goto_0
.end method

.method public formatDateRange(Landroid/content/Context;JJZ)Ljava/lang/String;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "start"    # J
    .param p4, "end"    # J
    .param p6, "utcTime"    # Z

    .prologue
    .line 208
    const v8, 0x10010

    .line 209
    .local v8, "flags":I
    if-eqz p6, :cond_0

    const-string v7, "UTC"

    .line 211
    .local v7, "timezone":Ljava/lang/String;
    :goto_0
    iget-object v9, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->sBuilder:Ljava/lang/StringBuilder;

    monitor-enter v9

    .line 212
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->sBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 213
    iget-object v1, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->sFormatter:Ljava/util/Formatter;

    const v6, 0x10010

    move-object v0, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-static/range {v0 .. v7}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit v9

    return-object v0

    .line 209
    .end local v7    # "timezone":Ljava/lang/String;
    :cond_0
    const/4 v7, 0x0

    goto :goto_0

    .line 215
    .restart local v7    # "timezone":Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getCurrentCount(Landroid/content/SharedPreferences;)I
    .locals 2
    .param p1, "prefs"    # Landroid/content/SharedPreferences;

    .prologue
    const/4 v0, 0x0

    .line 424
    if-nez p1, :cond_0

    .line 425
    :goto_0
    return v0

    :cond_0
    const-string v1, "sms_counter_current_count"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public getDefaultSlotIndex()I
    .locals 1

    .prologue
    .line 433
    iget-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->mTelephonyManager:Landroid/telephony/MSimTelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/MSimTelephonyManager;->getDefaultSubscription()I

    move-result v0

    return v0
.end method

.method public getEndTimeSettings(Landroid/content/SharedPreferences;)J
    .locals 3
    .param p1, "prefs"    # Landroid/content/SharedPreferences;

    .prologue
    .line 390
    const-string v0, "sms_counter_endTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPhoneIMSI(I)Ljava/lang/String;
    .locals 2
    .param p1, "slotIndex"    # I

    .prologue
    .line 247
    const-string v0, "11111111"

    .line 254
    .local v0, "imsi":Ljava/lang/String;
    iget-object v1, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->mTelephonyManager:Landroid/telephony/MSimTelephonyManager;

    if-eqz v1, :cond_1

    .line 255
    iget-object v1, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->mTelephonyManager:Landroid/telephony/MSimTelephonyManager;

    invoke-virtual {v1, p1}, Landroid/telephony/MSimTelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v0

    .line 257
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    .line 258
    :cond_0
    const-string v0, "11111111"

    .line 269
    :cond_1
    return-object v0
.end method

.method public getSavedPhoneIMSI(Landroid/content/SharedPreferences;)Ljava/lang/String;
    .locals 3
    .param p1, "prefs"    # Landroid/content/SharedPreferences;

    .prologue
    .line 224
    const-string v1, "phone_imsi"

    const-string v2, "11111111"

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 229
    .local v0, "savedPhoneIMSI":Ljava/lang/String;
    return-object v0
.end method

.method public getSimState(I)I
    .locals 2
    .param p1, "slotId"    # I

    .prologue
    .line 233
    const/4 v0, 0x0

    .line 235
    .local v0, "state":I
    iget-object v1, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->mTelephonyManager:Landroid/telephony/MSimTelephonyManager;

    if-eqz v1, :cond_0

    .line 236
    iget-object v1, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->mTelephonyManager:Landroid/telephony/MSimTelephonyManager;

    invoke-virtual {v1, p1}, Landroid/telephony/MSimTelephonyManager;->getSimState(I)I

    move-result v0

    .line 243
    :cond_0
    return v0
.end method

.method public getSmsCounterStatus(Landroid/content/SharedPreferences;I)Z
    .locals 2
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "mSim"    # I

    .prologue
    const/4 v0, 0x0

    .line 408
    if-nez p1, :cond_0

    .line 413
    :goto_0
    return v0

    .line 409
    :cond_0
    const-string v1, "sms_counter_on_off_status"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 413
    .local v0, "status":Z
    goto :goto_0
.end method

.method public getStartTimeSettings(Landroid/content/SharedPreferences;)J
    .locals 3
    .param p1, "prefs"    # Landroid/content/SharedPreferences;

    .prologue
    .line 386
    const-string v0, "sms_counter_startTime"

    const-wide/16 v1, 0x0

    invoke-interface {p1, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getWarningLevel1(I)I
    .locals 4
    .param p1, "slotIndex"    # I

    .prologue
    .line 374
    iget-object v1, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sms_counter_warning_level"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "50"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 376
    .local v0, "warningLevel1":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public getWarningLevel2(I)I
    .locals 4
    .param p1, "slotIndex"    # I

    .prologue
    .line 380
    iget-object v1, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sms_counter_limit_level"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "100"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 382
    .local v0, "warningLevel2":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public isAirplaneModeOn()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 219
    iget-object v1, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public modifyIntent(Landroid/content/Intent;I)Landroid/content/Intent;
    .locals 1
    .param p1, "updateIntent"    # Landroid/content/Intent;
    .param p2, "slotIndex"    # I

    .prologue
    .line 548
    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 549
    const v0, 0x8000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 551
    if-nez p2, :cond_1

    .line 552
    const-string v0, "com.android.settings.SmsCounterSettingsActivity.Sim1"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 556
    :cond_0
    :goto_0
    return-object p1

    .line 553
    :cond_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 554
    const-string v0, "com.android.settings.SmsCounterSettingsActivity.Sim2"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public saveDateRangeToPreference(JJLandroid/content/SharedPreferences;)V
    .locals 2
    .param p1, "start"    # J
    .param p3, "end"    # J
    .param p5, "prefs"    # Landroid/content/SharedPreferences;

    .prologue
    .line 191
    invoke-interface {p5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 192
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "sms_counter_startTime"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 193
    const-string v1, "sms_counter_endTime"

    invoke-interface {v0, v1, p3, p4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 194
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 200
    return-void
.end method

.method public sendNotification(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 84
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0xbb8

    add-long v1, v0, v2

    .line 85
    iget-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->mContext:Landroid/content/Context;

    const-string v3, "notification"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 88
    new-instance v3, Landroid/app/Notification;

    invoke-direct {v3, p4, p1, v1, v2}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 89
    const v1, -0xffff01

    iput v1, v3, Landroid/app/Notification;->ledARGB:I

    .line 90
    const/16 v1, 0x3e8

    iput v1, v3, Landroid/app/Notification;->ledOnMS:I

    .line 91
    const/16 v1, 0x5dc

    iput v1, v3, Landroid/app/Notification;->ledOffMS:I

    .line 92
    iget v1, v3, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x3

    iput v1, v3, Landroid/app/Notification;->flags:I

    .line 93
    iget v1, v3, Landroid/app/Notification;->defaults:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v3, Landroid/app/Notification;->defaults:I

    .line 95
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->mContext:Landroid/content/Context;

    const-class v4, Lcom/android/settings/Settings$SmsCounterSettingsActivity;

    invoke-direct {v1, v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 96
    invoke-virtual {p0, v1, p5}, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->modifyIntent(Landroid/content/Intent;I)Landroid/content/Intent;

    move-result-object v1

    .line 98
    const/high16 v2, 0x4000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 99
    iget-object v2, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->mContext:Landroid/content/Context;

    invoke-static {v2, v5, v1, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 101
    iget-object v2, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2, p2, p3, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 103
    add-int/lit8 v1, p5, 0x1

    invoke-virtual {v0, v1, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 104
    return-void
.end method

.method public setAlarmManager(J)V
    .locals 6
    .param p1, "triggerAtTime"    # J

    .prologue
    const/4 v5, 0x0

    .line 276
    iget-object v3, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->mContext:Landroid/content/Context;

    const-string v4, "alarm"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    .line 277
    .local v1, "mAlarmManager":Landroid/app/AlarmManager;
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.sonyericsson.smscounter.action.NOTIFY_ALARM"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 278
    .local v0, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->mContext:Landroid/content/Context;

    invoke-static {v3, v5, v0, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 279
    .local v2, "mPendingIntent":Landroid/app/PendingIntent;
    invoke-virtual {v1, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 280
    const/4 v3, 0x1

    invoke-virtual {v1, v3, p1, p2, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 281
    return-void
.end method

.method public setCurrentCount(Landroid/content/SharedPreferences;I)V
    .locals 2
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "count"    # I

    .prologue
    .line 417
    if-nez p1, :cond_0

    .line 421
    :goto_0
    return-void

    .line 418
    :cond_0
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 419
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "sms_counter_current_count"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 420
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public setSmsCounterStatus(Landroid/content/SharedPreferences;Z)V
    .locals 2
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "status"    # Z

    .prologue
    .line 398
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 399
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "sms_counter_on_off_status"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 400
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 401
    return-void
.end method

.method public updateDateRange(Landroid/content/SharedPreferences;I)V
    .locals 5
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "slotIndex"    # I

    .prologue
    .line 63
    if-nez p1, :cond_1

    .line 80
    :cond_0
    :goto_0
    return-void

    .line 64
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sms_counter_cycle"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, "currentCycle":Ljava/lang/String;
    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 71
    iget-object v2, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sms_counter_startDay"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "1"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 73
    .local v1, "value":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, v2, v0, p1}, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->update(ILjava/lang/String;Landroid/content/SharedPreferences;)V

    goto :goto_0

    .line 75
    .end local v1    # "value":Ljava/lang/String;
    :cond_2
    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 76
    iget-object v2, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sms_counter_startWeek"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "1"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 78
    .restart local v1    # "value":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, v2, v0, p1}, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->update(ILjava/lang/String;Landroid/content/SharedPreferences;)V

    goto :goto_0
.end method

.method public updateWidget()V
    .locals 2

    .prologue
    .line 368
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sonyericsson.smscounter.appwidget.action.WIDGET_UPDATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 369
    .local v0, "intent":Landroid/content/Intent;
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 370
    iget-object v1, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 371
    return-void
.end method

.method public updateWidget(Landroid/content/Context;Landroid/content/SharedPreferences;II)V
    .locals 9

    .prologue
    .line 445
    invoke-virtual {p0}, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->isAirplaneModeOn()Z

    move-result v3

    .line 446
    invoke-virtual {p0, p4}, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->getSimState(I)I

    move-result v4

    .line 447
    const-string v0, "sms_counter_on_off_status"

    const/4 v1, 0x0

    invoke-interface {p2, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 449
    invoke-virtual {p0, p4}, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->getWarningLevel1(I)I

    move-result v6

    .line 450
    invoke-virtual {p0, p4}, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->getWarningLevel2(I)I

    move-result v7

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move v8, p4

    .line 454
    invoke-virtual/range {v0 .. v8}, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->updateWidgetInner(Landroid/content/Context;IZIZIII)Landroid/widget/RemoteViews;

    move-result-object v1

    .line 456
    new-instance v2, Landroid/content/ComponentName;

    if-nez p4, :cond_0

    const-class v0, Lcom/sonyericsson/settings/smscounter/SmsCounterAppWidgetProvider;

    :goto_0
    invoke-direct {v2, p1, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 459
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 460
    invoke-virtual {v0, v2, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    .line 461
    return-void

    .line 456
    :cond_0
    const-class v0, Lcom/sonyericsson/settings/smscounter/SmsCounterAppWidgetProviderSim2;

    goto :goto_0
.end method

.method public updateWidgetInner(Landroid/content/Context;IZIZIII)Landroid/widget/RemoteViews;
    .locals 6

    .prologue
    .line 479
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/Settings$SmsCounterSettingsActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 480
    invoke-virtual {p0, v0, p8}, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->modifyIntent(Landroid/content/Intent;I)Landroid/content/Intent;

    move-result-object v0

    .line 481
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 487
    if-nez p3, :cond_0

    const/4 v0, 0x1

    if-eq p4, v0, :cond_0

    if-nez p5, :cond_3

    .line 488
    :cond_0
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f04007d

    invoke-direct {v0, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 489
    const/4 v2, 0x1

    if-ne p8, v2, :cond_1

    .line 490
    const v2, 0x7f090154

    const v3, 0x7f0200d0

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 492
    :cond_1
    const v2, 0x7f09015a

    const-string v3, "setText"

    const v4, 0x7f070095

    invoke-virtual {v0, v2, v3, v4}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 493
    const v2, 0x7f09015b

    const-string v3, "setText"

    const v4, 0x7f070096

    invoke-virtual {v0, v2, v3, v4}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 537
    :cond_2
    :goto_0
    const v2, 0x7f090153

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 538
    return-object v0

    .line 496
    :cond_3
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f04007c

    invoke-direct {v0, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 497
    const/4 v2, 0x1

    if-ne p8, v2, :cond_4

    .line 498
    const v2, 0x7f090154

    const v3, 0x7f0200d0

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 500
    :cond_4
    if-gt p2, p6, :cond_5

    .line 501
    const v2, 0x7f090155

    const-string v3, "setWeightSum"

    const/high16 v4, 0x3f000000

    invoke-virtual {v0, v2, v3, v4}, Landroid/widget/RemoteViews;->setFloat(ILjava/lang/String;F)V

    .line 502
    const v2, 0x7f090156

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 503
    const v2, 0x7f090156

    const v3, -0xff0100

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 505
    const v2, 0x7f090157

    const-string v3, "setVisibility"

    const/16 v4, 0x8

    invoke-virtual {v0, v2, v3, v4}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 507
    const v2, 0x7f090158

    const-string v3, "setWeightSum"

    const/high16 v4, 0x3f000000

    invoke-virtual {v0, v2, v3, v4}, Landroid/widget/RemoteViews;->setFloat(ILjava/lang/String;F)V

    .line 508
    const v2, 0x7f070097

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    sub-int v5, p7, p2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 510
    const v3, 0x7f090159

    invoke-virtual {v0, v3, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_0

    .line 511
    :cond_5
    if-le p2, p6, :cond_6

    if-gt p2, p7, :cond_6

    .line 512
    const v2, 0x7f090155

    const-string v3, "setWeightSum"

    const v4, 0x3e99999a

    invoke-virtual {v0, v2, v3, v4}, Landroid/widget/RemoteViews;->setFloat(ILjava/lang/String;F)V

    .line 513
    const v2, 0x7f090156

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 514
    const v2, 0x7f090156

    const/16 v3, 0xff

    const/16 v4, 0x8c

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 516
    const v2, 0x7f090157

    const-string v3, "setVisibility"

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 517
    const v2, 0x7f090159

    const-string v3, "setVisibility"

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 519
    const v2, 0x7f090158

    const-string v3, "setWeightSum"

    const v4, 0x3e99999a

    invoke-virtual {v0, v2, v3, v4}, Landroid/widget/RemoteViews;->setFloat(ILjava/lang/String;F)V

    .line 520
    const v2, 0x7f070097

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    sub-int v5, p7, p2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 522
    const v3, 0x7f090159

    invoke-virtual {v0, v3, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 523
    :cond_6
    if-le p2, p7, :cond_2

    .line 524
    const v2, 0x7f090155

    const-string v3, "setWeightSum"

    const v4, 0x3e99999a

    invoke-virtual {v0, v2, v3, v4}, Landroid/widget/RemoteViews;->setFloat(ILjava/lang/String;F)V

    .line 525
    const v2, 0x7f090156

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 526
    const v2, 0x7f090156

    const/high16 v3, -0x10000

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 528
    const v2, 0x7f090157

    const-string v3, "setVisibility"

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 529
    const v2, 0x7f090159

    const-string v3, "setVisibility"

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 531
    const v2, 0x7f090158

    const-string v3, "setWeightSum"

    const v4, 0x3e99999a

    invoke-virtual {v0, v2, v3, v4}, Landroid/widget/RemoteViews;->setFloat(ILjava/lang/String;F)V

    .line 532
    const v2, 0x7f070098

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    sub-int v5, p2, p7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 534
    const v3, 0x7f090159

    invoke-virtual {v0, v3, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto/16 :goto_0
.end method
