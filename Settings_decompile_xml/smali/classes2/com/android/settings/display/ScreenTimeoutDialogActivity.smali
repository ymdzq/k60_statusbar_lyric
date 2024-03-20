.class public Lcom/android/settings/display/ScreenTimeoutDialogActivity;
.super Landroid/app/Activity;
.source "ScreenTimeoutDialogActivity.java"


# instance fields
.field private mCurrentTimeOut:J

.field private mEntries:[Ljava/lang/CharSequence;

.field private mEntryValues:[Ljava/lang/CharSequence;


# direct methods
.method static bridge synthetic -$$Nest$fgetmEntryValues(Lcom/android/settings/display/ScreenTimeoutDialogActivity;)[Ljava/lang/CharSequence;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/display/ScreenTimeoutDialogActivity;->mEntryValues:[Ljava/lang/CharSequence;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private createTimeOutDialog()V
    .locals 4

    .line 84
    iget-wide v0, p0, Lcom/android/settings/display/ScreenTimeoutDialogActivity;->mCurrentTimeOut:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/display/ScreenTimeoutDialogActivity;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 85
    new-instance v1, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 86
    sget v2, Lcom/android/settings/R$string;->screen_timeout:I

    invoke-virtual {v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 87
    iget-object v2, p0, Lcom/android/settings/display/ScreenTimeoutDialogActivity;->mEntries:[Ljava/lang/CharSequence;

    new-instance v3, Lcom/android/settings/display/ScreenTimeoutDialogActivity$1;

    invoke-direct {v3, p0}, Lcom/android/settings/display/ScreenTimeoutDialogActivity$1;-><init>(Lcom/android/settings/display/ScreenTimeoutDialogActivity;)V

    invoke-virtual {v1, v2, v0, v3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 102
    new-instance v0, Lcom/android/settings/display/ScreenTimeoutDialogActivity$2;

    invoke-direct {v0, p0}, Lcom/android/settings/display/ScreenTimeoutDialogActivity$2;-><init>(Lcom/android/settings/display/ScreenTimeoutDialogActivity;)V

    const/high16 v2, 0x1040000    # @android:string/cancel

    invoke-virtual {v1, v2, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 109
    new-instance v0, Lcom/android/settings/display/ScreenTimeoutDialogActivity$3;

    invoke-direct {v0, p0}, Lcom/android/settings/display/ScreenTimeoutDialogActivity$3;-><init>(Lcom/android/settings/display/ScreenTimeoutDialogActivity;)V

    invoke-virtual {v1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 117
    invoke-virtual {v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method

.method private disableUnusableTimeouts()V
    .locals 9

    const-string v0, "device_policy"

    .line 57
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v3, 0x0

    .line 59
    invoke-virtual {v0, v3}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v3

    goto :goto_0

    :cond_0
    move-wide v3, v1

    :goto_0
    cmp-long v0, v3, v1

    if-nez v0, :cond_1

    return-void

    .line 63
    :cond_1
    iget-object v0, p0, Lcom/android/settings/display/ScreenTimeoutDialogActivity;->mEntries:[Ljava/lang/CharSequence;

    .line 64
    iget-object v1, p0, Lcom/android/settings/display/ScreenTimeoutDialogActivity;->mEntryValues:[Ljava/lang/CharSequence;

    .line 65
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 66
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    .line 67
    :goto_1
    array-length v7, v1

    if-ge v6, v7, :cond_3

    .line 68
    aget-object v7, v1, v6

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    cmp-long v7, v7, v3

    if-gtz v7, :cond_2

    .line 70
    aget-object v7, v0, v6

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    aget-object v7, v1, v6

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 74
    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    array-length v0, v0

    if-ne v6, v0, :cond_4

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    array-length v1, v1

    if-eq v0, v1, :cond_5

    .line 75
    :cond_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/android/settings/display/ScreenTimeoutDialogActivity;->mEntries:[Ljava/lang/CharSequence;

    .line 76
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/CharSequence;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/android/settings/display/ScreenTimeoutDialogActivity;->mEntryValues:[Ljava/lang/CharSequence;

    .line 77
    iget-wide v0, p0, Lcom/android/settings/display/ScreenTimeoutDialogActivity;->mCurrentTimeOut:J

    cmp-long v0, v0, v3

    if-lez v0, :cond_5

    .line 78
    iput-wide v3, p0, Lcom/android/settings/display/ScreenTimeoutDialogActivity;->mCurrentTimeOut:J

    :cond_5
    return-void
.end method

.method private getEntries()[Ljava/lang/CharSequence;
    .locals 11

    .line 39
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$plurals;->string_int_second:I

    const/16 v2, 0xf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 40
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/16 v2, 0x1e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 41
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$plurals;->string_int_minute:I

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 42
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 43
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 44
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 45
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->string_never:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 46
    filled-new-array/range {v4 .. v10}, [Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public findIndexOfValue(Ljava/lang/String;)I
    .locals 2

    if-eqz p1, :cond_1

    .line 122
    iget-object v0, p0, Lcom/android/settings/display/ScreenTimeoutDialogActivity;->mEntryValues:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 123
    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 124
    iget-object v1, p0, Lcom/android/settings/display/ScreenTimeoutDialogActivity;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 29
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    invoke-direct {p0}, Lcom/android/settings/display/ScreenTimeoutDialogActivity;->getEntries()[Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/display/ScreenTimeoutDialogActivity;->mEntries:[Ljava/lang/CharSequence;

    .line 31
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$array;->screen_timeout_values:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/display/ScreenTimeoutDialogActivity;->mEntryValues:[Ljava/lang/CharSequence;

    .line 32
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v0, "screen_off_timeout"

    const-wide/16 v1, 0x7530

    invoke-static {p1, v0, v1, v2}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/display/ScreenTimeoutDialogActivity;->mCurrentTimeOut:J

    .line 34
    invoke-direct {p0}, Lcom/android/settings/display/ScreenTimeoutDialogActivity;->disableUnusableTimeouts()V

    .line 35
    invoke-direct {p0}, Lcom/android/settings/display/ScreenTimeoutDialogActivity;->createTimeOutDialog()V

    return-void
.end method

.method protected onStart()V
    .locals 1

    .line 52
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    const/4 v0, 0x1

    .line 53
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setVisible(Z)V

    return-void
.end method
