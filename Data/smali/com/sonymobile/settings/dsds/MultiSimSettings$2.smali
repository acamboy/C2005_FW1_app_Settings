.class Lcom/sonymobile/settings/dsds/MultiSimSettings$2;
.super Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;
.source "MultiSimSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/settings/dsds/MultiSimSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/settings/dsds/MultiSimSettings;


# direct methods
.method constructor <init>(Lcom/sonymobile/settings/dsds/MultiSimSettings;Landroid/content/Context;Landroid/preference/CheckBoxPreference;Landroid/preference/CheckBoxPreference;Landroid/preference/EditTextPreference;Landroid/preference/EditTextPreference;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;
    .param p3, "x1"    # Landroid/preference/CheckBoxPreference;
    .param p4, "x2"    # Landroid/preference/CheckBoxPreference;
    .param p5, "x3"    # Landroid/preference/EditTextPreference;
    .param p6, "x4"    # Landroid/preference/EditTextPreference;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings$2;->this$0:Lcom/sonymobile/settings/dsds/MultiSimSettings;

    invoke-direct/range {p0 .. p6}, Lcom/sonymobile/settings/dsds/MultiSimSettings$SimSetCallBack;-><init>(Lcom/sonymobile/settings/dsds/MultiSimSettings;Landroid/content/Context;Landroid/preference/CheckBoxPreference;Landroid/preference/CheckBoxPreference;Landroid/preference/EditTextPreference;Landroid/preference/EditTextPreference;)V

    return-void
.end method


# virtual methods
.method onUpdate()V
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/sonymobile/settings/dsds/MultiSimSettings$2;->this$0:Lcom/sonymobile/settings/dsds/MultiSimSettings;

    invoke-virtual {v0}, Lcom/sonymobile/settings/dsds/MultiSimSettings;->updateUI()V

    .line 127
    return-void
.end method
