.class Lcom/android/settings/users/AppRestrictionsFragment$EditUserPhotoController$2;
.super Landroid/os/AsyncTask;
.source "AppRestrictionsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/users/AppRestrictionsFragment$EditUserPhotoController;->onActivityResult(IILandroid/content/Intent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/users/AppRestrictionsFragment$EditUserPhotoController;


# direct methods
.method constructor <init>(Lcom/android/settings/users/AppRestrictionsFragment$EditUserPhotoController;)V
    .locals 0

    .prologue
    .line 1139
    iput-object p1, p0, Lcom/android/settings/users/AppRestrictionsFragment$EditUserPhotoController$2;->this$0:Lcom/android/settings/users/AppRestrictionsFragment$EditUserPhotoController;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 1142
    iget-object v0, p0, Lcom/android/settings/users/AppRestrictionsFragment$EditUserPhotoController$2;->this$0:Lcom/android/settings/users/AppRestrictionsFragment$EditUserPhotoController;

    # getter for: Lcom/android/settings/users/AppRestrictionsFragment$EditUserPhotoController;->mCropPictureUri:Landroid/net/Uri;
    invoke-static {v0}, Lcom/android/settings/users/AppRestrictionsFragment$EditUserPhotoController;->access$2200(Lcom/android/settings/users/AppRestrictionsFragment$EditUserPhotoController;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 1139
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings/users/AppRestrictionsFragment$EditUserPhotoController$2;->doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1146
    iget-object v1, p0, Lcom/android/settings/users/AppRestrictionsFragment$EditUserPhotoController$2;->this$0:Lcom/android/settings/users/AppRestrictionsFragment$EditUserPhotoController;

    # setter for: Lcom/android/settings/users/AppRestrictionsFragment$EditUserPhotoController;->mNewUserPhotoBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1, p1}, Lcom/android/settings/users/AppRestrictionsFragment$EditUserPhotoController;->access$2302(Lcom/android/settings/users/AppRestrictionsFragment$EditUserPhotoController;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 1147
    iget-object v1, p0, Lcom/android/settings/users/AppRestrictionsFragment$EditUserPhotoController$2;->this$0:Lcom/android/settings/users/AppRestrictionsFragment$EditUserPhotoController;

    iget-object v2, p0, Lcom/android/settings/users/AppRestrictionsFragment$EditUserPhotoController$2;->this$0:Lcom/android/settings/users/AppRestrictionsFragment$EditUserPhotoController;

    # getter for: Lcom/android/settings/users/AppRestrictionsFragment$EditUserPhotoController;->mImageView:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/android/settings/users/AppRestrictionsFragment$EditUserPhotoController;->access$2500(Lcom/android/settings/users/AppRestrictionsFragment$EditUserPhotoController;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/users/AppRestrictionsFragment$EditUserPhotoController$2;->this$0:Lcom/android/settings/users/AppRestrictionsFragment$EditUserPhotoController;

    # getter for: Lcom/android/settings/users/AppRestrictionsFragment$EditUserPhotoController;->mNewUserPhotoBitmap:Landroid/graphics/Bitmap;
    invoke-static {v3}, Lcom/android/settings/users/AppRestrictionsFragment$EditUserPhotoController;->access$2300(Lcom/android/settings/users/AppRestrictionsFragment$EditUserPhotoController;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/settings/users/CircleFramedDrawable;->getInstance(Landroid/content/Context;Landroid/graphics/Bitmap;)Lcom/android/settings/users/CircleFramedDrawable;

    move-result-object v2

    # setter for: Lcom/android/settings/users/AppRestrictionsFragment$EditUserPhotoController;->mNewUserPhotoDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v1, v2}, Lcom/android/settings/users/AppRestrictionsFragment$EditUserPhotoController;->access$2402(Lcom/android/settings/users/AppRestrictionsFragment$EditUserPhotoController;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 1149
    iget-object v1, p0, Lcom/android/settings/users/AppRestrictionsFragment$EditUserPhotoController$2;->this$0:Lcom/android/settings/users/AppRestrictionsFragment$EditUserPhotoController;

    # getter for: Lcom/android/settings/users/AppRestrictionsFragment$EditUserPhotoController;->mImageView:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/settings/users/AppRestrictionsFragment$EditUserPhotoController;->access$2500(Lcom/android/settings/users/AppRestrictionsFragment$EditUserPhotoController;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/users/AppRestrictionsFragment$EditUserPhotoController$2;->this$0:Lcom/android/settings/users/AppRestrictionsFragment$EditUserPhotoController;

    # getter for: Lcom/android/settings/users/AppRestrictionsFragment$EditUserPhotoController;->mNewUserPhotoDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v2}, Lcom/android/settings/users/AppRestrictionsFragment$EditUserPhotoController;->access$2400(Lcom/android/settings/users/AppRestrictionsFragment$EditUserPhotoController;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1151
    const/4 v0, 0x1

    .line 1152
    .local v0, "_rst":Z
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/settings/users/AppRestrictionsFragment$EditUserPhotoController$2;->this$0:Lcom/android/settings/users/AppRestrictionsFragment$EditUserPhotoController;

    # getter for: Lcom/android/settings/users/AppRestrictionsFragment$EditUserPhotoController;->mCropPictureUri:Landroid/net/Uri;
    invoke-static {v2}, Lcom/android/settings/users/AppRestrictionsFragment$EditUserPhotoController;->access$2200(Lcom/android/settings/users/AppRestrictionsFragment$EditUserPhotoController;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v0

    .line 1153
    if-nez v0, :cond_0

    # getter for: Lcom/android/settings/users/AppRestrictionsFragment;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/users/AppRestrictionsFragment;->access$2600()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/settings/users/AppRestrictionsFragment$EditUserPhotoController$2;->this$0:Lcom/android/settings/users/AppRestrictionsFragment$EditUserPhotoController;

    # getter for: Lcom/android/settings/users/AppRestrictionsFragment$EditUserPhotoController;->mCropPictureUri:Landroid/net/Uri;
    invoke-static {v3}, Lcom/android/settings/users/AppRestrictionsFragment$EditUserPhotoController;->access$2200(Lcom/android/settings/users/AppRestrictionsFragment$EditUserPhotoController;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".delete() failed."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1154
    :cond_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/settings/users/AppRestrictionsFragment$EditUserPhotoController$2;->this$0:Lcom/android/settings/users/AppRestrictionsFragment$EditUserPhotoController;

    # getter for: Lcom/android/settings/users/AppRestrictionsFragment$EditUserPhotoController;->mTakePictureUri:Landroid/net/Uri;
    invoke-static {v2}, Lcom/android/settings/users/AppRestrictionsFragment$EditUserPhotoController;->access$2700(Lcom/android/settings/users/AppRestrictionsFragment$EditUserPhotoController;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v0

    .line 1155
    if-nez v0, :cond_1

    # getter for: Lcom/android/settings/users/AppRestrictionsFragment;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/users/AppRestrictionsFragment;->access$2600()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/settings/users/AppRestrictionsFragment$EditUserPhotoController$2;->this$0:Lcom/android/settings/users/AppRestrictionsFragment$EditUserPhotoController;

    # getter for: Lcom/android/settings/users/AppRestrictionsFragment$EditUserPhotoController;->mTakePictureUri:Landroid/net/Uri;
    invoke-static {v3}, Lcom/android/settings/users/AppRestrictionsFragment$EditUserPhotoController;->access$2700(Lcom/android/settings/users/AppRestrictionsFragment$EditUserPhotoController;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".delete() failed."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1156
    :cond_1
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1139
    check-cast p1, Landroid/graphics/Bitmap;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings/users/AppRestrictionsFragment$EditUserPhotoController$2;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
