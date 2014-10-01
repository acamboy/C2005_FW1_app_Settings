.class public Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;
.super Landroid/preference/PreferenceCategory;
.source "StorageVolumePreferenceCategory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$PreferenceHeader;
    }
.end annotation


# instance fields
.field private mFormatPreference:Landroid/preference/Preference;

.field private mItemApps:Lcom/android/settings/deviceinfo/StorageItemPreference;

.field private mItemAvailable:Lcom/android/settings/deviceinfo/StorageItemPreference;

.field private mItemCache:Lcom/android/settings/deviceinfo/StorageItemPreference;

.field private mItemDcim:Lcom/android/settings/deviceinfo/StorageItemPreference;

.field private mItemDownloads:Lcom/android/settings/deviceinfo/StorageItemPreference;

.field private mItemMisc:Lcom/android/settings/deviceinfo/StorageItemPreference;

.field private mItemMusic:Lcom/android/settings/deviceinfo/StorageItemPreference;

.field private mItemTotal:Lcom/android/settings/deviceinfo/StorageItemPreference;

.field private mItemUsers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/deviceinfo/StorageItemPreference;",
            ">;"
        }
    .end annotation
.end field

.field private final mMeasure:Lcom/android/settings/deviceinfo/StorageMeasurement;

.field private mMountTogglePreference:Landroid/preference/Preference;

.field private mReceiver:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementReceiver;

.field private final mResources:Landroid/content/res/Resources;

.field private mStorageInfo:Lcom/android/settings/StorageInfo;

.field private mStorageLow:Landroid/preference/Preference;

.field private final mStorageManager:Landroid/os/storage/StorageManager;

.field private mTotalSize:J

.field private mUpdateHandler:Landroid/os/Handler;

.field private mUsageBarPreference:Lcom/android/settings/deviceinfo/UsageBarPreference;

.field private mUsbConnected:Z

.field private mUsbFunction:Ljava/lang/String;

.field private final mUserManager:Landroid/os/UserManager;

.field private final mVolume:Landroid/os/storage/StorageVolume;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/os/storage/StorageVolume;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "volume"    # Landroid/os/storage/StorageVolume;

    .prologue
    .line 126
    invoke-direct {p0, p1}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 81
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemUsers:Ljava/util/List;

    .line 91
    new-instance v1, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$1;

    invoke-direct {v1, p0}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$1;-><init>(Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;)V

    iput-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mUpdateHandler:Landroid/os/Handler;

    .line 425
    new-instance v1, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$2;

    invoke-direct {v1, p0}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$2;-><init>(Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;)V

    iput-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mReceiver:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementReceiver;

    .line 128
    iput-object p2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    .line 129
    invoke-static {p1, p2}, Lcom/android/settings/deviceinfo/StorageMeasurement;->getInstance(Landroid/content/Context;Landroid/os/storage/StorageVolume;)Lcom/android/settings/deviceinfo/StorageMeasurement;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMeasure:Lcom/android/settings/deviceinfo/StorageMeasurement;

    .line 130
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    .line 131
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 133
    .local v0, "path":Ljava/lang/String;
    :goto_0
    invoke-static {p1}, Landroid/os/storage/StorageManager;->from(Landroid/content/Context;)Landroid/os/storage/StorageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 134
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-static {v1, v0}, Lcom/android/settings/StorageInfo;->getStorageInfo(Landroid/os/storage/StorageManager;Ljava/lang/String;)Lcom/android/settings/StorageInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mStorageInfo:Lcom/android/settings/StorageInfo;

    .line 135
    const-string v1, "user"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    iput-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mUserManager:Landroid/os/UserManager;

    .line 137
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v1, p1}, Landroid/os/storage/StorageVolume;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    .line 139
    return-void

    .line 131
    .end local v0    # "path":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 137
    .restart local v0    # "path":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f07001c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mUpdateHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static buildForInternal(Landroid/content/Context;)Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 114
    new-instance v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;-><init>(Landroid/content/Context;Landroid/os/storage/StorageVolume;)V

    return-object v0
