.class public Lcom/android/settings/simmanager/MSimCallForwardingPreferenceScreen;
.super Landroid/preference/Preference;
.source "MSimCallForwardingPreferenceScreen.java"


# static fields
.field private static LOG_TAG:Ljava/lang/String;


# instance fields
.field private onOffSwitch:Landroid/widget/Switch;

.field private triggerState:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-string v0, "MSimCallForwardingPreferenceScreen"

    sput-object v0, Lcom/android/settings/simmanager/MSimCallForwardingPreferenceScreen;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 73
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/simmanager/MSimCallForwardingPreferenceScreen;->onOffSwitch:Landroid/widget/Switch;

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/simmanager/MSimCallForwardingPreferenceScreen;->triggerState:Z

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/simmanager/MSimCallForwardingPreferenceScreen;->onOffSwitch:Landroid/widget/Switch;

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/simmanager/MSimCallForwardingPreferenceScreen;->triggerState:Z

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 65
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/simmanager/MSimCallForwardingPreferenceScreen;->onOffSwitch:Landroid/widget/Switch;

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/simmanager/MSimCallForwardingPreferenceScreen;->triggerState:Z

    .line 66
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/simmanager/MSimCallForwardingPreferenceScreen;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/simmanager/MSimCallForwardingPreferenceScreen;

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/android/settings/simmanager/MSimCallForwardingPreferenceScreen;->triggerState:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/settings/simmanager/MSimCallForwardingPreferenceScreen;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/simmanager/MSimCallForwardingPreferenceScreen;
    .param p1, "x1"    # Z

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/android/settings/simmanager/MSimCallForwardingPreferenceScreen;->triggerState:Z

    return p1
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/android/settings/simmanager/MSimCallForwardingPreferenceScreen;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getSwitchOn()Z
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/settings/simmanager/MSimCallForwardingPreferenceScreen;->onOffSwitch:Landroid/widget/Switch;

    if-nez v0, :cond_0

    .line 59
    const/4 v0, 0x0

    .line 61
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/simmanager/MSimCallForwardingPreferenceScreen;->onOffSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    goto :goto_0
.end method

.method public isPersistent()Z
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x0

    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 78
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 79
    const v1, 0x7f090028

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Switch;

    iput-object v1, p0, Lcom/android/settings/simmanager/MSimCallForwardingPreferenceScreen;->onOffSwitch:Landroid/widget/Switch;

    .line 80
    const-string v1, "on"

    invoke-virtual {p0}, Lcom/android/settings/simmanager/MSimCallForwardingPreferenceScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "call_forward_state"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 82
    .local v0, "state":Z
    iget-object v1, p0, Lcom/android/settings/simmanager/MSimCallForwardingPreferenceScreen;->onOffSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 83
    iget-object v1, p0, Lcom/android/settings/simmanager/MSimCallForwardingPreferenceScreen;->onOffSwitch:Landroid/widget/Switch;

    new-instance v2, Lcom/android/settings/simmanager/MSimCallForwardingPreferenceScreen$1;

    invoke-direct {v2, p0}, Lcom/android/settings/simmanager/MSimCallForwardingPreferenceScreen$1;-><init>(Lcom/android/settings/simmanager/MSimCallForwardingPreferenceScreen;)V

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 109
    iget-object v1, p0, Lcom/android/settings/simmanager/MSimCallForwardingPreferenceScreen;->onOffSwitch:Landroid/widget/Switch;

    new-instance v2, Lcom/android/settings/simmanager/MSimCallForwardingPreferenceScreen$2;

    invoke-direct {v2, p0}, Lcom/android/settings/simmanager/MSimCallForwardingPreferenceScreen$2;-><init>(Lcom/android/settings/simmanager/MSimCallForwardingPreferenceScreen;)V

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    return-void
.end method

.method protected onClick()V
    .locals 2

    .prologue
    .line 124
    invoke-super {p0}, Landroid/preference/Preference;->onClick()V

    .line 125
    sget-object v0, Lcom/android/settings/simmanager/MSimCallForwardingPreferenceScreen;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Click call forward"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    return-void
.end method

.method public setSwitchOn(Z)V
    .locals 3
    .param p1, "flag"    # Z

    .prologue
    .line 39
    sget-object v0, Lcom/android/settings/simmanager/MSimCallForwardingPreferenceScreen;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSwitchOn "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    iget-object v0, p0, Lcom/android/settings/simmanager/MSimCallForwardingPreferenceScreen;->onOffSwitch:Landroid/widget/Switch;

    if-nez v0, :cond_0

    .line 55
    :goto_0
    return-void

    .line 44
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/simmanager/MSimCallForwardingPreferenceScreen;->triggerState:Z

    .line 45
    iget-object v0, p0, Lcom/android/settings/simmanager/MSimCallForwardingPreferenceScreen;->onOffSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/simmanager/MSimCallForwardingPreferenceScreen;->triggerState:Z

    .line 48
    if-eqz p1, :cond_1

    .line 49
    invoke-virtual {p0}, Lcom/android/settings/simmanager/MSimCallForwardingPreferenceScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "call_forward_state"

    const-string v2, "on"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 52
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/simmanager/MSimCallForwardingPreferenceScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "call_forward_state"

    const-string v2, "off"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method
