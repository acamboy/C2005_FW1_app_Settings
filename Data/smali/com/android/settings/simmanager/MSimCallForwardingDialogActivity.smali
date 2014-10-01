.class public Lcom/android/settings/simmanager/MSimCallForwardingDialogActivity;
.super Landroid/app/Activity;
.source "MSimCallForwardingDialogActivity.java"


# static fields
.field private static LOG_TAG:Ljava/lang/String;

.field private static readNumber:Ljava/lang/String;

.field private static storedNumber:Ljava/lang/String;


# instance fields
.field private inputSIM1:Landroid/widget/EditText;

.field private inputSIM2:Landroid/widget/EditText;

.field private negativeButton:Landroid/widget/Button;

.field private number1:Ljava/lang/String;

.field private number2:Ljava/lang/String;

.field private positiveButton:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const-string v0, "READ_NUMBER"

    sput-object v0, Lcom/android/settings/simmanager/MSimCallForwardingDialogActivity;->readNumber:Ljava/lang/String;

    .line 61
    const-string v0, "STORED_NUMBER"

    sput-object v0, Lcom/android/settings/simmanager/MSimCallForwardingDialogActivity;->storedNumber:Ljava/lang/String;

    .line 75
    const-string v0, "MSimCallForwardingDialogActivity"

    sput-object v0, Lcom/android/settings/simmanager/MSimCallForwardingDialogActivity;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/simmanager/MSimCallForwardingDialogActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/simmanager/MSimCallForwardingDialogActivity;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/settings/simmanager/MSimCallForwardingDialogActivity;->positiveButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/simmanager/MSimCallForwardingDialogActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/simmanager/MSimCallForwardingDialogActivity;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/settings/simmanager/MSimCallForwardingDialogActivity;->inputSIM2:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/simmanager/MSimCallForwardingDialogActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/simmanager/MSimCallForwardingDialogActivity;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/settings/simmanager/MSimCallForwardingDialogActivity;->inputSIM1:Landroid/widget/EditText;

    return-object v0
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v1, 0x0

    .line 254
    iget-object v0, p0, Lcom/android/settings/simmanager/MSimCallForwardingDialogActivity;->inputSIM1:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-nez v0, :cond_2

    .line 255
    iget-object v0, p0, Lcom/android/settings/simmanager/MSimCallForwardingDialogActivity;->positiveButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 260
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings/simmanager/MSimCallForwardingDialogActivity;->inputSIM2:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-nez v0, :cond_3

    .line 261
    iget-object v0, p0, Lcom/android/settings/simmanager/MSimCallForwardingDialogActivity;->positiveButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 265
    :cond_1
    :goto_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 266
    return-void

    .line 256
    :cond_2
    iget-object v0, p0, Lcom/android/settings/simmanager/MSimCallForwardingDialogActivity;->inputSIM1:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/android/settings/simmanager/MSimCallForwardingDialogActivity;->positiveButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 262
    :cond_3
    iget-object v0, p0, Lcom/android/settings/simmanager/MSimCallForwardingDialogActivity;->inputSIM2:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 263
    iget-object v0, p0, Lcom/android/settings/simmanager/MSimCallForwardingDialogActivity;->positiveButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 79
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 81
    sget-object v0, Lcom/android/settings/simmanager/MSimCallForwardingDialogActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/simmanager/MSimCallForwardingDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "case"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    invoke-virtual {p0}, Lcom/android/settings/simmanager/MSimCallForwardingDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "sim1Number"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/simmanager/MSimCallForwardingDialogActivity;->number1:Ljava/lang/String;

    .line 84
    invoke-virtual {p0}, Lcom/android/settings/simmanager/MSimCallForwardingDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "sim2Number"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/simmanager/MSimCallForwardingDialogActivity;->number2:Ljava/lang/String;

    .line 86
    sget-object v0, Lcom/android/settings/simmanager/MSimCallForwardingDialogActivity;->readNumber:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/simmanager/MSimCallForwardingDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "case"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 87
    const/16 v0, 0x3e8

    invoke-virtual {p0, v0}, Lcom/android/settings/simmanager/MSimCallForwardingDialogActivity;->showDialog(I)V

    .line 91
    :cond_0
    :goto_0
    return-void

    .line 88
    :cond_1
    sget-object v0, Lcom/android/settings/simmanager/MSimCallForwardingDialogActivity;->storedNumber:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/simmanager/MSimCallForwardingDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "case"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {p0}, Lcom/android/settings/simmanager/MSimCallForwardingDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "enabledFlag"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/simmanager/MSimCallForwardingDialogActivity;->showDialog(I)V

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 10
    .param p1, "id"    # I

    .prologue
    const/16 v9, 0x3e8

    const/4 v6, 0x0

    .line 96
    sget-object v5, Lcom/android/settings/simmanager/MSimCallForwardingDialogActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onCreateDialog "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 99
    .local v0, "dl":Landroid/app/AlertDialog$Builder;
    const/4 v4, 0x0

    .line 100
    .local v4, "mdialog":Landroid/app/AlertDialog;
    if-ne p1, v9, :cond_6

    const/4 v1, 0x1

    .line 101
    .local v1, "fromSwitch":Z
    :goto_0
    const-string v5, "layout_inflater"

    invoke-virtual {p0, v5}, Lcom/android/settings/simmanager/MSimCallForwardingDialogActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 102
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v5, 0x7f040035

    const/4 v7, 0x0

    invoke-virtual {v2, v5, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ScrollView;

    .line 103
    .local v3, "layout":Landroid/widget/ScrollView;
    const v5, 0x7f070820

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 104
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 105
    const v5, 0x7f090081

    invoke-virtual {v3, v5}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/android/settings/simmanager/MSimCallForwardingDialogActivity;->inputSIM1:Landroid/widget/EditText;

    .line 106
    const v5, 0x7f090082

    invoke-virtual {v3, v5}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/android/settings/simmanager/MSimCallForwardingDialogActivity;->inputSIM2:Landroid/widget/EditText;

    .line 107
    iget-object v5, p0, Lcom/android/settings/simmanager/MSimCallForwardingDialogActivity;->inputSIM1:Landroid/widget/EditText;

    iget-object v7, p0, Lcom/android/settings/simmanager/MSimCallForwardingDialogActivity;->number1:Ljava/lang/String;

    invoke-virtual {v5, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 108
    iget-object v5, p0, Lcom/android/settings/simmanager/MSimCallForwardingDialogActivity;->inputSIM2:Landroid/widget/EditText;

    iget-object v7, p0, Lcom/android/settings/simmanager/MSimCallForwardingDialogActivity;->number2:Ljava/lang/String;

    invoke-virtual {v5, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 110
    if-ne p1, v9, :cond_7

    .line 111
    iget-object v5, p0, Lcom/android/settings/simmanager/MSimCallForwardingDialogActivity;->inputSIM1:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 112
    iget-object v5, p0, Lcom/android/settings/simmanager/MSimCallForwardingDialogActivity;->inputSIM1:Landroid/widget/EditText;

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 113
    iget-object v5, p0, Lcom/android/settings/simmanager/MSimCallForwardingDialogActivity;->inputSIM1:Landroid/widget/EditText;

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 116
    :cond_0
    iget-object v5, p0, Lcom/android/settings/simmanager/MSimCallForwardingDialogActivity;->inputSIM2:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 117
    iget-object v5, p0, Lcom/android/settings/simmanager/MSimCallForwardingDialogActivity;->inputSIM2:Landroid/widget/EditText;

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 118
    iget-object v5, p0, Lcom/android/settings/simmanager/MSimCallForwardingDialogActivity;->inputSIM2:Landroid/widget/EditText;

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 134
    :cond_1
    :goto_1
    iget-object v5, p0, Lcom/android/settings/simmanager/MSimCallForwardingDialogActivity;->inputSIM2:Landroid/widget/EditText;

    const/4 v7, 0x6

    invoke-virtual {v5, v7}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 136
    const v5, 0x7f090084

    invoke-virtual {v3, v5}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/android/settings/simmanager/MSimCallForwardingDialogActivity;->positiveButton:Landroid/widget/Button;

    .line 137
    const v5, 0x7f090083

    invoke-virtual {v3, v5}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/android/settings/simmanager/MSimCallForwardingDialogActivity;->negativeButton:Landroid/widget/Button;

    .line 139
    iget-object v5, p0, Lcom/android/settings/simmanager/MSimCallForwardingDialogActivity;->inputSIM1:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    if-nez v5, :cond_9

    .line 140
    iget-object v5, p0, Lcom/android/settings/simmanager/MSimCallForwardingDialogActivity;->positiveButton:Landroid/widget/Button;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 147
    :cond_2
    :goto_2
    iget-object v5, p0, Lcom/android/settings/simmanager/MSimCallForwardingDialogActivity;->inputSIM1:Landroid/widget/EditText;

    new-instance v7, Lcom/android/settings/simmanager/MSimCallForwardingDialogActivity$1;

    invoke-direct {v7, p0}, Lcom/android/settings/simmanager/MSimCallForwardingDialogActivity$1;-><init>(Lcom/android/settings/simmanager/MSimCallForwardingDialogActivity;)V

    invoke-virtual {v5, v7}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 169
    iget-object v5, p0, Lcom/android/settings/simmanager/MSimCallForwardingDialogActivity;->inputSIM2:Landroid/widget/EditText;

    new-instance v7, Lcom/android/settings/simmanager/MSimCallForwardingDialogActivity$2;

    invoke-direct {v7, p0}, Lcom/android/settings/simmanager/MSimCallForwardingDialogActivity$2;-><init>(Lcom/android/settings/simmanager/MSimCallForwardingDialogActivity;)V

    invoke-virtual {v5, v7}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 192
    iget-object v5, p0, Lcom/android/settings/simmanager/MSimCallForwardingDialogActivity;->positiveButton:Landroid/widget/Button;

    new-instance v7, Lcom/android/settings/simmanager/MSimCallForwardingDialogActivity$3;

    invoke-direct {v7, p0, v1}, Lcom/android/settings/simmanager/MSimCallForwardingDialogActivity$3;-><init>(Lcom/android/settings/simmanager/MSimCallForwardingDialogActivity;Z)V

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    iget-object v5, p0, Lcom/android/settings/simmanager/MSimCallForwardingDialogActivity;->negativeButton:Landroid/widget/Button;

    new-instance v7, Lcom/android/settings/simmanager/MSimCallForwardingDialogActivity$4;

    invoke-direct {v7, p0, v1}, Lcom/android/settings/simmanager/MSimCallForwardingDialogActivity$4;-><init>(Lcom/android/settings/simmanager/MSimCallForwardingDialogActivity;Z)V

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 212
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    .line 214
    iget-object v5, p0, Lcom/android/settings/simmanager/MSimCallForwardingDialogActivity;->inputSIM1:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->isEnabled()Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/android/settings/simmanager/MSimCallForwardingDialogActivity;->inputSIM2:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 215
    :cond_3
    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/4 v7, 0x5

    invoke-virtual {v5, v7}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 219
    :cond_4
    iget-object v5, p0, Lcom/android/settings/simmanager/MSimCallForwardingDialogActivity;->inputSIM1:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->isEnabled()Z

    move-result v5

    if-nez v5, :cond_5

    iget-object v5, p0, Lcom/android/settings/simmanager/MSimCallForwardingDialogActivity;->inputSIM2:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->isEnabled()Z

    move-result v5

    if-nez v5, :cond_5

    .line 220
    iget-object v5, p0, Lcom/android/settings/simmanager/MSimCallForwardingDialogActivity;->positiveButton:Landroid/widget/Button;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 223
    :cond_5
    invoke-virtual {v4, v6}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 225
    new-instance v5, Lcom/android/settings/simmanager/MSimCallForwardingDialogActivity$5;

    invoke-direct {v5, p0, v1}, Lcom/android/settings/simmanager/MSimCallForwardingDialogActivity$5;-><init>(Lcom/android/settings/simmanager/MSimCallForwardingDialogActivity;Z)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 236
    return-object v4

    .end local v1    # "fromSwitch":Z
    .end local v2    # "inflater":Landroid/view/LayoutInflater;
    .end local v3    # "layout":Landroid/widget/ScrollView;
    :cond_6
    move v1, v6

    .line 100
    goto/16 :goto_0

    .line 122
    .restart local v1    # "fromSwitch":Z
    .restart local v2    # "inflater":Landroid/view/LayoutInflater;
    .restart local v3    # "layout":Landroid/widget/ScrollView;
    :cond_7
    and-int/lit8 v5, p1, 0x1

    if-nez v5, :cond_8

    .line 123
    iget-object v5, p0, Lcom/android/settings/simmanager/MSimCallForwardingDialogActivity;->inputSIM1:Landroid/widget/EditText;

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 124
    iget-object v5, p0, Lcom/android/settings/simmanager/MSimCallForwardingDialogActivity;->inputSIM1:Landroid/widget/EditText;

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 128
    :cond_8
    const/4 v5, 0x4

    if-eq p1, v5, :cond_1

    and-int/lit8 v5, p1, 0x2

    if-nez v5, :cond_1

    .line 129
    iget-object v5, p0, Lcom/android/settings/simmanager/MSimCallForwardingDialogActivity;->inputSIM2:Landroid/widget/EditText;

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 130
    iget-object v5, p0, Lcom/android/settings/simmanager/MSimCallForwardingDialogActivity;->inputSIM2:Landroid/widget/EditText;

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setFocusable(Z)V

    goto/16 :goto_1

    .line 141
    :cond_9
    iget-object v5, p0, Lcom/android/settings/simmanager/MSimCallForwardingDialogActivity;->inputSIM2:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    if-nez v5, :cond_a

    .line 142
    iget-object v5, p0, Lcom/android/settings/simmanager/MSimCallForwardingDialogActivity;->positiveButton:Landroid/widget/Button;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_2

    .line 143
    :cond_a
    iget-object v5, p0, Lcom/android/settings/simmanager/MSimCallForwardingDialogActivity;->inputSIM1:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_b

    iget-object v5, p0, Lcom/android/settings/simmanager/MSimCallForwardingDialogActivity;->inputSIM2:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 144
    :cond_b
    iget-object v5, p0, Lcom/android/settings/simmanager/MSimCallForwardingDialogActivity;->positiveButton:Landroid/widget/Button;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_2
.end method

.method public sendDoneIntent(Z)V
    .locals 4
    .param p1, "isFromSwitch"    # Z

    .prologue
    .line 240
    new-instance v0, Landroid/content/Intent;

    if-eqz p1, :cond_0

    const-string v1, "android.intent.action.CALL_FORWARD_TBD_EVENT"

    :goto_0
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 243
    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Lcom/android/settings/simmanager/MSimCallForwardingDialogActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/settings/simmanager/MSimCallForwardingDialogActivity;->inputSIM1:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/simmanager/MSimCallForwardingDialogActivity;->inputSIM2:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    invoke-virtual {p0}, Lcom/android/settings/simmanager/MSimCallForwardingDialogActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "call_forwarding_sim1Number"

    iget-object v3, p0, Lcom/android/settings/simmanager/MSimCallForwardingDialogActivity;->inputSIM1:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 247
    invoke-virtual {p0}, Lcom/android/settings/simmanager/MSimCallForwardingDialogActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "call_forwarding_sim2Number"

    iget-object v3, p0, Lcom/android/settings/simmanager/MSimCallForwardingDialogActivity;->inputSIM2:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 249
    invoke-virtual {p0, v0}, Lcom/android/settings/simmanager/MSimCallForwardingDialogActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 250
    return-void

    .line 240
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    const-string v1, "android.intent.action.CALL_FORWARD_UPDATE_TBD_EVENT"

    goto :goto_0
.end method
