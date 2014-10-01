.class public Lcom/sonyericsson/settings/smscounter/SmsCounterAppWidgetProviderSim2;
.super Lcom/sonyericsson/settings/smscounter/SmsCounterAppWidgetProvider;
.source "SmsCounterAppWidgetProviderSim2.java"


# instance fields
.field private slotIndex:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/sonyericsson/settings/smscounter/SmsCounterAppWidgetProvider;-><init>()V

    .line 11
    const/4 v0, 0x1

    iput v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterAppWidgetProviderSim2;->slotIndex:I

    return-void
.end method


# virtual methods
.method public getSlotIndex()I
    .locals 1

    .prologue
    .line 14
    iget v0, p0, Lcom/sonyericsson/settings/smscounter/SmsCounterAppWidgetProviderSim2;->slotIndex:I

    return v0
.end method
