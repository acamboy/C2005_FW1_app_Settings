.class public Lcom/android/settings/MultiSimRingtoneEntry;
.super Landroid/app/Activity;
.source "MultiSimRingtoneEntry.java"


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mIsFirstSub:Z

.field private mRequestCode:I

.field private mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/MultiSimRingtoneEntry;->mAlertDialog:Landroid/app/AlertDialog;

    .line 254
    const/16 v0, 0x3ea

    iput v0, p0, Lcom/android/settings/MultiSimRingtoneEntry;->mRequestCode:I

    .line 255
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/MultiSimRingtoneEntry;->mIsFirstSub:Z

    return-void
.end method

.method private NotifyDefaultRingtoneChanged(Landroid/net/Uri;)V
    .locals 11
    .param p1, "ringtoneUri"    # Landroid/net/Uri;

    .prologue
    .line 216
    const/4 v10, 0x0

    .line 217
    .local v10, "summary":Ljava/lang/CharSequence;
    const/4 v8, 0x0

    .line 218
    .local v8, "ringtoneName":Ljava/lang/CharSequence;
    const/4 v7, 0x0

    .line 220
    .local v7, "propName":Ljava/lang/String;
    if-eqz p1, :cond_2

    .line 223
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/MultiSimRingtoneEntry;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "title"

    aput-object v3, v2, v1

    const/4 v1, 0x1

    const-string v3, "_display_name"

    aput-object v3, v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 225
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 226
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 228
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 230
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_1
    :goto_0
    const-string v0, "MultiSimRingtoneEntry"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[FXN.ASD]NotifyDefaultRingtoneChanged summary="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,ringtoneName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    iget-boolean v0, p0, Lcom/android/settings/MultiSimRingtoneEntry;->mIsFirstSub:Z

    if-eqz v0, :cond_3

    .line 240
    const-string v7, "persist.sys.ringtone"

    .line 245
    :goto_1
    if-eqz v7, :cond_2

    if-eqz v8, :cond_2

    .line 246
    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    const-string v0, "MultiSimRingtoneEntry"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[FXN.ASD]Set Prop ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    :cond_2
    return-void

    .line 232
    :catch_0
    move-exception v9

    .line 234
    .local v9, "sqle":Landroid/database/sqlite/SQLiteException;
    const-string v0, "MultiSimRingtoneEntry"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[FXN.ASD]NotifyDefaultRingtoneChanged SQLiteException"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 242
    .end local v9    # "sqle":Landroid/database/sqlite/SQLiteException;
    :cond_3
    const-string v7, "persist.sys.ringtone_sub"

    goto :goto_1
.end method