.end method

.method public static buildForPhysical(Landroid/content/Context;Landroid/os/storage/StorageVolume;)Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "volume"    # Landroid/os/storage/StorageVolume;

    .prologue
    .line 122
    new-instance v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;-><init>(Landroid/content/Context;Landroid/os/storage/StorageVolume;)V

    return-object v0
.end method

.method private buildItem(II)Lcom/android/settings/deviceinfo/StorageItemPreference;
    .locals 2
    .param p1, "titleRes"    # I
    .param p2, "colorRes"    # I

    .prologue
    .line 142
    new-instance v0, Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lcom/android/settings/deviceinfo/StorageItemPreference;-><init>(Landroid/content/Context;II)V

    return-object v0
.end method

.method private formatSize(J)Ljava/lang/String;
    .locals 1
    .param p1, "size"    # J

    .prologue
    .line 422
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getUsersExcluding(Landroid/content/pm/UserInfo;)Ljava/util/List;
    .locals 4
    .param p1, "excluding"    # Landroid/content/pm/UserInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/UserInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 498
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v1

    .line 499
    .local v1, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 500
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/pm/UserInfo;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 501
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    iget v3, p1, Landroid/content/pm/UserInfo;->id:I

    if-ne v2, v3, :cond_0

    .line 502
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 505
    :cond_1
    return-object v1
.end method

.method private measure()V
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMeasure:Lcom/android/settings/deviceinfo/StorageMeasurement;

    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/StorageMeasurement;->invalidate()V

    .line 391
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMeasure:Lcom/android/settings/deviceinfo/StorageMeasurement;

    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/StorageMeasurement;->measure()V

    .line 392
    return-void
.end method

