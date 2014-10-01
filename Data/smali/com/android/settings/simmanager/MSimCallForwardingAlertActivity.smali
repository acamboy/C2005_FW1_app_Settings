.class public Lcom/android/settings/simmanager/MSimCallForwardingAlertActivity;
.super Landroid/app/Activity;
.source "MSimCallForwardingAlertActivity.java"


# static fields
.field private static LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    const-string v0, "MSimCallForwardingAlertActivity"

    sput-object v0, Lcom/android/settings/simmanager/MSimCallForwardingAlertActivity;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

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
    invoke-virtual {p0}, Lcom/android/settings/simmanager/MSimCallForwardingAlertActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "flag"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/simmanager/MSimCallForwardingAlertActivity;->showDialog(I)V

    .line 77
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 9
    .param p1, "id"    # I

    .prologue
    const v8, 0x7f070827

    const v7, 0x7f070824

    const v6, 0x7f0700c4

    const/4 v5, 0x0

    .line 86
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 87
    .local v0, "alertDialog":Landroid/app/AlertDialog$Builder;
    const/4 v1, 0x0

    .line 88
    .local v1, "mdialog":Landroid/app/AlertDialog;
    sget-object v2, Lcom/android/settings/simmanager/MSimCallForwardingAlertActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreateDialog "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    packed-switch p1, :pswitch_data_0

    .line 161
    :goto_0
    return-object v1

    .line 93
    :pswitch_0
    const v2, 0x7f070823

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 94
    const v2, 0x7f07082a

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 95
    new-instance v2, Lcom/android/settings/simmanager/MSimCallForwardingAlertActivity$1;

    invoke-direct {v2, p0}, Lcom/android/settings/simmanager/MSimCallForwardingAlertActivity$1;-><init>(Lcom/android/settings/simmanager/MSimCallForwardingAlertActivity;)V

    invoke-virtual {v0, v6, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 101
    new-instance v2, Lcom/android/settings/simmanager/MSimCallForwardingAlertActivity$2;

    invoke-direct {v2, p0}, Lcom/android/settings/simmanager/MSimCallForwardingAlertActivity$2;-><init>(Lcom/android/settings/simmanager/MSimCallForwardingAlertActivity;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 110
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 111
    invoke-virtual {v1, v5}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    goto :goto_0

    .line 115
    :pswitch_1
    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 116
    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 117
    new-instance v2, Lcom/android/settings/simmanager/MSimCallForwardingAlertActivity$3;

    invoke-direct {v2, p0}, Lcom/android/settings/simmanager/MSimCallForwardingAlertActivity$3;-><init>(Lcom/android/settings/simmanager/MSimCallForwardingAlertActivity;)V

    invoke-virtual {v0, v6, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 124
    new-instance v2, Lcom/android/settings/simmanager/MSimCallForwardingAlertActivity$4;

    invoke-direct {v2, p0}, Lcom/android/settings/simmanager/MSimCallForwardingAlertActivity$4;-><init>(Lcom/android/settings/simmanager/MSimCallForwardingAlertActivity;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 133
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 134
    invoke-virtual {v1, v5}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    goto :goto_0

    .line 138
    :pswitch_2
    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 139
    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 140
    new-instance v2, Lcom/android/settings/simmanager/MSimCallForwardingAlertActivity$5;

    invoke-direct {v2, p0}, Lcom/android/settings/simmanager/MSimCallForwardingAlertActivity$5;-><init>(Lcom/android/settings/simmanager/MSimCallForwardingAlertActivity;)V

    invoke-virtual {v0, v6, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 146
    new-instance v2, Lcom/android/settings/simmanager/MSimCallForwardingAlertActivity$6;

    invoke-direct {v2, p0}, Lcom/android/settings/simmanager/MSimCallForwardingAlertActivity$6;-><init>(Lcom/android/settings/simmanager/MSimCallForwardingAlertActivity;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 155
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 156
    invoke-virtual {v1, v5}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    goto :goto_0

    .line 90
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 81
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 82
    return-void
.end method
