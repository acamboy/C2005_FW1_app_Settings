.class public Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;
.super Landroid/widget/BaseAdapter;
.source "XssmWhitelistAdapter.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEnabled:Z

.field private mIconClickListener:Landroid/view/View$OnClickListener;

.field private mItemClickListener:Landroid/view/View$OnClickListener;

.field private mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/settings/stamina/xssm/XssmSettingListItemBase;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;Landroid/database/Cursor;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "whiteList"    # Landroid/database/Cursor;
    .param p3, "whiteListGroups"    # Landroid/database/Cursor;

    .prologue
    .line 87
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;->mList:Ljava/util/ArrayList;

    .line 30
    new-instance v0, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter$1;-><init>(Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;)V

    iput-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;->mItemClickListener:Landroid/view/View$OnClickListener;

    .line 37
    new-instance v0, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter$2;

    invoke-direct {v0, p0}, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter$2;-><init>(Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;)V

    iput-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;->mIconClickListener:Landroid/view/View$OnClickListener;

    .line 88
    iput-object p1, p0, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;->mContext:Landroid/content/Context;

    .line 89
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;->initWhiteListFromCursor(Landroid/database/Cursor;Landroid/content/pm/PackageManager;)V

    .line 90
    invoke-direct {p0, p3}, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;->initWhitelistGroupsFromCursor(Landroid/database/Cursor;)V

    .line 91
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private initWhiteListFromCursor(Landroid/database/Cursor;Landroid/content/pm/PackageManager;)V
    .locals 4
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "pm"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 46
    const-string v2, "package"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 47
    .local v1, "uidColumnIndex":I
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 48
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 49
    .local v0, "pkg":Ljava/lang/String;
    iget-object v2, p0, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;->mList:Ljava/util/ArrayList;

    new-instance v3, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;

    invoke-direct {v3, p2, v0}, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;-><init>(Landroid/content/pm/PackageManager;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 51
    .end local v0    # "pkg":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private initWhitelistGroupsFromCursor(Landroid/database/Cursor;)V
    .locals 14
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    .line 54
    const-string v1, "settingIntentPkg"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 55
    .local v13, "settingIntentPkgColumnIndex":I
    const-string v1, "settingIntentCls"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 56
    .local v12, "settingIntentClsColumnIndex":I
    const-string v1, "infoIntentPkg"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 57
    .local v9, "infoIntentPkgColumnIndex":I
    const-string v1, "infoIntentCls"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 58
    .local v8, "infoIntentClsColumnIndex":I
    const-string v1, "label"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 59
    .local v10, "labelColumnIndex":I
    const-string v1, "icon"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 61
    .local v7, "iconColumnIndex":I
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 62
    const/4 v4, 0x0

    .line 63
    .local v4, "settingIntenComponentName":Landroid/content/ComponentName;
    const/4 v5, 0x0

    .line 65
    .local v5, "infoIntenComponentName":Landroid/content/ComponentName;
    invoke-interface {p1, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 66
    .local v11, "pkg":Ljava/lang/String;
    invoke-interface {p1, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 68
    .local v6, "cls":Ljava/lang/String;
    if-eqz v11, :cond_0

    if-eqz v6, :cond_0

    .line 69
    new-instance v4, Landroid/content/ComponentName;

    .end local v4    # "settingIntenComponentName":Landroid/content/ComponentName;
    invoke-direct {v4, v11, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .restart local v4    # "settingIntenComponentName":Landroid/content/ComponentName;
    :cond_0
    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 73
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 75
    if-eqz v11, :cond_1

    if-eqz v6, :cond_1

    .line 76
    new-instance v5, Landroid/content/ComponentName;

    .end local v5    # "infoIntenComponentName":Landroid/content/ComponentName;
    invoke-direct {v5, v11, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    .restart local v5    # "infoIntenComponentName":Landroid/content/ComponentName;
    :cond_1
    new-instance v0, Lcom/sonymobile/settings/stamina/xssm/WhitelistGroupInfo;

    iget-object v1, p0, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct/range {v0 .. v5}, Lcom/sonymobile/settings/stamina/xssm/WhitelistGroupInfo;-><init>(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 83
    .local v0, "item":Lcom/sonymobile/settings/stamina/xssm/WhitelistGroupInfo;
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 85
    .end local v0    # "item":Lcom/sonymobile/settings/stamina/xssm/WhitelistGroupInfo;
    .end local v4    # "settingIntenComponentName":Landroid/content/ComponentName;
    .end local v5    # "infoIntenComponentName":Landroid/content/ComponentName;
    .end local v6    # "cls":Ljava/lang/String;
    .end local v11    # "pkg":Ljava/lang/String;
    :cond_2
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 112
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 117
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 122
    if-nez p2, :cond_0

    .line 123
    iget-object v2, p0, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;->mContext:Landroid/content/Context;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 125
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f040090

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 127
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    :cond_0
    const v2, 0x7f090170

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;->mIconClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    const v2, 0x7f090171

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;->mIconClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    iget-object v2, p0, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;->mItemClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    iget-object v2, p0, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/settings/stamina/xssm/XssmSettingListItemBase;

    .line 131
    .local v1, "item":Lcom/sonymobile/settings/stamina/xssm/XssmSettingListItemBase;
    iget-object v2, p0, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;->mContext:Landroid/content/Context;

    iget-boolean v3, p0, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;->mEnabled:Z

    invoke-virtual {v1, v2, p0, p2, v3}, Lcom/sonymobile/settings/stamina/xssm/XssmSettingListItemBase;->initView(Landroid/content/Context;Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;Landroid/view/View;Z)V

    .line 132
    return-object p2
.end method

.method protected removeItemFromList(Lcom/sonymobile/settings/stamina/xssm/XssmSettingListItemBase;)V
    .locals 3
    .param p1, "item"    # Lcom/sonymobile/settings/stamina/xssm/XssmSettingListItemBase;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;->notifyDataSetChanged()V

    .line 99
    return-void

    .line 97
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tried to remove item "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from list, but failed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 102
    iput-boolean p1, p0, Lcom/sonymobile/settings/stamina/xssm/XssmWhitelistAdapter;->mEnabled:Z

    .line 103
    return-void
.end method