.method private static varargs totalValues(Ljava/util/HashMap;[Ljava/lang/String;)J
    .locals 8
    .param p1, "keys"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;[",
            "Ljava/lang/String;",
            ")J"
        }
    .end annotation

    .prologue
    .line 332
    .local p0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    const-wide/16 v4, 0x0

    .line 333
    .local v4, "total":J
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v2, v0, v1

    .line 334
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 335
    invoke-virtual {p0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    add-long/2addr v4, v6

    .line 333
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 338
    .end local v2    # "key":Ljava/lang/String;
    :cond_1
    return-wide v4
.end method

.method private updatePreference(Lcom/android/settings/deviceinfo/StorageItemPreference;J)V
    .locals 5
    .param p1, "pref"    # Lcom/android/settings/deviceinfo/StorageItemPreference;
    .param p2, "size"    # J

    .prologue
    .line 380
    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-lez v1, :cond_0

    .line 381
    invoke-direct {p0, p2, p3}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->formatSize(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 382
    invoke-virtual {p1}, Lcom/android/settings/deviceinfo/StorageItemPreference;->getOrder()I

    move-result v0

    .line 383
    .local v0, "order":I
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/settings/deviceinfo/UsageBarPreference;

    long-to-float v2, p2

    iget-wide v3, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mTotalSize:J

    long-to-float v3, v3

    div-float/2addr v2, v3

    iget v3, p1, Lcom/android/settings/deviceinfo/StorageItemPreference;->color:I

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/settings/deviceinfo/UsageBarPreference;->addEntry(IFI)V

    .line 387
    .end local v0    # "order":I
    :goto_0
    return-void

    .line 385
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method private updatePreferencesFromState()V
    .locals 6

    .prologue
    const v5, 0x7f0703f6

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 246
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    if-nez v1, :cond_1

    .line 314
    :cond_0
    :goto_0
    return-void

    .line 248
    :cond_1
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 249
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    if-eqz v1, :cond_2

    .line 250
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 253
    :cond_2
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 255
    .local v0, "state":Ljava/lang/String;
    const-string v1, "mounted_ro"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 256
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemAvailable:Lcom/android/settings/deviceinfo/StorageItemPreference;

    const v2, 0x7f0703e3

    invoke-virtual {v1, v2}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setTitle(I)V

    .line 257
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    if-eqz v1, :cond_3

    .line 258
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 264
    :cond_3
    :goto_1
    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "mounted_ro"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 266
    :cond_4
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 267
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mStorageInfo:Lcom/android/settings/StorageInfo;

    invoke-virtual {v2}, Lcom/android/settings/StorageInfo;->getMountToggleEjectTitle()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(I)V

    .line 268
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mStorageInfo:Lcom/android/settings/StorageInfo;

    invoke-virtual {v2}, Lcom/android/settings/StorageInfo;->getMountToggleEjectSummary()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(I)V

    .line 273
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemTotal:Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 274
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemAvailable:Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 297
    :cond_5
    :goto_2
    iget-boolean v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mUsbConnected:Z

    if-eqz v1, :cond_d

    const-string v1, "mtp"

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mUsbFunction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "ptp"

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mUsbFunction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 299
    :cond_6
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 300
    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "mounted_ro"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 302
    :cond_7
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 306
    :cond_8
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    if-eqz v1, :cond_0

    .line 307
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 308
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 261
    :cond_9
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemAvailable:Lcom/android/settings/deviceinfo/StorageItemPreference;

    const v2, 0x7f0703e2

    invoke-virtual {v1, v2}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setTitle(I)V

    goto/16 :goto_1

    .line 278
    :cond_a
    const-string v1, "unmounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    const-string v1, "nofs"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    const-string v1, "unmountable"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 280
    :cond_b
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 281
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mStorageInfo:Lcom/android/settings/StorageInfo;

    invoke-virtual {v2}, Lcom/android/settings/StorageInfo;->getMountToggleMountTitle()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(I)V

    .line 282
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mStorageInfo:Lcom/android/settings/StorageInfo;

    invoke-virtual {v2}, Lcom/android/settings/StorageInfo;->getMountToggleMountSummary()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(I)V

    .line 289
    :goto_3
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/settings/deviceinfo/UsageBarPreference;

    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 290
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemTotal:Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 291
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemAvailable:Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 292
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    if-eqz v1, :cond_5

    .line 293
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_2

    .line 284
    :cond_c
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 285
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mStorageInfo:Lcom/android/settings/StorageInfo;

    invoke-virtual {v2}, Lcom/android/settings/StorageInfo;->getMountToggleMountTitle()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(I)V

    .line 286
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mStorageInfo:Lcom/android/settings/StorageInfo;

    invoke-virtual {v2}, Lcom/android/settings/StorageInfo;->getMountToggleInsertSummary()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_3

    .line 310
    :cond_d
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    if-eqz v1, :cond_0

    .line 311
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 312
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0703f3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public getStorageVolume()Landroid/os/storage/StorageVolume;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    return-object v0
.end method

.method public init()V
    .locals 22

    .prologue
    .line 146
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 150
    .local v6, "context":Landroid/content/Context;
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 155
    .local v9, "currentUser":Landroid/content/pm/UserInfo;
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->getUsersExcluding(Landroid/content/pm/UserInfo;)Ljava/util/List;

    move-result-object v14

    .line 156
    .local v14, "otherUsers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    move-object/from16 v19, v0

    if-nez v19, :cond_3

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v19

    if-lez v19, :cond_3

    const/16 v17, 0x1

    .line 158
    .local v17, "showUsers":Z
    :goto_0
    new-instance v19, Lcom/android/settings/deviceinfo/UsageBarPreference;

    move-object/from16 v0, v19

    invoke-direct {v0, v6}, Lcom/android/settings/deviceinfo/UsageBarPreference;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/settings/deviceinfo/UsageBarPreference;

    .line 159
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/settings/deviceinfo/UsageBarPreference;

    move-object/from16 v19, v0

    const/16 v20, -0x2

    invoke-virtual/range {v19 .. v20}, Lcom/android/settings/deviceinfo/UsageBarPreference;->setOrder(I)V

    .line 160
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/settings/deviceinfo/UsageBarPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 162
    const v19, 0x7f0703e4

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->buildItem(II)Lcom/android/settings/deviceinfo/StorageItemPreference;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemTotal:Lcom/android/settings/deviceinfo/StorageItemPreference;

    .line 163
    const v19, 0x7f0703e2

    const v20, 0x7f0b0003

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->buildItem(II)Lcom/android/settings/deviceinfo/StorageItemPreference;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemAvailable:Lcom/android/settings/deviceinfo/StorageItemPreference;

    .line 164
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemTotal:Lcom/android/settings/deviceinfo/StorageItemPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 165
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemAvailable:Lcom/android/settings/deviceinfo/StorageItemPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 167
    const v19, 0x7f0703e6

    const v20, 0x7f0b0004

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->buildItem(II)Lcom/android/settings/deviceinfo/StorageItemPreference;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemApps:Lcom/android/settings/deviceinfo/StorageItemPreference;

    .line 168
    const v19, 0x7f0703e9

    const v20, 0x7f0b0006

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->buildItem(II)Lcom/android/settings/deviceinfo/StorageItemPreference;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemDcim:Lcom/android/settings/deviceinfo/StorageItemPreference;

    .line 169
    const v19, 0x7f0703ea

    const v20, 0x7f0b0007

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->buildItem(II)Lcom/android/settings/deviceinfo/StorageItemPreference;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemMusic:Lcom/android/settings/deviceinfo/StorageItemPreference;

    .line 170
    const v19, 0x7f0703e8

    const v20, 0x7f0b0005

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->buildItem(II)Lcom/android/settings/deviceinfo/StorageItemPreference;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemDownloads:Lcom/android/settings/deviceinfo/StorageItemPreference;

    .line 171
    const v19, 0x7f0703ec

    const v20, 0x7f0b0008

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->buildItem(II)Lcom/android/settings/deviceinfo/StorageItemPreference;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemCache:Lcom/android/settings/deviceinfo/StorageItemPreference;

    .line 172
    const v19, 0x7f0703eb

    const v20, 0x7f0b0009

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->buildItem(II)Lcom/android/settings/deviceinfo/StorageItemPreference;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemMisc:Lcom/android/settings/deviceinfo/StorageItemPreference;

    .line 174
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemCache:Lcom/android/settings/deviceinfo/StorageItemPreference;

    move-object/from16 v19, v0

    const-string v20, "cache"

    invoke-virtual/range {v19 .. v20}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setKey(Ljava/lang/String;)V

    .line 176
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    move-object/from16 v19, v0

    if-eqz v19, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/os/storage/StorageVolume;->isPrimary()Z

    move-result v19

    if-eqz v19, :cond_4

    :cond_0
    const/16 v16, 0x1

    .line 177
    .local v16, "showDetails":Z
    :goto_1
    if-eqz v16, :cond_6

    .line 178
    if-eqz v17, :cond_1

    .line 179
    new-instance v19, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$PreferenceHeader;

    iget-object v0, v9, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v0, v6, v1}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$PreferenceHeader;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 182
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    move-object/from16 v19, v0

    if-nez v19, :cond_2

    .line 183
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemApps:Lcom/android/settings/deviceinfo/StorageItemPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 184
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemDcim:Lcom/android/settings/deviceinfo/StorageItemPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 185
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemMusic:Lcom/android/settings/deviceinfo/StorageItemPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 186
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemDownloads:Lcom/android/settings/deviceinfo/StorageItemPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 187
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemCache:Lcom/android/settings/deviceinfo/StorageItemPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 188
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemMisc:Lcom/android/settings/deviceinfo/StorageItemPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 191
    :cond_2
    if-eqz v17, :cond_6

    .line 192
    new-instance v19, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$PreferenceHeader;

    const v20, 0x7f070408

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v0, v6, v1}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$PreferenceHeader;-><init>(Landroid/content/Context;I)V

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 194
    const/4 v7, 0x0

    .line 195
    .local v7, "count":I
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_6

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/UserInfo;

    .line 196
    .local v12, "info":Landroid/content/pm/UserInfo;
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "count":I
    .local v8, "count":I
    rem-int/lit8 v19, v7, 0x2

    if-nez v19, :cond_5

    const v5, 0x7f0b000a

    .line 198
    .local v5, "colorRes":I
    :goto_3
    new-instance v18, Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v19

    iget-object v0, v12, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    move-object/from16 v20, v0

    iget v0, v12, Landroid/content/pm/UserInfo;->id:I

    move/from16 v21, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move/from16 v3, v21

    invoke-direct {v0, v1, v2, v5, v3}, Lcom/android/settings/deviceinfo/StorageItemPreference;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;II)V

    .line 200
    .local v18, "userPref":Lcom/android/settings/deviceinfo/StorageItemPreference;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemUsers:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    move v7, v8

    .line 202
    .end local v8    # "count":I
    .restart local v7    # "count":I
    goto :goto_2

    .line 151
    .end local v5    # "colorRes":I
    .end local v7    # "count":I
    .end local v9    # "currentUser":Landroid/content/pm/UserInfo;
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v12    # "info":Landroid/content/pm/UserInfo;
    .end local v14    # "otherUsers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v16    # "showDetails":Z
    .end local v17    # "showUsers":Z
    .end local v18    # "userPref":Lcom/android/settings/deviceinfo/StorageItemPreference;
    :catch_0
    move-exception v10

    .line 152
    .local v10, "e":Landroid/os/RemoteException;
    new-instance v19, Ljava/lang/RuntimeException;

    const-string v20, "Failed to get current user"

    invoke-direct/range {v19 .. v20}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 156
    .end local v10    # "e":Landroid/os/RemoteException;
    .restart local v9    # "currentUser":Landroid/content/pm/UserInfo;
    .restart local v14    # "otherUsers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_3
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 176
    .restart local v17    # "showUsers":Z
    :cond_4
    const/16 v16, 0x0

    goto/16 :goto_1

    .line 196
    .restart local v8    # "count":I
    .restart local v11    # "i$":Ljava/util/Iterator;
    .restart local v12    # "info":Landroid/content/pm/UserInfo;
    .restart local v16    # "showDetails":Z
    :cond_5
    const v5, 0x7f0b000b

    goto :goto_3

    .line 206
    .end local v8    # "count":I
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v12    # "info":Landroid/content/pm/UserInfo;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    move-object/from16 v19, v0

    if-eqz v19, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v13

    .line 208
    .local v13, "isRemovable":Z
    :goto_4
    new-instance v19, Landroid/preference/Preference;

    move-object/from16 v0, v19

    invoke-direct {v0, v6}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    .line 209
    if-eqz v13, :cond_7

    .line 210
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mStorageInfo:Lcom/android/settings/StorageInfo;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/settings/StorageInfo;->getMountToggleEjectTitle()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Landroid/preference/Preference;->setTitle(I)V

    .line 211
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mStorageInfo:Lcom/android/settings/StorageInfo;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/settings/StorageInfo;->getMountToggleEjectSummary()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Landroid/preference/Preference;->setSummary(I)V

    .line 212
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 216
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    move-object/from16 v19, v0

    if-eqz v19, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v19

    if-nez v19, :cond_b

    const/4 v4, 0x1

    .line 217
    .local v4, "allowFormat":Z
    :goto_5
    if-eqz v4, :cond_8

    .line 218
    new-instance v19, Landroid/preference/Preference;

    move-object/from16 v0, v19

    invoke-direct {v0, v6}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    .line 219
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mStorageInfo:Lcom/android/settings/StorageInfo;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/settings/StorageInfo;->getFormatPreferenceTitle()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Landroid/preference/Preference;->setTitle(I)V

    .line 220
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mStorageInfo:Lcom/android/settings/StorageInfo;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/settings/StorageInfo;->getFormatPreferenceSummary()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Landroid/preference/Preference;->setSummary(I)V

    .line 221
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 224
    :cond_8
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v15

    .line 226
    .local v15, "pm":Landroid/content/pm/IPackageManager;
    :try_start_1
    invoke-interface {v15}, Landroid/content/pm/IPackageManager;->isStorageLow()Z

    move-result v19

    if-eqz v19, :cond_d

    .line 227
    new-instance v19, Landroid/preference/Preference;

    move-object/from16 v0, v19

    invoke-direct {v0, v6}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mStorageLow:Landroid/preference/Preference;

    .line 228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mStorageLow:Landroid/preference/Preference;

    move-object/from16 v19, v0

    const/16 v20, -0x1

    invoke-virtual/range {v19 .. v20}, Landroid/preference/Preference;->setOrder(I)V

    .line 229
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mStorageLow:Landroid/preference/Preference;

    move-object/from16 v19, v0

    const v20, 0x7f0703fe

    invoke-virtual/range {v19 .. v20}, Landroid/preference/Preference;->setTitle(I)V

    .line 230
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mStorageLow:Landroid/preference/Preference;

    move-object/from16 v19, v0

    const v20, 0x7f0703ff

    invoke-virtual/range {v19 .. v20}, Landroid/preference/Preference;->setSummary(I)V

    .line 231
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mStorageLow:Landroid/preference/Preference;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 238
    :cond_9
    :goto_6
    return-void

    .line 206
    .end local v4    # "allowFormat":Z
    .end local v13    # "isRemovable":Z
    .end local v15    # "pm":Landroid/content/pm/IPackageManager;
    :cond_a
    const/4 v13, 0x0

    goto/16 :goto_4

    .line 216
    .restart local v13    # "isRemovable":Z
    :cond_b
    const/4 v4, 0x0

    goto/16 :goto_5

    :cond_c
    const/4 v4, 0x0

    goto/16 :goto_5

    .line 232
    .restart local v4    # "allowFormat":Z
    .restart local v15    # "pm":Landroid/content/pm/IPackageManager;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mStorageLow:Landroid/preference/Preference;

    move-object/from16 v19, v0

    if-eqz v19, :cond_9

    .line 233
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mStorageLow:Landroid/preference/Preference;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 234
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mStorageLow:Landroid/preference/Preference;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_6

    .line 236
    :catch_1
    move-exception v19

    goto :goto_6
