.class public Lcom/sonyericsson/settings/apn/TetherAPNSelectionDialog;
.super Landroid/app/Activity;
.source "TetherAPNSelectionDialog.java"


# instance fields
.field private mApnList:[Ljava/lang/String;

.field private mDialog:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/settings/apn/TetherAPNSelectionDialog;->mDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/settings/apn/TetherAPNSelectionDialog;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/settings/apn/TetherAPNSelectionDialog;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/sonyericsson/settings/apn/TetherAPNSelectionDialog;->mApnList:[Ljava/lang/String;

    return-object v0
.end method

.method private isTethered()Z
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 91
    const-string v5, "wifi"

    invoke-virtual {p0, v5}, Lcom/sonyericsson/settings/apn/TetherAPNSelectionDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    .line 92
    .local v3, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v2

    .line 93
    .local v2, "wifiApState":I
    const/16 v5, 0xc

    if-eq v2, v5, :cond_0

    const/16 v5, 0xd

    if-ne v2, v5, :cond_1

    .line 105
    :cond_0
    :goto_0
    return v4

    .line 98
    :cond_1
    const-string v5, "connectivity"

    invoke-virtual {p0, v5}, Lcom/sonyericsson/settings/apn/TetherAPNSelectionDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 100
    .local v0, "connMgr":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v1

    .line 101
    .local v1, "tethered":[Ljava/lang/String;
    if-eqz v1, :cond_2

    array-length v5, v1

    if-gtz v5, :cond_0

    .line 105
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 43
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    invoke-virtual {p0}, Lcom/sonyericsson/settings/apn/TetherAPNSelectionDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080066

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/settings/apn/TetherAPNSelectionDialog;->mApnList:[Ljava/lang/String;

    .line 45
    invoke-direct {p0}, Lcom/sonyericsson/settings/apn/TetherAPNSelectionDialog;->isTethered()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    const/4 v0, -0x1

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/settings/apn/TetherAPNSelectionDialog;->setResult(ILandroid/content/Intent;)V

    .line 47
    invoke-virtual {p0}, Lcom/sonyericsson/settings/apn/TetherAPNSelectionDialog;->finish()V

    .line 51
    :goto_0
    return-void

    .line 49
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/sonyericsson/settings/apn/TetherAPNSelectionDialog;->showDialog(ILandroid/os/Bundle;)Z

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 62
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f070065

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080059

    const/4 v2, -0x1

    new-instance v3, Lcom/sonyericsson/settings/apn/TetherAPNSelectionDialog$3;

    invoke-direct {v3, p0}, Lcom/sonyericsson/settings/apn/TetherAPNSelectionDialog$3;-><init>(Lcom/sonyericsson/settings/apn/TetherAPNSelectionDialog;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    new-instance v2, Lcom/sonyericsson/settings/apn/TetherAPNSelectionDialog$2;

    invoke-direct {v2, p0}, Lcom/sonyericsson/settings/apn/TetherAPNSelectionDialog$2;-><init>(Lcom/sonyericsson/settings/apn/TetherAPNSelectionDialog;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/settings/apn/TetherAPNSelectionDialog$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/settings/apn/TetherAPNSelectionDialog$1;-><init>(Lcom/sonyericsson/settings/apn/TetherAPNSelectionDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/settings/apn/TetherAPNSelectionDialog;->mDialog:Landroid/app/AlertDialog;

    .line 87
    iget-object v0, p0, Lcom/sonyericsson/settings/apn/TetherAPNSelectionDialog;->mDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/sonyericsson/settings/apn/TetherAPNSelectionDialog;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/sonyericsson/settings/apn/TetherAPNSelectionDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/settings/apn/TetherAPNSelectionDialog;->mDialog:Landroid/app/AlertDialog;

    .line 58
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 59
    return-void
.end method
