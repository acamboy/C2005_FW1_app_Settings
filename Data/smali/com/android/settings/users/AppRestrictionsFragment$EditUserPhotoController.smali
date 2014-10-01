.class Lcom/android/settings/users/AppRestrictionsFragment$EditUserPhotoController;
.super Ljava/lang/Object;
.source "AppRestrictionsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/users/AppRestrictionsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EditUserPhotoController"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/users/AppRestrictionsFragment$EditUserPhotoController$AdapterItem;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mCropPictureUri:Landroid/net/Uri;

.field private final mFragment:Landroid/app/Fragment;

.field private final mImageView:Landroid/widget/ImageView;

.field private mNewUserPhotoBitmap:Landroid/graphics/Bitmap;

.field private mNewUserPhotoDrawable:Landroid/graphics/drawable/Drawable;

.field private final mPhotoSize:I

.field private final mTakePictureUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/app/Fragment;Landroid/widget/ImageView;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "view"    # Landroid/widget/ImageView;
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;
    .param p4, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1115
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1116
    invoke-virtual {p2}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/users/AppRestrictionsFragment$EditUserPhotoController;->mContext:Landroid/content/Context;

    .line 1117
    iput-object p1, p0, Lcom/android/settings/users/AppRestrictionsFragment$EditUserPhotoController;->mFragment:Landroid/app/Fragment;

    .line 1118
    iput-object p2, p0, Lcom/android/settings/users/AppRestrictionsFragment$EditUserPhotoController;->mImageView:Landroid/widget/ImageView;

    .line 1119
    iget-object v0, p0, Lcom/android/settings/users/AppRestrictionsFragment$EditUserPhotoController;->mContext:Landroid/content/Context;

    const-string v1, "CropEditUserPhoto.jpg"

    invoke-static {v0, v1}, Lcom/android/settings/users/AppRestrictionsFragment$EditUserPhotoController;->createTempImageUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/users/AppRestrictionsFragment$EditUserPhotoController;->mCropPictureUri:Landroid/net/Uri;

    .line 1120
    iget-object v0, p0, Lcom/android/settings/users/AppRestrictionsFragment$EditUserPhotoController;->mContext:Landroid/content/Context;

    const-string v1, "TakeEditUserPhoto2.jpg"

    invoke-static {v0, v1}, Lcom/android/settings/users/AppRestrictionsFragment$EditUserPhotoController;->createTempImageUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/users/AppRestrictionsFragment$EditUserPhotoController;->mTakePictureUri:Landroid/net/Uri;

    .line 1121
    iget-object v0, p0, Lcom/android/settings/users/AppRestrictionsFragment$EditUserPhotoController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/users/AppRestrictionsFragment$EditUserPhotoController;->getPhotoSize(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/users/AppRestrictionsFragment$EditUserPhotoController;->mPhotoSize:I

    .line 1122
    iget-object v0, p0, Lcom/android/settings/users/AppRestrictionsFragment$EditUserPhotoController;->mImageView:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/settings/users/AppRestrictionsFragment$EditUserPhotoController$1;

    invoke-direct {v1, p0}, Lcom/android/settings/users/AppRestrictionsFragment$EditUserPhotoController$1;-><init>(Lcom/android/settings/users/AppRestrictionsFragment$EditUserPhotoController;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1128
    iput-object p3, p0, Lcom/android/settings/users/AppRestrictionsFragment$EditUserPhotoController;->mNewUserPhotoBitmap:Landroid/graphics/Bitmap;

    .line 1129
    iput-object p4, p0, Lcom/android/settings/users/AppRestrictionsFragment$EditUserPhotoController;->mNewUserPhotoDrawable:Landroid/graphics/drawable/Drawable;

    .line 1130
    return-void
.end method

.method static synthetic access$2100(Lcom/android/settings/users/AppRestrictionsFragment$EditUserPhotoController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/users/AppRestrictionsFragment$EditUserPhotoController;

    .prologue
    .line 1089
    invoke-direct {p0}, Lcom/android/settings/users/AppRestrictionsFragment$EditUserPhotoController;->showUpdatePhotoPopup()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/settings/users/AppRestrictionsFragment$EditUserPhotoController;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/users/AppRestrictionsFragment$EditUserPhotoController;

    .prologue
    .line 1089
    iget-object v0, p0, Lcom/android/settings/users/AppRestrictionsFragment$EditUserPhotoController;->mCropPictureUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/settings/users/AppRestrictionsFragment$EditUserPhotoController;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/users/AppRestrictionsFragment$EditUserPhotoController;

    .prologue
    .line 1089
    iget-object v0, p0, Lcom/android/settings/users/AppRestrictionsFragment$EditUserPhotoController;->mNewUserPhotoBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/android/settings/users/AppRestrictionsFragment$EditUserPhotoController;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/users/AppRestrictionsFragment$EditUserPhotoController;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1089
    iput-object p1, p0, Lcom/android/settings/users/AppRestrictionsFragment$EditUserPhotoController;->mNewUserPhotoBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/android/settings/users/AppRestrictionsFragment$EditUserPhotoController;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/users/AppRestrictionsFragment$EditUserPhotoController;

    .prologue
    .line 1089
    iget-object v0, p0, Lcom/android/settings/users/AppRestrictionsFragment$EditUserPhotoController;->mNewUserPhotoDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/android/settings/users/AppRestrictionsFragment$EditUserPhotoController;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/users/AppRestrictionsFragment$EditUserPhotoController;
    .param p1, "x1"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1089
    iput-object p1, p0, Lcom/android/settings/users/AppRestrictionsFragment$EditUserPhotoController;->mNewUserPhotoDrawable:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$2500(Lcom/android/settings/users/AppRestrictionsFragment$EditUserPhotoController;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/users/AppRestrictionsFragment$EditUserPhotoController;

    .prologue
    .line 1089
    iget-object v0, p0, Lcom/android/settings/users/AppRestrictionsFragment$EditUserPhotoController;->mImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/settings/users/AppRestrictionsFragment$EditUserPhotoController;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/users/AppRestrictionsFragment$EditUserPhotoController;

    .prologue
    .line 1089
    iget-object v0, p0, Lcom/android/settings/users/AppRestrictionsFragment$EditUserPhotoController;->mTakePictureUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/settings/users/AppRestrictionsFragment$EditUserPhotoController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/users/AppRestrictionsFragment$EditUserPhotoController;

    .prologue
    .line 1089
    invoke-direct {p0}, Lcom/android/settings/users/AppRestrictionsFragment$EditUserPhotoController;->choosePhoto()V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/settings/users/AppRestrictionsFragment$EditUserPhotoController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/users/AppRestrictionsFragment$EditUserPhotoController;

    .prologue
    .line 1089
    invoke-direct {p0}, Lcom/android/settings/users/AppRestrictionsFragment$EditUserPhotoController;->takePhoto()V

    return-void
.end method

.method private appendCropExtras(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x1

    .line 1271
    const-string v0, "crop"

    const-string v1, "true"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1272
    const-string v0, "scale"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1273
    const-string v0, "scaleUpIfNeeded"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1274
    const-string v0, "aspectX"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1275
    const-string v0, "aspectY"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1276
    const-string v0, "outputX"

    iget v1, p0, Lcom/android/settings/users/AppRestrictionsFragment$EditUserPhotoController;->mPhotoSize:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1277
    const-string v0, "outputY"

    iget v1, p0, Lcom/android/settings/users/AppRestrictionsFragment$EditUserPhotoController;->mPhotoSize:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1278
    return-void
.end method

.method private canChoosePhoto()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1242
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1243
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "image/*"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1244
    iget-object v2, p0, Lcom/android/settings/users/AppRestrictionsFragment$EditUserPhotoController;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private canTakePhoto()Z
    .locals 3

    .prologue
    .line 1236
    iget-object v0, p0, Lcom/android/settings/users/AppRestrictionsFragment$EditUserPhotoController;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x10000

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private choosePhoto()V
    .locals 3

    .prologue
    .line 1255
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1256
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1257
    const-string v1, "output"

    iget-object v2, p0, Lcom/android/settings/users/AppRestrictionsFragment$EditUserPhotoController;->mCropPictureUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1258
    invoke-direct {p0, v0}, Lcom/android/settings/users/AppRestrictionsFragment$EditUserPhotoController;->appendCropExtras(Landroid/content/Intent;)V

    .line 1259
    iget-object v1, p0, Lcom/android/settings/users/AppRestrictionsFragment$EditUserPhotoController;->mFragment:Landroid/app/Fragment;

    const v2, 0x7fffffff

    invoke-virtual {v1, v0, v2}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1260
    return-void
.end method

.method private static createTempImageUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 1293
    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v1

    .line 1294
    .local v1, "folder":Ljava/io/File;
    const/4 v0, 0x1

    .line 1295
    .local v0, "_rst":Z
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v0

    .line 1296
    if-nez v0, :cond_0

    # getter for: Lcom/android/settings/users/AppRestrictionsFragment;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/users/AppRestrictionsFragment;->access$2600()Ljava/lang/String;

    move-result-object v3

    const-string v4, "folder.mkdirs() failed."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1297
    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1298
    .local v2, "fullPath":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v0

    .line 1299
    if-nez v0, :cond_1

    # getter for: Lcom/android/settings/users/AppRestrictionsFragment;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/users/AppRestrictionsFragment;->access$2600()Ljava/lang/String;

    move-result-object v3

    const-string v4, "fullPath.delete() failed."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1300
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    return-object v3
.end method

.method private cropPhoto()V
    .locals 3

    .prologue
    .line 1263
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.camera.action.CROP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1264
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/settings/users/AppRestrictionsFragment$EditUserPhotoController;->mTakePictureUri:Landroid/net/Uri;

    const-string v2, "image/*"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1265
    const-string v1, "output"

    iget-object v2, p0, Lcom/android/settings/users/AppRestrictionsFragment$EditUserPhotoController;->mCropPictureUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1266
    invoke-direct {p0, v0}, Lcom/android/settings/users/AppRestrictionsFragment$EditUserPhotoController;->appendCropExtras(Landroid/content/Intent;)V

    .line 1267
    iget-object v1, p0, Lcom/android/settings/users/AppRestrictionsFragment$EditUserPhotoController;->mFragment:Landroid/app/Fragment;

    const v2, 0x7ffffffd

    invoke-virtual {v1, v0, v2}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1268
    return-void
.end method

.method private static getPhotoSize(Landroid/content/Context;)I
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 1281
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$DisplayPhoto;->CONTENT_MAX_DIMENSIONS_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "display_max_dim"

    aput-object v4, v2, v5

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1285
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1286
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 1288
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    return v0

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private showUpdatePhotoPopup()V
    .locals 13

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    .line 1177
    invoke-direct {p0}, Lcom/android/settings/users/AppRestrictionsFragment$EditUserPhotoController;->canTakePhoto()Z

    move-result v2

    .line 1178
    .local v2, "canTakePhoto":Z
    invoke-direct {p0}, Lcom/android/settings/users/AppRestrictionsFragment$EditUserPhotoController;->canChoosePhoto()Z

    move-result v1

    .line 1180
    .local v1, "canChoosePhoto":Z
    if-nez v2, :cond_0

    if-nez v1, :cond_0

    .line 1233
    :goto_0
    return-void

    .line 1184
    :cond_0
    iget-object v9, p0, Lcom/android/settings/users/AppRestrictionsFragment$EditUserPhotoController;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 1185
    .local v3, "context":Landroid/content/Context;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1187
    .local v5, "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/users/AppRestrictionsFragment$EditUserPhotoController$AdapterItem;>;"
    invoke-direct {p0}, Lcom/android/settings/users/AppRestrictionsFragment$EditUserPhotoController;->canTakePhoto()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1188
    iget-object v9, p0, Lcom/android/settings/users/AppRestrictionsFragment$EditUserPhotoController;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f070818

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1189
    .local v7, "title":Ljava/lang/String;
    new-instance v4, Lcom/android/settings/users/AppRestrictionsFragment$EditUserPhotoController$AdapterItem;

    invoke-direct {v4, v7, v12}, Lcom/android/settings/users/AppRestrictionsFragment$EditUserPhotoController$AdapterItem;-><init>(Ljava/lang/String;I)V

    .line 1190
    .local v4, "item":Lcom/android/settings/users/AppRestrictionsFragment$EditUserPhotoController$AdapterItem;
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1193
    .end local v4    # "item":Lcom/android/settings/users/AppRestrictionsFragment$EditUserPhotoController$AdapterItem;
    .end local v7    # "title":Ljava/lang/String;
    :cond_1
    if-eqz v1, :cond_2

    .line 1194
    const v9, 0x7f070819

    invoke-virtual {v3, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1195
    .restart local v7    # "title":Ljava/lang/String;
    new-instance v4, Lcom/android/settings/users/AppRestrictionsFragment$EditUserPhotoController$AdapterItem;

    invoke-direct {v4, v7, v11}, Lcom/android/settings/users/AppRestrictionsFragment$EditUserPhotoController$AdapterItem;-><init>(Ljava/lang/String;I)V

    .line 1196
    .restart local v4    # "item":Lcom/android/settings/users/AppRestrictionsFragment$EditUserPhotoController$AdapterItem;
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1199
    .end local v4    # "item":Lcom/android/settings/users/AppRestrictionsFragment$EditUserPhotoController$AdapterItem;
    .end local v7    # "title":Ljava/lang/String;
    :cond_2
    new-instance v6, Landroid/widget/ListPopupWindow;

    invoke-direct {v6, v3}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;)V

    .line 1201
    .local v6, "listPopupWindow":Landroid/widget/ListPopupWindow;
    iget-object v9, p0, Lcom/android/settings/users/AppRestrictionsFragment$EditUserPhotoController;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v6, v9}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 1202
    invoke-virtual {v6, v11}, Landroid/widget/ListPopupWindow;->setModal(Z)V

    .line 1203
    invoke-virtual {v6, v12}, Landroid/widget/ListPopupWindow;->setInputMethodMode(I)V

    .line 1205
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v9, 0x7f040037

    invoke-direct {v0, v3, v9, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 1207
    .local v0, "adapter":Landroid/widget/ListAdapter;
    invoke-virtual {v6, v0}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1209
    iget-object v9, p0, Lcom/android/settings/users/AppRestrictionsFragment$EditUserPhotoController;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getWidth()I

    move-result v9

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0d0025

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 1211
    .local v8, "width":I
    invoke-virtual {v6, v8}, Landroid/widget/ListPopupWindow;->setWidth(I)V

    .line 1213
    new-instance v9, Lcom/android/settings/users/AppRestrictionsFragment$EditUserPhotoController$3;

    invoke-direct {v9, p0, v5, v6}, Lcom/android/settings/users/AppRestrictionsFragment$EditUserPhotoController$3;-><init>(Lcom/android/settings/users/AppRestrictionsFragment$EditUserPhotoController;Ljava/util/List;Landroid/widget/ListPopupWindow;)V

    invoke-virtual {v6, v9}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1232
    invoke-virtual {v6}, Landroid/widget/ListPopupWindow;->show()V

    goto :goto_0
.end method

.method private takePhoto()V
    .locals 3

    .prologue
    .line 1249
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1250
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "output"

    iget-object v2, p0, Lcom/android/settings/users/AppRestrictionsFragment$EditUserPhotoController;->mTakePictureUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1251
    iget-object v1, p0, Lcom/android/settings/users/AppRestrictionsFragment$EditUserPhotoController;->mFragment:Landroid/app/Fragment;

    const v2, 0x7ffffffe

    invoke-virtual {v1, v0, v2}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1252
    return-void
.end method


# virtual methods
.method public getNewUserPhotoBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 1169
    iget-object v0, p0, Lcom/android/settings/users/AppRestrictionsFragment$EditUserPhotoController;->mNewUserPhotoBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getNewUserPhotoDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 1173
    iget-object v0, p0, Lcom/android/settings/users/AppRestrictionsFragment$EditUserPhotoController;->mNewUserPhotoDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v0, 0x0

    .line 1133
    const/4 v1, -0x1

    if-eq p2, v1, :cond_0

    .line 1165
    :goto_0
    return v0

    .line 1136
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 1139
    :pswitch_0
    new-instance v1, Lcom/android/settings/users/AppRestrictionsFragment$EditUserPhotoController$2;

    invoke-direct {v1, p0}, Lcom/android/settings/users/AppRestrictionsFragment$EditUserPhotoController$2;-><init>(Lcom/android/settings/users/AppRestrictionsFragment$EditUserPhotoController;)V

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Void;

    invoke-virtual {v1, v2, v0}, Lcom/android/settings/users/AppRestrictionsFragment$EditUserPhotoController$2;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1158
    const/4 v0, 0x1

    goto :goto_0

    .line 1160
    :pswitch_1
    invoke-direct {p0}, Lcom/android/settings/users/AppRestrictionsFragment$EditUserPhotoController;->cropPhoto()V

    goto :goto_0

    .line 1136
    :pswitch_data_0
    .packed-switch 0x7ffffffd
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
