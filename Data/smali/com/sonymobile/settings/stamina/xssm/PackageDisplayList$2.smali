.class final Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList$2;
.super Ljava/lang/Object;
.source "PackageDisplayList.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList;->sort(Ljava/util/Vector;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 151
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;)I
    .locals 2
    .param p1, "ui1"    # Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;
    .param p2, "ui2"    # Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;

    .prologue
    .line 154
    invoke-virtual {p1}, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;->getLabel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 151
    check-cast p1, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayList$2;->compare(Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;)I

    move-result v0

    return v0
.end method
