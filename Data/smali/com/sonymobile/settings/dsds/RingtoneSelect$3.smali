.class Lcom/sonymobile/settings/dsds/RingtoneSelect$3;
.super Ljava/lang/Object;
.source "RingtoneSelect.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/settings/dsds/RingtoneSelect;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/settings/dsds/RingtoneSelect;


# direct methods
.method constructor <init>(Lcom/sonymobile/settings/dsds/RingtoneSelect;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/sonymobile/settings/dsds/RingtoneSelect$3;->this$0:Lcom/sonymobile/settings/dsds/RingtoneSelect;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/preference/Preference;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/sonymobile/settings/dsds/RingtoneSelect$3;->this$0:Lcom/sonymobile/settings/dsds/RingtoneSelect;

    invoke-virtual {v0}, Lcom/sonymobile/settings/dsds/RingtoneSelect;->finish()V

    .line 105
    const/4 v0, 0x1

    return v0
.end method
