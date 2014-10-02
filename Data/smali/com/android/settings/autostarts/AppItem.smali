.class public Lcom/android/settings/autostarts/AppItem;
.super Ljava/lang/Object;
.source "AppItem.java"


# instance fields
.field public appName:Ljava/lang/String;

.field public cacheSize:Ljava/lang/String;

.field public checked:Z

.field public icon:Landroid/graphics/drawable/Drawable;

.field public name:Ljava/lang/String;

.field public packageName:Ljava/lang/String;

.field public status:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pkn"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "cacheSize"    # Ljava/lang/String;

    .prologue
    .line 44
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p2, p0, Lcom/android/settings/autostarts/AppItem;->packageName:Ljava/lang/String;

    .line 46
    iput-object p3, p0, Lcom/android/settings/autostarts/AppItem;->name:Ljava/lang/String;

    .line 47
    iput-object p4, p0, Lcom/android/settings/autostarts/AppItem;->cacheSize:Ljava/lang/String;

    .line 49
    :try_start_9
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 50
    .local v6, "pm":Landroid/content/pm/PackageManager;
    iget-object v7, p0, Lcom/android/settings/autostarts/AppItem;->packageName:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 51
    .local v5, "packageinfo":Landroid/content/pm/PackageInfo;
    iget-object v1, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 52
    .local v1, "applicationinfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v1, v6}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 53
    .local v4, "loadLabel":Ljava/lang/String;
    iput-object v4, p0, Lcom/android/settings/autostarts/AppItem;->appName:Ljava/lang/String;

    .line 54
    iget-object v0, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 55
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v0, v6}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 56
    .local v3, "loadIcon":Landroid/graphics/drawable/Drawable;
    iput-object v3, p0, Lcom/android/settings/autostarts/AppItem;->icon:Landroid/graphics/drawable/Drawable;

    .line 57
    iget-object v7, p0, Lcom/android/settings/autostarts/AppItem;->appName:Ljava/lang/String;

    if-nez v7, :cond_30

    .line 58
    const-string v7, ""

    iput-object v7, p0, Lcom/android/settings/autostarts/AppItem;->appName:Ljava/lang/String;
    :try_end_30
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9 .. :try_end_30} :catch_31

    .line 63
    .end local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "applicationinfo":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "loadIcon":Landroid/graphics/drawable/Drawable;
    .end local v4    # "loadLabel":Ljava/lang/String;
    .end local v5    # "packageinfo":Landroid/content/pm/PackageInfo;
    .end local v6    # "pm":Landroid/content/pm/PackageManager;
    :cond_30
    :goto_30
    return-void

    .line 60
    :catch_31
    move-exception v2

    .line 61
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_30
.end method

.method public constructor <init>(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "checked"    # Z
    .param p3, "pkn"    # Ljava/lang/String;
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "status"    # Ljava/lang/String;

    .prologue
    .line 21
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-boolean p2, p0, Lcom/android/settings/autostarts/AppItem;->checked:Z

    .line 23
    iput-object p3, p0, Lcom/android/settings/autostarts/AppItem;->packageName:Ljava/lang/String;

    .line 24
    iput-object p4, p0, Lcom/android/settings/autostarts/AppItem;->name:Ljava/lang/String;

    .line 25
    iput-object p5, p0, Lcom/android/settings/autostarts/AppItem;->status:Ljava/lang/String;

    .line 27
    :try_start_b
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 28
    .local v6, "pm":Landroid/content/pm/PackageManager;
    iget-object v7, p0, Lcom/android/settings/autostarts/AppItem;->packageName:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 29
    .local v5, "packageinfo":Landroid/content/pm/PackageInfo;
    iget-object v1, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 30
    .local v1, "applicationinfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v1, v6}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 31
    .local v4, "loadLabel":Ljava/lang/String;
    iput-object v4, p0, Lcom/android/settings/autostarts/AppItem;->appName:Ljava/lang/String;

    .line 32
    iget-object v0, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 33
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v0, v6}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 34
    .local v3, "loadIcon":Landroid/graphics/drawable/Drawable;
    iput-object v3, p0, Lcom/android/settings/autostarts/AppItem;->icon:Landroid/graphics/drawable/Drawable;

    .line 35
    iget-object v7, p0, Lcom/android/settings/autostarts/AppItem;->appName:Ljava/lang/String;

    if-nez v7, :cond_32

    .line 36
    const-string v7, ""

    iput-object v7, p0, Lcom/android/settings/autostarts/AppItem;->appName:Ljava/lang/String;
    :try_end_32
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b .. :try_end_32} :catch_33

    .line 41
    .end local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "applicationinfo":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "loadIcon":Landroid/graphics/drawable/Drawable;
    .end local v4    # "loadLabel":Ljava/lang/String;
    .end local v5    # "packageinfo":Landroid/content/pm/PackageInfo;
    .end local v6    # "pm":Landroid/content/pm/PackageManager;
    :cond_32
    :goto_32
    return-void

    .line 38
    :catch_33
    move-exception v2

    .line 39
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_32
.end method
