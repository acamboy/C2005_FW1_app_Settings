.class Lcom/android/settings/simmanager/MSimCallForwardingManager$ProcessForwardSetting;
.super Landroid/os/AsyncTask;
.source "MSimCallForwardingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/simmanager/MSimCallForwardingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProcessForwardSetting"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Long;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/simmanager/MSimCallForwardingManager;


# direct methods
.method private constructor <init>(Lcom/android/settings/simmanager/MSimCallForwardingManager;)V
    .locals 0

    .prologue
    .line 311
    iput-object p1, p0, Lcom/android/settings/simmanager/MSimCallForwardingManager$ProcessForwardSetting;->this$0:Lcom/android/settings/simmanager/MSimCallForwardingManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/simmanager/MSimCallForwardingManager;Lcom/android/settings/simmanager/MSimCallForwardingManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings/simmanager/MSimCallForwardingManager;
    .param p2, "x1"    # Lcom/android/settings/simmanager/MSimCallForwardingManager$1;

    .prologue
    .line 311
    invoke-direct {p0, p1}, Lcom/android/settings/simmanager/MSimCallForwardingManager$ProcessForwardSetting;-><init>(Lcom/android/settings/simmanager/MSimCallForwardingManager;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 311
    check-cast p1, [Ljava/lang/Long;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings/simmanager/MSimCallForwardingManager$ProcessForwardSetting;->doInBackground([Ljava/lang/Long;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Long;)Ljava/lang/Void;
    .locals 7
    .param p1, "w"    # [Ljava/lang/Long;

    .prologue
    const/4 v6, 0x0

    .line 313
    aget-object v2, p1, v6

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 315
    const-wide/16 v2, 0x1f4

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 318
    :goto_0
    iget-object v2, p0, Lcom/android/settings/simmanager/MSimCallForwardingManager$ProcessForwardSetting;->this$0:Lcom/android/settings/simmanager/MSimCallForwardingManager;

    # getter for: Lcom/android/settings/simmanager/MSimCallForwardingManager;->activity:Landroid/preference/PreferenceActivity;
    invoke-static {v2}, Lcom/android/settings/simmanager/MSimCallForwardingManager;->access$100(Lcom/android/settings/simmanager/MSimCallForwardingManager;)Landroid/preference/PreferenceActivity;

    move-result-object v2

    const-string v3, "phone_msim"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/MSimTelephonyManager;

    .line 320
    .local v0, "manager":Landroid/telephony/MSimTelephonyManager;
    iget-object v2, p0, Lcom/android/settings/simmanager/MSimCallForwardingManager$ProcessForwardSetting;->this$0:Lcom/android/settings/simmanager/MSimCallForwardingManager;

    invoke-virtual {v0, v6}, Landroid/telephony/MSimTelephonyManager;->getLine1Number(I)Ljava/lang/String;

    move-result-object v3

    # setter for: Lcom/android/settings/simmanager/MSimCallForwardingManager;->sim1Number:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/settings/simmanager/MSimCallForwardingManager;->access$402(Lcom/android/settings/simmanager/MSimCallForwardingManager;Ljava/lang/String;)Ljava/lang/String;

    .line 321
    iget-object v2, p0, Lcom/android/settings/simmanager/MSimCallForwardingManager$ProcessForwardSetting;->this$0:Lcom/android/settings/simmanager/MSimCallForwardingManager;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/telephony/MSimTelephonyManager;->getLine1Number(I)Ljava/lang/String;

    move-result-object v3

    # setter for: Lcom/android/settings/simmanager/MSimCallForwardingManager;->sim2Number:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/settings/simmanager/MSimCallForwardingManager;->access$502(Lcom/android/settings/simmanager/MSimCallForwardingManager;Ljava/lang/String;)Ljava/lang/String;

    .line 322
    iget-object v2, p0, Lcom/android/settings/simmanager/MSimCallForwardingManager$ProcessForwardSetting;->this$0:Lcom/android/settings/simmanager/MSimCallForwardingManager;

    # getter for: Lcom/android/settings/simmanager/MSimCallForwardingManager;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/settings/simmanager/MSimCallForwardingManager;->access$900(Lcom/android/settings/simmanager/MSimCallForwardingManager;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 323
    .local v1, "message":Landroid/os/Message;
    const/16 v2, 0x3e8

    iput v2, v1, Landroid/os/Message;->what:I

    .line 325
    iget-object v2, p0, Lcom/android/settings/simmanager/MSimCallForwardingManager$ProcessForwardSetting;->this$0:Lcom/android/settings/simmanager/MSimCallForwardingManager;

    # getter for: Lcom/android/settings/simmanager/MSimCallForwardingManager;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/settings/simmanager/MSimCallForwardingManager;->access$900(Lcom/android/settings/simmanager/MSimCallForwardingManager;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 327
    .end local v0    # "manager":Landroid/telephony/MSimTelephonyManager;
    .end local v1    # "message":Landroid/os/Message;
    :cond_0
    const/4 v2, 0x0

    return-object v2

    .line 316
    :catch_0
    move-exception v2

    goto :goto_0
.end method
