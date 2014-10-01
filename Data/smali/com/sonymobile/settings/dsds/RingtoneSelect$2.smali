.class Lcom/sonymobile/settings/dsds/RingtoneSelect$2;
.super Ljava/lang/Object;
.source "RingtoneSelect.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/settings/dsds/RingtoneSelect;->onCreate(Landroid/os/Bundle;)V
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
    .line 73
    iput-object p1, p0, Lcom/sonymobile/settings/dsds/RingtoneSelect$2;->this$0:Lcom/sonymobile/settings/dsds/RingtoneSelect;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 75
    iget-object v0, p0, Lcom/sonymobile/settings/dsds/RingtoneSelect$2;->this$0:Lcom/sonymobile/settings/dsds/RingtoneSelect;

    # getter for: Lcom/sonymobile/settings/dsds/RingtoneSelect;->mSim1Ringtone:Landroid/preference/Preference;
    invoke-static {v0}, Lcom/sonymobile/settings/dsds/RingtoneSelect;->access$000(Lcom/sonymobile/settings/dsds/RingtoneSelect;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/sonymobile/settings/dsds/RingtoneSelect$2;->this$0:Lcom/sonymobile/settings/dsds/RingtoneSelect;

    iget-object v1, p0, Lcom/sonymobile/settings/dsds/RingtoneSelect$2;->this$0:Lcom/sonymobile/settings/dsds/RingtoneSelect;

    # getter for: Lcom/sonymobile/settings/dsds/RingtoneSelect;->mSim1Ringtone:Landroid/preference/Preference;
    invoke-static {v1}, Lcom/sonymobile/settings/dsds/RingtoneSelect;->access$000(Lcom/sonymobile/settings/dsds/RingtoneSelect;)Landroid/preference/Preference;

    move-result-object v1

    const/4 v2, 0x0

    # invokes: Lcom/sonymobile/settings/dsds/RingtoneSelect;->updateRingtoneName(ILandroid/preference/Preference;I)V
    invoke-static {v0, v3, v1, v2}, Lcom/sonymobile/settings/dsds/RingtoneSelect;->access$200(Lcom/sonymobile/settings/dsds/RingtoneSelect;ILandroid/preference/Preference;I)V

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/settings/dsds/RingtoneSelect$2;->this$0:Lcom/sonymobile/settings/dsds/RingtoneSelect;

    # getter for: Lcom/sonymobile/settings/dsds/RingtoneSelect;->mSim2Ringtone:Landroid/preference/Preference;
    invoke-static {v0}, Lcom/sonymobile/settings/dsds/RingtoneSelect;->access$100(Lcom/sonymobile/settings/dsds/RingtoneSelect;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 79
    iget-object v0, p0, Lcom/sonymobile/settings/dsds/RingtoneSelect$2;->this$0:Lcom/sonymobile/settings/dsds/RingtoneSelect;

    iget-object v1, p0, Lcom/sonymobile/settings/dsds/RingtoneSelect$2;->this$0:Lcom/sonymobile/settings/dsds/RingtoneSelect;

    # getter for: Lcom/sonymobile/settings/dsds/RingtoneSelect;->mSim2Ringtone:Landroid/preference/Preference;
    invoke-static {v1}, Lcom/sonymobile/settings/dsds/RingtoneSelect;->access$100(Lcom/sonymobile/settings/dsds/RingtoneSelect;)Landroid/preference/Preference;

    move-result-object v1

    # invokes: Lcom/sonymobile/settings/dsds/RingtoneSelect;->updateRingtoneName(ILandroid/preference/Preference;I)V
    invoke-static {v0, v3, v1, v3}, Lcom/sonymobile/settings/dsds/RingtoneSelect;->access$200(Lcom/sonymobile/settings/dsds/RingtoneSelect;ILandroid/preference/Preference;I)V

    .line 81
    :cond_1
    return-void
.end method
