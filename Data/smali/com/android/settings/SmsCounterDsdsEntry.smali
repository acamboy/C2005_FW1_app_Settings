.class public Lcom/android/settings/SmsCounterDsdsEntry;
.super Landroid/app/Activity;
.source "SmsCounterDsdsEntry.java"


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field private startDataUsageSummary:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 53
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/android/settings/SmsCounterDsdsEntry;->startDataUsageSummary:Landroid/content/Intent;

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/SmsCounterDsdsEntry;->mAlertDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method static synthetic access$002(Lcom/android/settings/SmsCounterDsdsEntry;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/SmsCounterDsdsEntry;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/android/settings/SmsCounterDsdsEntry;->mAlertDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/settings/SmsCounterDsdsEntry;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/SmsCounterDsdsEntry;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/settings/SmsCounterDsdsEntry;->startDataUsageSummary:Landroid/content/Intent;

    return-object v0
.end method

.method private getStringFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/CharSequence;
    .locals 5
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "noNameFormat"    # Ljava/lang/String;
    .param p3, "lable"    # Ljava/lang/String;
    .param p4, "naming"    # Ljava/lang/String;
    .param p5, "sub"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 66
    const-string v0, ""

    .line 67
    .local v0, "formatString":Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .line 68
    .local v1, "isDefaultName":Z
    if-nez p5, :cond_0

    const-string v2, "SIM1"

    invoke-virtual {v2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    if-ne p5, v3, :cond_2

    const-string v2, "SIM2"

    invoke-virtual {v2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 70
    :cond_1
    const/4 v1, 0x1

    .line 71
    :cond_2
    if-eqz p4, :cond_3

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_3

    if-eqz v1, :cond_4

    .line 72
    :cond_3
    new-array v2, v3, [Ljava/lang/Object;

    aput-object p3, v2, v4

    invoke-static {p2, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 76
    :goto_0
    return-object v0

    .line 74
    :cond_4
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p3, v2, v4

    aput-object p4, v2, v3

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 60
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 137
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 138
    iget-object v0, p0, Lcom/android/settings/SmsCounterDsdsEntry;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/android/settings/SmsCounterDsdsEntry;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 140
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/SmsCounterDsdsEntry;->mAlertDialog:Landroid/app/AlertDialog;

    .line 142
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 14

    .prologue
    const/4 v10, 0x1

    const/4 v5, 0x0

    .line 86
    invoke-static {p0, v5}, Lcom/sonymobile/settings/dsds/SimManager;->getSimCardName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    .line 87
    .local v4, "sim1Naming":Ljava/lang/String;
    invoke-static {p0, v10}, Lcom/sonymobile/settings/dsds/SimManager;->getSimCardName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v9

    .line 88
    .local v9, "sim2Naming":Ljava/lang/String;
    const-string v2, "%s"

    .line 89
    .local v2, "dataPopupStrNoName":Ljava/lang/String;
    const-string v1, "%1$s (%2$s)"

    .line 91
    .local v1, "dataPopupStr":Ljava/lang/String;
    const/4 v0, 0x2

    new-array v13, v0, [Ljava/lang/CharSequence;

    const-string v3, "SIM1"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/SmsCounterDsdsEntry;->getStringFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v0

    aput-object v0, v13, v5

    const-string v8, "SIM2"

    move-object v5, p0

    move-object v6, v1

    move-object v7, v2

    invoke-direct/range {v5 .. v10}, Lcom/android/settings/SmsCounterDsdsEntry;->getStringFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v0

    aput-object v0, v13, v10

    .line 96
    .local v13, "entries":[Ljava/lang/CharSequence;
    new-instance v11, Landroid/app/AlertDialog$Builder;

    invoke-direct {v11, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 97
    .local v11, "alertDialog":Landroid/app/AlertDialog$Builder;
    const v0, 0x7f070099

    invoke-virtual {v11, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 99
    new-instance v12, Lcom/android/settings/SmsCounterDsdsEntry$1;

    const v0, 0x1090011

    invoke-direct {v12, p0, p0, v0, v13}, Lcom/android/settings/SmsCounterDsdsEntry$1;-><init>(Lcom/android/settings/SmsCounterDsdsEntry;Landroid/content/Context;I[Ljava/lang/CharSequence;)V

    .line 108
    .local v12, "arrayAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    new-instance v0, Lcom/android/settings/SmsCounterDsdsEntry$3;

    invoke-direct {v0, p0}, Lcom/android/settings/SmsCounterDsdsEntry$3;-><init>(Lcom/android/settings/SmsCounterDsdsEntry;)V

    invoke-virtual {v11, v12, v0}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v3, Lcom/android/settings/SmsCounterDsdsEntry$2;

    invoke-direct {v3, p0}, Lcom/android/settings/SmsCounterDsdsEntry$2;-><init>(Lcom/android/settings/SmsCounterDsdsEntry;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 131
    invoke-virtual {v11}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/SmsCounterDsdsEntry;->mAlertDialog:Landroid/app/AlertDialog;

    .line 133
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 134
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/settings/SmsCounterDsdsEntry;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/android/settings/SmsCounterDsdsEntry;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 148
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/SmsCounterDsdsEntry;->mAlertDialog:Landroid/app/AlertDialog;

    .line 150
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SmsCounterDsdsEntry;->finish()V

    .line 151
    const/4 v0, 0x1

    return v0
.end method
