.class public Lcom/sonyericsson/settings/smscounter/SmsCounterAppWidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "SmsCounterAppWidgetProvider.java"


# instance fields
.field private mPrefs:Landroid/content/SharedPreferences;

.field private mWidgetUtil:Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;

.field private slotIndex:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    .line 32
    iput-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterAppWidgetProvider;->mWidgetUtil:Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;

    .line 34
    iput-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterAppWidgetProvider;->mPrefs:Landroid/content/SharedPreferences;

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterAppWidgetProvider;->slotIndex:I

    return-void
.end method

.method private getView(Landroid/content/Context;)Landroid/widget/RemoteViews;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 82
    const/4 v9, 0x0

    .line 83
    .local v9, "views":Landroid/widget/RemoteViews;
    iget-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterAppWidgetProvider;->mWidgetUtil:Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;

    if-nez v0, :cond_0

    .line 84
    new-instance v0, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;

    invoke-direct {v0, p1}, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterAppWidgetProvider;->mWidgetUtil:Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;

    .line 86
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sms_counter_preference_file_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sonyericsson/settings/smscounter/SmsCounterAppWidgetProvider;->getSlotIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterAppWidgetProvider;->mPrefs:Landroid/content/SharedPreferences;

    .line 88
    iget-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterAppWidgetProvider;->mWidgetUtil:Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;

    invoke-virtual {v0}, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->isAirplaneModeOn()Z

    move-result v3

    .line 89
    .local v3, "isAirMode":Z
    iget-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterAppWidgetProvider;->mWidgetUtil:Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;

    invoke-virtual {p0}, Lcom/sonyericsson/settings/smscounter/SmsCounterAppWidgetProvider;->getSlotIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->getSimState(I)I

    move-result v4

    .line 91
    .local v4, "state":I
    iget-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterAppWidgetProvider;->mWidgetUtil:Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;

    invoke-virtual {p0}, Lcom/sonyericsson/settings/smscounter/SmsCounterAppWidgetProvider;->getSlotIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->getWarningLevel1(I)I

    move-result v6

    .line 92
    .local v6, "warning":I
    iget-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterAppWidgetProvider;->mWidgetUtil:Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;

    invoke-virtual {p0}, Lcom/sonyericsson/settings/smscounter/SmsCounterAppWidgetProvider;->getSlotIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->getWarningLevel2(I)I

    move-result v7

    .line 93
    .local v7, "limit":I
    iget-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterAppWidgetProvider;->mWidgetUtil:Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;

    iget-object v1, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterAppWidgetProvider;->mPrefs:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Lcom/sonyericsson/settings/smscounter/SmsCounterAppWidgetProvider;->getSlotIndex()I

    move-result v8

    invoke-virtual {v0, v1, v8}, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->getSmsCounterStatus(Landroid/content/SharedPreferences;I)Z

    move-result v5

    .line 94
    .local v5, "status":Z
    iget-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterAppWidgetProvider;->mWidgetUtil:Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;

    iget-object v1, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterAppWidgetProvider;->mPrefs:Landroid/content/SharedPreferences;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->getCurrentCount(Landroid/content/SharedPreferences;)I

    move-result v2

    .line 96
    .local v2, "count":I
    iget-object v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterAppWidgetProvider;->mWidgetUtil:Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;

    invoke-virtual {p0}, Lcom/sonyericsson/settings/smscounter/SmsCounterAppWidgetProvider;->getSlotIndex()I

    move-result v8

    move-object v1, p1

    invoke-virtual/range {v0 .. v8}, Lcom/sonyericsson/settings/smscounter/SmsCounterUtil;->updateWidgetInner(Landroid/content/Context;IZIZIII)Landroid/widget/RemoteViews;

    move-result-object v9

    .line 98
    return-object v9
.end method


# virtual methods
.method public getSlotIndex()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterAppWidgetProvider;->slotIndex:I

    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 40
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 41
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 42
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 47
    const-string v1, "com.sonyericsson.smscounter.appwidget.action.WIDGET_UPDATE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    invoke-direct {p0, p1}, Lcom/sonyericsson/settings/smscounter/SmsCounterAppWidgetProvider;->getView(Landroid/content/Context;)Landroid/widget/RemoteViews;

    move-result-object v1

    .line 49
    if-eqz v1, :cond_0

    .line 50
    new-instance v2, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/sonyericsson/settings/smscounter/SmsCounterAppWidgetProvider;->getSlotIndex()I

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Lcom/sonyericsson/settings/smscounter/SmsCounterAppWidgetProvider;

    :goto_0
    invoke-direct {v2, p1, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 54
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 55
    invoke-virtual {v0, v2, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    .line 59
    :cond_0
    return-void

    .line 50
    :cond_1
    const-class v0, Lcom/sonyericsson/settings/smscounter/SmsCounterAppWidgetProviderSim2;

    goto :goto_0
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetManager"    # Landroid/appwidget/AppWidgetManager;
    .param p3, "appWidgetIds"    # [I

    .prologue
    .line 63
    if-eqz p1, :cond_1

    .line 67
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p3

    if-ge v1, v3, :cond_1

    .line 68
    invoke-direct {p0, p1}, Lcom/sonyericsson/settings/smscounter/SmsCounterAppWidgetProvider;->getView(Landroid/content/Context;)Landroid/widget/RemoteViews;

    move-result-object v2

    .line 69
    .local v2, "views":Landroid/widget/RemoteViews;
    aget v0, p3, v1

    .line 70
    .local v0, "appWidgetId":I
    if-eqz v2, :cond_0

    .line 71
    aget v3, p3, v1

    invoke-virtual {p2, v3, v2}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 67
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 75
    .end local v0    # "appWidgetId":I
    .end local v1    # "i":I
    .end local v2    # "views":Landroid/widget/RemoteViews;
    :cond_1
    return-void
.end method