.end method

.method public intentForClick(Landroid/preference/Preference;)Landroid/content/Intent;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 443
    const/4 v0, 0x0

    .line 448
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    .line 449
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    if-ne p1, v1, :cond_1

    .line 450
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 451
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/settings/MediaFormat;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 452
    const-string v1, "storage_volume"

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 474
    :cond_0
    :goto_0
    return-object v0

    .line 453
    :cond_1
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemApps:Lcom/android/settings/deviceinfo/StorageItemPreference;

    if-ne p1, v1, :cond_2

    .line 454
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MANAGE_PACKAGE_STORAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 455
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/settings/Settings$ManageApplicationsActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0

    .line 457
    :cond_2
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemDownloads:Lcom/android/settings/deviceinfo/StorageItemPreference;

    if-ne p1, v1, :cond_3

    .line 458
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW_DOWNLOADS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.app.DownloadManager.extra_sortBySize"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    .line 460
    :cond_3
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemMusic:Lcom/android/settings/deviceinfo/StorageItemPreference;

    if-ne p1, v1, :cond_4

    .line 461
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 462
    const-string v1, "audio/mp3"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 463
    :cond_4
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemDcim:Lcom/android/settings/deviceinfo/StorageItemPreference;

    if-ne p1, v1, :cond_5

    .line 464
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 465
    const-string v1, "android.intent.extra.LOCAL_ONLY"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 467
    const-string v1, "vnd.android.cursor.dir/image"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 468
    :cond_5
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemMisc:Lcom/android/settings/deviceinfo/StorageItemPreference;

    if-ne p1, v1, :cond_0

    .line 469
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 470
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/android/settings/deviceinfo/MiscFilesHandler;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 471
    const-string v1, "storage_volume"

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public mountToggleClicked(Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 439
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCacheCleared()V
    .locals 0

    .prologue
    .line 414
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->measure()V

    .line 415
    return-void
.end method

.method public onMediaScannerFinished()V
    .locals 0

    .prologue
    .line 410
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->measure()V

    .line 411
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 418
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMeasure:Lcom/android/settings/deviceinfo/StorageMeasurement;

    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/StorageMeasurement;->cleanUp()V

    .line 419
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 395
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMeasure:Lcom/android/settings/deviceinfo/StorageMeasurement;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mReceiver:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementReceiver;

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StorageMeasurement;->setReceiver(Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementReceiver;)V

    .line 396
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->measure()V

    .line 397
    return-void
.end method

.method public onStorageStateChanged()V
    .locals 0

    .prologue
    .line 400
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->measure()V

    .line 401
    return-void
.end method

.method public onUsbStateChanged(ZLjava/lang/String;)V
    .locals 0
    .param p1, "isUsbConnected"    # Z
    .param p2, "usbFunction"    # Ljava/lang/String;

    .prologue
    .line 404
    iput-boolean p1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mUsbConnected:Z

    .line 405
    iput-object p2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mUsbFunction:Ljava/lang/String;

    .line 406
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->measure()V

    .line 407
    return-void
.end method

.method public updateApproximate(JJ)V
    .locals 6
    .param p1, "totalSize"    # J
    .param p3, "availSize"    # J

    .prologue
    .line 317
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemTotal:Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-direct {p0, p1, p2}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->formatSize(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 318
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemAvailable:Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-direct {p0, p3, p4}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->formatSize(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 320
    iput-wide p1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mTotalSize:J

    .line 322
    sub-long v0, p1, p3

    .line 324
    .local v0, "usedSize":J
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/settings/deviceinfo/UsageBarPreference;

    invoke-virtual {v2}, Lcom/android/settings/deviceinfo/UsageBarPreference;->clear()V

    .line 325
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/settings/deviceinfo/UsageBarPreference;

    const/4 v3, 0x0

    long-to-float v4, v0

    long-to-float v5, p1

    div-float/2addr v4, v5

    const v5, -0x777778

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/settings/deviceinfo/UsageBarPreference;->addEntry(IFI)V

    .line 326
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/settings/deviceinfo/UsageBarPreference;

    invoke-virtual {v2}, Lcom/android/settings/deviceinfo/UsageBarPreference;->commit()V

    .line 328
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->updatePreferencesFromState()V

    .line 329
    return-void
.end method

.method public updateDetails(Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;)V
    .locals 16
    .param p1, "details"    # Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;

    .prologue
    .line 345
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemTotal:Lcom/android/settings/deviceinfo/StorageItemPreference;

    move-object/from16 v0, p1

    iget-wide v13, v0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->totalSize:J

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->formatSize(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 346
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemAvailable:Lcom/android/settings/deviceinfo/StorageItemPreference;

    move-object/from16 v0, p1

    iget-wide v13, v0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->availSize:J

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->formatSize(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 348
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    if-eqz v12, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v12}, Landroid/os/storage/StorageVolume;->isPrimary()Z

    move-result v12

    if-eqz v12, :cond_1

    :cond_0
    const/4 v8, 0x1

    .line 349
    .local v8, "showDetails":Z
    :goto_0
    if-nez v8, :cond_2

    .line 377
    :goto_1
    return-void

    .line 348
    .end local v8    # "showDetails":Z
    :cond_1
    const/4 v8, 0x0

    goto :goto_0

    .line 352
    .restart local v8    # "showDetails":Z
    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/settings/deviceinfo/UsageBarPreference;

    invoke-virtual {v12}, Lcom/android/settings/deviceinfo/UsageBarPreference;->clear()V

    .line 354
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemApps:Lcom/android/settings/deviceinfo/StorageItemPreference;

    move-object/from16 v0, p1

    iget-wide v13, v0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->appsSize:J

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13, v14}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->updatePreference(Lcom/android/settings/deviceinfo/StorageItemPreference;J)V

    .line 356
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->mediaSize:Ljava/util/HashMap;

    const/4 v13, 0x3

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    sget-object v15, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    aput-object v15, v13, v14

    const/4 v14, 0x1

    sget-object v15, Landroid/os/Environment;->DIRECTORY_MOVIES:Ljava/lang/String;

    aput-object v15, v13, v14

    const/4 v14, 0x2

    sget-object v15, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->totalValues(Ljava/util/HashMap;[Ljava/lang/String;)J

    move-result-wide v1

    .line 358
    .local v1, "dcimSize":J
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemDcim:Lcom/android/settings/deviceinfo/StorageItemPreference;

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v1, v2}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->updatePreference(Lcom/android/settings/deviceinfo/StorageItemPreference;J)V

    .line 360
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->mediaSize:Ljava/util/HashMap;

    const/4 v13, 0x5

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    sget-object v15, Landroid/os/Environment;->DIRECTORY_MUSIC:Ljava/lang/String;

    aput-object v15, v13, v14

    const/4 v14, 0x1

    sget-object v15, Landroid/os/Environment;->DIRECTORY_ALARMS:Ljava/lang/String;

    aput-object v15, v13, v14

    const/4 v14, 0x2

    sget-object v15, Landroid/os/Environment;->DIRECTORY_NOTIFICATIONS:Ljava/lang/String;

    aput-object v15, v13, v14

    const/4 v14, 0x3

    sget-object v15, Landroid/os/Environment;->DIRECTORY_RINGTONES:Ljava/lang/String;

    aput-object v15, v13, v14

    const/4 v14, 0x4

    sget-object v15, Landroid/os/Environment;->DIRECTORY_PODCASTS:Ljava/lang/String;

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->totalValues(Ljava/util/HashMap;[Ljava/lang/String;)J

    move-result-wide v6

    .line 363
    .local v6, "musicSize":J
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemMusic:Lcom/android/settings/deviceinfo/StorageItemPreference;

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v6, v7}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->updatePreference(Lcom/android/settings/deviceinfo/StorageItemPreference;J)V

    .line 365
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->mediaSize:Ljava/util/HashMap;

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    sget-object v15, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->totalValues(Ljava/util/HashMap;[Ljava/lang/String;)J

    move-result-wide v3

    .line 366
    .local v3, "downloadsSize":J
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemDownloads:Lcom/android/settings/deviceinfo/StorageItemPreference;

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v3, v4}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->updatePreference(Lcom/android/settings/deviceinfo/StorageItemPreference;J)V

    .line 368
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemCache:Lcom/android/settings/deviceinfo/StorageItemPreference;

    move-object/from16 v0, p1

    iget-wide v13, v0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->cacheSize:J

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13, v14}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->updatePreference(Lcom/android/settings/deviceinfo/StorageItemPreference;J)V

    .line 369
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemMisc:Lcom/android/settings/deviceinfo/StorageItemPreference;

    move-object/from16 v0, p1

    iget-wide v13, v0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->miscSize:J

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13, v14}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->updatePreference(Lcom/android/settings/deviceinfo/StorageItemPreference;J)V

    .line 371
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemUsers:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/settings/deviceinfo/StorageItemPreference;

    .line 372
    .local v9, "userPref":Lcom/android/settings/deviceinfo/StorageItemPreference;
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->usersSize:Landroid/util/SparseLongArray;

    iget v13, v9, Lcom/android/settings/deviceinfo/StorageItemPreference;->userHandle:I

    invoke-virtual {v12, v13}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v10

    .line 373
    .local v10, "userSize":J
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v10, v11}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->updatePreference(Lcom/android/settings/deviceinfo/StorageItemPreference;J)V

    goto :goto_2

    .line 376
    .end local v9    # "userPref":Lcom/android/settings/deviceinfo/StorageItemPreference;
    .end local v10    # "userSize":J
    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/settings/deviceinfo/UsageBarPreference;

    invoke-virtual {v12}, Lcom/android/settings/deviceinfo/UsageBarPreference;->commit()V

    goto/16 :goto_1
.end method
