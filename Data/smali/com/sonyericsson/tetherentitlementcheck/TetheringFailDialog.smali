.class public Lcom/sonyericsson/tetherentitlementcheck/TetheringFailDialog;
.super Landroid/app/Activity;
.source "TetheringFailDialog.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 35
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/sonyericsson/tetherentitlementcheck/TetheringFailDialog;->showDialog(ILandroid/os/Bundle;)Z

    .line 37
    return-void
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .param p1, "id"    # I
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 48
    const/4 v0, 0x0

    .line 49
    .local v0, "mDialog":Landroid/app/AlertDialog$Builder;
    if-nez p1, :cond_0

    .line 50
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x1040014

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1080027

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f07081b

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/sonyericsson/tetherentitlementcheck/TetheringFailDialog$1;

    invoke-direct {v3, p0}, Lcom/sonyericsson/tetherentitlementcheck/TetheringFailDialog$1;-><init>(Lcom/sonyericsson/tetherentitlementcheck/TetheringFailDialog;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 59
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
