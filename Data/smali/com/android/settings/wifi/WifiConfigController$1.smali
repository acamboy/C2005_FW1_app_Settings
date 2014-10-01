.class Lcom/android/settings/wifi/WifiConfigController$1;
.super Ljava/lang/Object;
.source "WifiConfigController.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiConfigController;->showSecurityFields()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiConfigController;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiConfigController;)V
    .locals 0

    .prologue
    .line 581
    iput-object p1, p0, Lcom/android/settings/wifi/WifiConfigController$1;->this$0:Lcom/android/settings/wifi/WifiConfigController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 583
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController$1;->this$0:Lcom/android/settings/wifi/WifiConfigController;

    # invokes: Lcom/android/settings/wifi/WifiConfigController;->updatePasswordVisibility(Z)V
    invoke-static {v0, p2}, Lcom/android/settings/wifi/WifiConfigController;->access$000(Lcom/android/settings/wifi/WifiConfigController;Z)V

    .line 584
    return-void
.end method
