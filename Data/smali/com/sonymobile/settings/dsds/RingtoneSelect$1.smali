.class Lcom/sonymobile/settings/dsds/RingtoneSelect$1;
.super Landroid/os/Handler;
.source "RingtoneSelect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/settings/dsds/RingtoneSelect;
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
    .line 47
    iput-object p1, p0, Lcom/sonymobile/settings/dsds/RingtoneSelect$1;->this$0:Lcom/sonymobile/settings/dsds/RingtoneSelect;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 49
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 57
    :goto_0
    return-void

    .line 51
    :pswitch_0
    iget-object v0, p0, Lcom/sonymobile/settings/dsds/RingtoneSelect$1;->this$0:Lcom/sonymobile/settings/dsds/RingtoneSelect;

    # getter for: Lcom/sonymobile/settings/dsds/RingtoneSelect;->mSim1Ringtone:Landroid/preference/Preference;
    invoke-static {v0}, Lcom/sonymobile/settings/dsds/RingtoneSelect;->access$000(Lcom/sonymobile/settings/dsds/RingtoneSelect;)Landroid/preference/Preference;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 54
    :pswitch_1
    iget-object v0, p0, Lcom/sonymobile/settings/dsds/RingtoneSelect$1;->this$0:Lcom/sonymobile/settings/dsds/RingtoneSelect;

    # getter for: Lcom/sonymobile/settings/dsds/RingtoneSelect;->mSim2Ringtone:Landroid/preference/Preference;
    invoke-static {v0}, Lcom/sonymobile/settings/dsds/RingtoneSelect;->access$100(Lcom/sonymobile/settings/dsds/RingtoneSelect;)Landroid/preference/Preference;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 49
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
