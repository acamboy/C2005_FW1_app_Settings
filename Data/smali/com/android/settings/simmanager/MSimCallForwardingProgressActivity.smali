.class public Lcom/android/settings/simmanager/MSimCallForwardingProgressActivity;
.super Landroid/app/Activity;
.source "MSimCallForwardingProgressActivity.java"


# static fields
.field private static LOG_TAG:Ljava/lang/String;


# instance fields
.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    const-string v0, "MSimCallForwardingProgressActivity"

    sput-object v0, Lcom/android/settings/simmanager/MSimCallForwardingProgressActivity;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 152
    new-instance v0, Lcom/android/settings/simmanager/MSimCallForwardingProgressActivity$4;

    invoke-direct {v0, p0}, Lcom/android/settings/simmanager/MSimCallForwardingProgressActivity$4;-><init>(Lcom/android/settings/simmanager/MSimCallForwardingProgressActivity;)V

    iput-object v0, p0, Lcom/android/settings/simmanager/MSimCallForwardingProgressActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/android/settings/simmanager/MSimCallForwardingProgressActivity;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method private registerCallForwardReveiver()V
    .locals 2

    .prologue
    .line 88
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 89
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.DISMISS_READING_PROGRESS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 90
    const-string v1, "android.intent.action.DISMISS_ON_UPDATING_PROGRESS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 91
    const-string v1, "android.intent.action.DISMISS_OFF_UPDATING_PROGRESS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 92
    iget-object v1, p0, Lcom/android/settings/simmanager/MSimCallForwardingProgressActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/simmanager/MSimCallForwardingProgressActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 93
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 75
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 76
    invoke-direct {p0}, Lcom/android/settings/simmanager/MSimCallForwardingProgressActivity;->registerCallForwardReveiver()V

    .line 77
    invoke-virtual {p0}, Lcom/android/settings/simmanager/MSimCallForwardingProgressActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "flag"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/simmanager/MSimCallForwardingProgressActivity;->showDialog(I)V

    .line 78
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 7
    .param p1, "id"    # I

    .prologue
    const v6, 0x7f070826

    const v5, 0x7f070823

    const/4 v4, 0x0

    .line 97
    sget-object v1, Lcom/android/settings/simmanager/MSimCallForwardingProgressActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreateDialog "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 101
    .local v0, "mProgressDialog":Landroid/app/ProgressDialog;
    packed-switch p1, :pswitch_data_0

    .line 144
    :goto_0
    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 145
    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 146
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 147
    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 149
    return-object v0

    .line 103
    :pswitch_0
    invoke-virtual {p0, v5}, Lcom/android/settings/simmanager/MSimCallForwardingProgressActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 104
    const v1, 0x7f070825

    invoke-virtual {p0, v1}, Lcom/android/settings/simmanager/MSimCallForwardingProgressActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 105
    new-instance v1, Lcom/android/settings/simmanager/MSimCallForwardingProgressActivity$1;

    invoke-direct {v1, p0}, Lcom/android/settings/simmanager/MSimCallForwardingProgressActivity$1;-><init>(Lcom/android/settings/simmanager/MSimCallForwardingProgressActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    goto :goto_0

    .line 116
    :pswitch_1
    sget-object v1, Lcom/android/settings/simmanager/MSimCallForwardingProgressActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mOnUpdatingProgressDialog "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-virtual {p0, v5}, Lcom/android/settings/simmanager/MSimCallForwardingProgressActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 118
    invoke-virtual {p0, v6}, Lcom/android/settings/simmanager/MSimCallForwardingProgressActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 119
    new-instance v1, Lcom/android/settings/simmanager/MSimCallForwardingProgressActivity$2;

    invoke-direct {v1, p0}, Lcom/android/settings/simmanager/MSimCallForwardingProgressActivity$2;-><init>(Lcom/android/settings/simmanager/MSimCallForwardingProgressActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    goto :goto_0

    .line 130
    :pswitch_2
    invoke-virtual {p0, v5}, Lcom/android/settings/simmanager/MSimCallForwardingProgressActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 131
    invoke-virtual {p0, v6}, Lcom/android/settings/simmanager/MSimCallForwardingProgressActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 132
    new-instance v1, Lcom/android/settings/simmanager/MSimCallForwardingProgressActivity$3;

    invoke-direct {v1, p0}, Lcom/android/settings/simmanager/MSimCallForwardingProgressActivity$3;-><init>(Lcom/android/settings/simmanager/MSimCallForwardingProgressActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    goto :goto_0

    .line 101
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 82
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 83
    iget-object v0, p0, Lcom/android/settings/simmanager/MSimCallForwardingProgressActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/simmanager/MSimCallForwardingProgressActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 84
    return-void
.end method
