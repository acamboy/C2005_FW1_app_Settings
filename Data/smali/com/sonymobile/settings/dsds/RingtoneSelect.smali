.class public Lcom/sonymobile/settings/dsds/RingtoneSelect;
.super Landroid/preference/PreferenceActivity;
.source "RingtoneSelect.java"


# static fields
.field private static sSimLabels:[Ljava/lang/String;


# instance fields
.field private mCancel:Landroid/preference/Preference;

.field private mHandler:Landroid/os/Handler;

.field private mRingtoneLookupRunnable:Ljava/lang/Runnable;

.field private mSim1Ringtone:Landroid/preference/Preference;

.field private mSim2Ringtone:Landroid/preference/Preference;

.field private mSubscription:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    sput-object v0, Lcom/sonymobile/settings/dsds/RingtoneSelect;->sSimLabels:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 47
    new-instance v0, Lcom/sonymobile/settings/dsds/RingtoneSelect$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/settings/dsds/RingtoneSelect$1;-><init>(Lcom/sonymobile/settings/dsds/RingtoneSelect;)V

    iput-object v0, p0, Lcom/sonymobile/settings/dsds/RingtoneSelect;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/settings/dsds/RingtoneSelect;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/settings/dsds/RingtoneSelect;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/sonymobile/settings/dsds/RingtoneSelect;->mSim1Ringtone:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonymobile/settings/dsds/RingtoneSelect;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/settings/dsds/RingtoneSelect;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/sonymobile/settings/dsds/RingtoneSelect;->mSim2Ringtone:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonymobile/settings/dsds/RingtoneSelect;ILandroid/preference/Preference;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/settings/dsds/RingtoneSelect;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/preference/Preference;
    .param p3, "x3"    # I

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/sonymobile/settings/dsds/RingtoneSelect;->updateRingtoneName(ILandroid/preference/Preference;I)V

    return-void
.end method

.method private getNameWithLabel(ILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "sub"    # I
    .param p2, "rawName"    # Ljava/lang/String;

    .prologue
    .line 111
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sonymobile/settings/dsds/RingtoneSelect;->sSimLabels:[Ljava/lang/String;

    aget-object v0, v0, p1

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sonymobile/settings/dsds/RingtoneSelect;->sSimLabels:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getRingtone()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 177
    const/4 v0, 0x1

    iget v1, p0, Lcom/sonymobile/settings/dsds/RingtoneSelect;->mSubscription:I

    invoke-static {p0, v0, v1}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;II)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private lookupRingtoneNames()V
    .locals 2

    .prologue
    .line 116
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/sonymobile/settings/dsds/RingtoneSelect;->mRingtoneLookupRunnable:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 117
    return-void
.end method

.method private setTransparent()V
    .locals 3

    .prologue
    .line 202
    invoke-virtual {p0}, Lcom/sonymobile/settings/dsds/RingtoneSelect;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 203
    .local v0, "window":Landroid/view/Window;
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 204
    .local v1, "wl":Landroid/view/WindowManager$LayoutParams;
    const/4 v2, 0x0

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 205
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 206
    return-void
.end method

.method private updateRingtoneName(ILandroid/preference/Preference;I)V
    .locals 8
    .param p1, "type"    # I
    .param p2, "preference"    # Landroid/preference/Preference;
    .param p3, "msg"    # I

    .prologue
    .line 133
    if-nez p2, :cond_0

    .line 158
    :goto_0
    return-void

    .line 134
    :cond_0
    invoke-static {p0, p1, p3}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;II)Landroid/net/Uri;

    move-result-object v1

    .line 135
    .local v1, "ringtoneUri":Landroid/net/Uri;
    const v0, 0x104044a

    invoke-virtual {p0, v0}, Lcom/sonymobile/settings/dsds/RingtoneSelect;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 137
    .local v7, "summary":Ljava/lang/CharSequence;
    if-nez v1, :cond_2

    .line 138
    const v0, 0x1040448

    invoke-virtual {p0, v0}, Lcom/sonymobile/settings/dsds/RingtoneSelect;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 157
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/sonymobile/settings/dsds/RingtoneSelect;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/sonymobile/settings/dsds/RingtoneSelect;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, p3, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 141
    :cond_2
    const/4 v6, 0x0

    .line 143
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/sonymobile/settings/dsds/RingtoneSelect;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "title"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 145
    if-eqz v6, :cond_4

    .line 146
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 147
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 149
    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    :cond_4
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 151
    :catch_0
    move-exception v0

    .line 154
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_5

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 183
    const/16 v1, 0x3e9

    if-ne p1, v1, :cond_1

    .line 184
    if-eqz p3, :cond_0

    .line 185
    const-string v1, "android.intent.extra.ringtone.PICKED_URI"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 186
    .local v0, "uri":Landroid/net/Uri;
    if-eqz v0, :cond_0

    .line 187
    const/4 v1, 0x1

    iget v2, p0, Lcom/sonymobile/settings/dsds/RingtoneSelect;->mSubscription:I

    invoke-static {p0, v1, v2, v0}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;IILandroid/net/Uri;)V

    .line 191
    .end local v0    # "uri":Landroid/net/Uri;
    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/settings/dsds/RingtoneSelect;->finish()V

    .line 193
    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 62
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    invoke-virtual {p0}, Lcom/sonymobile/settings/dsds/RingtoneSelect;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08005f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/sonymobile/settings/dsds/RingtoneSelect;->sSimLabels:[Ljava/lang/String;

    .line 64
    invoke-virtual {p0}, Lcom/sonymobile/settings/dsds/RingtoneSelect;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 65
    .local v0, "root":Landroid/preference/PreferenceScreen;
    new-instance v1, Landroid/preference/Preference;

    invoke-direct {v1, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sonymobile/settings/dsds/RingtoneSelect;->mSim1Ringtone:Landroid/preference/Preference;

    .line 66
    new-instance v1, Landroid/preference/Preference;

    invoke-direct {v1, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sonymobile/settings/dsds/RingtoneSelect;->mSim2Ringtone:Landroid/preference/Preference;

    .line 67
    new-instance v1, Landroid/preference/Preference;

    invoke-direct {v1, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sonymobile/settings/dsds/RingtoneSelect;->mCancel:Landroid/preference/Preference;

    .line 68
    iget-object v1, p0, Lcom/sonymobile/settings/dsds/RingtoneSelect;->mSim1Ringtone:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 69
    iget-object v1, p0, Lcom/sonymobile/settings/dsds/RingtoneSelect;->mSim2Ringtone:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 70
    iget-object v1, p0, Lcom/sonymobile/settings/dsds/RingtoneSelect;->mCancel:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 71
    invoke-virtual {p0, v0}, Lcom/sonymobile/settings/dsds/RingtoneSelect;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 73
    new-instance v1, Lcom/sonymobile/settings/dsds/RingtoneSelect$2;

    invoke-direct {v1, p0}, Lcom/sonymobile/settings/dsds/RingtoneSelect$2;-><init>(Lcom/sonymobile/settings/dsds/RingtoneSelect;)V

    iput-object v1, p0, Lcom/sonymobile/settings/dsds/RingtoneSelect;->mRingtoneLookupRunnable:Ljava/lang/Runnable;

    .line 83
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/sonymobile/settings/dsds/RingtoneSelect;->mSim1Ringtone:Landroid/preference/Preference;

    if-ne p2, v0, :cond_1

    .line 123
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonymobile/settings/dsds/RingtoneSelect;->mSubscription:I

    .line 127
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/sonymobile/settings/dsds/RingtoneSelect;->setTransparent()V

    .line 128
    invoke-virtual {p0}, Lcom/sonymobile/settings/dsds/RingtoneSelect;->prepareRingtonePickerIntent()V

    .line 129
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    .line 124
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/settings/dsds/RingtoneSelect;->mSim2Ringtone:Landroid/preference/Preference;

    if-ne p2, v0, :cond_0

    .line 125
    const/4 v0, 0x1

    iput v0, p0, Lcom/sonymobile/settings/dsds/RingtoneSelect;->mSubscription:I

    goto :goto_0
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 87
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 88
    invoke-direct {p0}, Lcom/sonymobile/settings/dsds/RingtoneSelect;->lookupRingtoneNames()V

    .line 89
    const v2, 0x7f070358

    invoke-virtual {p0, v2}, Lcom/sonymobile/settings/dsds/RingtoneSelect;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sonymobile/settings/dsds/RingtoneSelect;->setTitle(Ljava/lang/CharSequence;)V

    .line 92
    invoke-virtual {p0}, Lcom/sonymobile/settings/dsds/RingtoneSelect;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "sim1_name"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, "sim1Name":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sonymobile/settings/dsds/RingtoneSelect;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "sim2_name"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 97
    .local v1, "sim2Name":Ljava/lang/String;
    iget-object v2, p0, Lcom/sonymobile/settings/dsds/RingtoneSelect;->mSim1Ringtone:Landroid/preference/Preference;

    const/4 v3, 0x0

    invoke-direct {p0, v3, v0}, Lcom/sonymobile/settings/dsds/RingtoneSelect;->getNameWithLabel(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 98
    iget-object v2, p0, Lcom/sonymobile/settings/dsds/RingtoneSelect;->mSim2Ringtone:Landroid/preference/Preference;

    const/4 v3, 0x1

    invoke-direct {p0, v3, v1}, Lcom/sonymobile/settings/dsds/RingtoneSelect;->getNameWithLabel(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v2, p0, Lcom/sonymobile/settings/dsds/RingtoneSelect;->mCancel:Landroid/preference/Preference;

    const v3, 0x7f040074

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 100
    iget-object v2, p0, Lcom/sonymobile/settings/dsds/RingtoneSelect;->mCancel:Landroid/preference/Preference;

    new-instance v3, Lcom/sonymobile/settings/dsds/RingtoneSelect$3;

    invoke-direct {v3, p0}, Lcom/sonymobile/settings/dsds/RingtoneSelect$3;-><init>(Lcom/sonymobile/settings/dsds/RingtoneSelect;)V

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 108
    return-void
.end method

.method protected prepareRingtonePickerIntent()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 165
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.RINGTONE_PICKER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 166
    .local v0, "ringtonePickerIntent":Landroid/content/Intent;
    const-string v1, "android.intent.extra.ringtone.EXISTING_URI"

    invoke-direct {p0}, Lcom/sonymobile/settings/dsds/RingtoneSelect;->getRingtone()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 167
    const-string v1, "android.intent.extra.ringtone.SHOW_DEFAULT"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 168
    const-string v1, "android.intent.extra.ringtone.DEFAULT_URI"

    invoke-static {v3}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 170
    const-string v1, "android.intent.extra.ringtone.SHOW_SILENT"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 171
    const-string v1, "android.intent.extra.ringtone.TYPE"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 173
    const/16 v1, 0x3e9

    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/settings/dsds/RingtoneSelect;->startActivityForResult(Landroid/content/Intent;I)V

    .line 174
    return-void
.end method