.method static synthetic access$002(Lcom/android/settings/MultiSimRingtoneEntry;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/MultiSimRingtoneEntry;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/settings/MultiSimRingtoneEntry;->mAlertDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$102(Lcom/android/settings/MultiSimRingtoneEntry;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/MultiSimRingtoneEntry;
    .param p1, "x1"    # Z

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/android/settings/MultiSimRingtoneEntry;->mIsFirstSub:Z

    return p1
.end method

.method private getRingtone()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 172
    iget-boolean v0, p0, Lcom/android/settings/MultiSimRingtoneEntry;->mIsFirstSub:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {p0, v0}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private getRingtoneType()I
    .locals 1

    .prologue
    .line 177
    iget-boolean v0, p0, Lcom/android/settings/MultiSimRingtoneEntry;->mIsFirstSub:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private saveRingtone(Landroid/net/Uri;)V
    .locals 1
    .param p1, "ringtoneUri"    # Landroid/net/Uri;

    .prologue
    .line 189
    iget-boolean v0, p0, Lcom/android/settings/MultiSimRingtoneEntry;->mIsFirstSub:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {p0, v0, p1}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 192
    return-void

    .line 189
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 196
    iget v1, p0, Lcom/android/settings/MultiSimRingtoneEntry;->mRequestCode:I

    if-ne p1, v1, :cond_1

    .line 197
    if-eqz p3, :cond_0

    .line 198
    const-string v1, "android.intent.extra.ringtone.PICKED_URI"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 199
    .local v0, "uri":Landroid/net/Uri;
    if-eqz v0, :cond_0

    .line 200
    invoke-direct {p0, v0}, Lcom/android/settings/MultiSimRingtoneEntry;->saveRingtone(Landroid/net/Uri;)V

    .line 203
    const-string v1, "persist.sys.mp.recovered"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 204
    invoke-direct {p0, v0}, Lcom/android/settings/MultiSimRingtoneEntry;->NotifyDefaultRingtoneChanged(Landroid/net/Uri;)V

    .line 209
    .end local v0    # "uri":Landroid/net/Uri;
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/MultiSimRingtoneEntry;->finish()V

    .line 211
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 68
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 69
    invoke-virtual {p0}, Lcom/android/settings/MultiSimRingtoneEntry;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MultiSimRingtoneEntry;->mResources:Landroid/content/res/Resources;

    .line 70
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 138
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 139
    iget-object v0, p0, Lcom/android/settings/MultiSimRingtoneEntry;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/android/settings/MultiSimRingtoneEntry;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 141
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/MultiSimRingtoneEntry;->mAlertDialog:Landroid/app/AlertDialog;

    .line 143
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 6

    .prologue
    .line 79
    const/4 v3, 0x3

    new-array v2, v3, [Ljava/lang/CharSequence;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/settings/MultiSimRingtoneEntry;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f0700b0

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/settings/MultiSimRingtoneEntry;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f0700b2

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/android/settings/MultiSimRingtoneEntry;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f0701a8

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v2, v3

    .line 85
    .local v2, "entries":[Ljava/lang/CharSequence;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 86
    .local v0, "alertDialog":Landroid/app/AlertDialog$Builder;
    const v3, 0x7f070358

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 88
    new-instance v1, Lcom/android/settings/MultiSimRingtoneEntry$1;

    const v3, 0x1090011

    invoke-direct {v1, p0, p0, v3, v2}, Lcom/android/settings/MultiSimRingtoneEntry$1;-><init>(Lcom/android/settings/MultiSimRingtoneEntry;Landroid/content/Context;I[Ljava/lang/CharSequence;)V

    .line 109
    .local v1, "arrayAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    new-instance v3, Lcom/android/settings/MultiSimRingtoneEntry$3;

    invoke-direct {v3, p0}, Lcom/android/settings/MultiSimRingtoneEntry$3;-><init>(Lcom/android/settings/MultiSimRingtoneEntry;)V

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/settings/MultiSimRingtoneEntry$2;

    invoke-direct {v4, p0}, Lcom/android/settings/MultiSimRingtoneEntry$2;-><init>(Lcom/android/settings/MultiSimRingtoneEntry;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 132
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/MultiSimRingtoneEntry;->mAlertDialog:Landroid/app/AlertDialog;

    .line 134
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 135
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/settings/MultiSimRingtoneEntry;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/android/settings/MultiSimRingtoneEntry;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 149
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/MultiSimRingtoneEntry;->mAlertDialog:Landroid/app/AlertDialog;

    .line 151
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/MultiSimRingtoneEntry;->finish()V

    .line 152
    const/4 v0, 0x1

    return v0
.end method

.method protected prepareRingtonePickerIntent()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 160
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.RINGTONE_PICKER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 161
    .local v0, "ringtonePickerIntent":Landroid/content/Intent;
    const-string v1, "android.intent.extra.ringtone.EXISTING_URI"

    invoke-direct {p0}, Lcom/android/settings/MultiSimRingtoneEntry;->getRingtone()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 162
    const-string v1, "android.intent.extra.ringtone.SHOW_DEFAULT"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 163
    const-string v1, "android.intent.extra.ringtone.DEFAULT_URI"

    invoke-direct {p0}, Lcom/android/settings/MultiSimRingtoneEntry;->getRingtoneType()I

    move-result v2

    invoke-static {v2}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 165
    const-string v1, "android.intent.extra.ringtone.SHOW_SILENT"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 166
    const-string v1, "android.intent.extra.ringtone.TYPE"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 168
    iget v1, p0, Lcom/android/settings/MultiSimRingtoneEntry;->mRequestCode:I

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/MultiSimRingtoneEntry;->startActivityForResult(Landroid/content/Intent;I)V

    .line 169
    return-void
.end method
