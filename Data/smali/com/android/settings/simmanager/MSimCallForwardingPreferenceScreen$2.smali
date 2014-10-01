.class Lcom/android/settings/simmanager/MSimCallForwardingPreferenceScreen$2;
.super Ljava/lang/Object;
.source "MSimCallForwardingPreferenceScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/simmanager/MSimCallForwardingPreferenceScreen;->onBindView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/simmanager/MSimCallForwardingPreferenceScreen;


# direct methods
.method constructor <init>(Lcom/android/settings/simmanager/MSimCallForwardingPreferenceScreen;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/android/settings/simmanager/MSimCallForwardingPreferenceScreen$2;->this$0:Lcom/android/settings/simmanager/MSimCallForwardingPreferenceScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 112
    # getter for: Lcom/android/settings/simmanager/MSimCallForwardingPreferenceScreen;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/simmanager/MSimCallForwardingPreferenceScreen;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Click switch"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    return-void
.end method
