.class public Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment;
.super Lcom/android/settings/KeyguardSettingsPreferenceFragment;
.source "MiuiGxzwAnimSettingsInternalActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MiuiGxzwAnimSettingsFragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment$GxzwAnimSelectAdapter;,
        Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment$GxzwAnimViewHolder;
    }
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mCurrentSelection:I

.field private mFingerEnrollDialog:Lmiuix/appcompat/app/AlertDialog;

.field private mFingerprintHelper:Lcom/android/settings/FingerprintHelper;

.field private mGxzwAnimItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$GxzwAnimItem;",
            ">;"
        }
    .end annotation
.end field

.field private mGxzwAnimSelectAdapter:Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment$GxzwAnimSelectAdapter;

.field private mHapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

.field private mIconGxzwVibrateEnable:Z

.field private mIsNightMode:Z

.field private mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field mOnTouchListener:Landroid/view/View$OnTouchListener;

.field private mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

.field private mType:I

.field private mVideoView:Lcom/android/settings/MutedVideoView;


# direct methods
.method public static synthetic $r8$lambda$7VjjPJgZZ_4yAnul0GQEEIWg7E8(Landroid/media/MediaPlayer;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment;->lambda$onCreateView$0(Landroid/media/MediaPlayer;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmActivity(Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment;)Landroid/app/Activity;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmGxzwAnimItemList(Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment;)Ljava/util/List;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment;->mGxzwAnimItemList:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmGxzwAnimSelectAdapter(Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment;)Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment$GxzwAnimSelectAdapter;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment;->mGxzwAnimSelectAdapter:Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment$GxzwAnimSelectAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIconGxzwVibrateEnable(Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment;->mIconGxzwVibrateEnable:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsNightMode(Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment;->mIsNightMode:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmRecyclerView(Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment;)Lmiuix/recyclerview/widget/RecyclerView;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmType(Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment;->mType:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmVideoView(Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment;)Lcom/android/settings/MutedVideoView;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment;->mVideoView:Lcom/android/settings/MutedVideoView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmCurrentSelection(Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment;->mCurrentSelection:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmType(Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment;->mType:I

    return-void
.end method

.method static bridge synthetic -$$Nest$msaveGxzwAnimType(Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment;->saveGxzwAnimType(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetItemSelected(Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment;->setItemSelected(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetVideoURI(Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment;->setVideoURI(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 85
    invoke-direct {p0}, Lcom/android/settings/KeyguardSettingsPreferenceFragment;-><init>()V

    .line 92
    invoke-static {}, Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$GxzwAnimSettingHelper;->getGxzwAnimItemList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment;->mGxzwAnimItemList:Ljava/util/List;

    const/4 v1, 0x0

    .line 93
    iput-object v1, p0, Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment;->mActivity:Landroid/app/Activity;

    .line 96
    iput-object v1, p0, Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment;->mFingerprintHelper:Lcom/android/settings/FingerprintHelper;

    .line 97
    iput-object v1, p0, Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment;->mFingerEnrollDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 100
    new-instance v1, Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment$GxzwAnimSelectAdapter;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment$GxzwAnimSelectAdapter;-><init>(Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment;Ljava/util/List;)V

    iput-object v1, p0, Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment;->mGxzwAnimSelectAdapter:Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment$GxzwAnimSelectAdapter;

    .line 377
    new-instance v0, Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment$4;

    invoke-direct {v0, p0}, Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment$4;-><init>(Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment;)V

    iput-object v0, p0, Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method private dismissFingerEnrollDialog()V
    .locals 1

    .line 420
    iget-object v0, p0, Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment;->mFingerEnrollDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 421
    iget-object p0, p0, Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment;->mFingerEnrollDialog:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method private formatTime(I)Ljava/lang/String;
    .locals 1

    const/16 p0, 0xa

    if-lt p1, p0, :cond_0

    .line 305
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    if-lez p1, :cond_1

    .line 307
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "0"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const-string p0, "00"

    :goto_0
    return-object p0
.end method

.method private getGxzwAnimType()I
    .locals 4

    .line 288
    invoke-static {}, Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$GxzwAnimSettingHelper;->getDefaultAnimType()I

    move-result v0

    .line 289
    invoke-static {}, Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$GxzwAnimSettingHelper;->getLegalAnimTypeSet()Ljava/util/Set;

    move-result-object v1

    .line 290
    iget-object p0, p0, Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v2, "fod_animation_type"

    const/4 v3, 0x0

    invoke-static {p0, v2, v0, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    .line 292
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, p0

    :goto_0
    return v0
.end method

.method private isFodVibrateSwitchEnable()Z
    .locals 3

    .line 347
    iget-object p0, p0, Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "gxzw_icon_vibrate_enable"

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1
.end method

.method private isNightMode()Z
    .locals 1

    .line 342
    iget-object p0, p0, Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p0, p0, 0x30

    const/16 v0, 0x20

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$onCreateView$0(Landroid/media/MediaPlayer;)V
    .locals 1

    const/4 v0, 0x1

    .line 273
    invoke-virtual {p0, v0}, Landroid/media/MediaPlayer;->setLooping(Z)V

    return-void
.end method

.method private saveGxzwAnimType(I)V
    .locals 2

    .line 284
    iget-object p0, p0, Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "fod_animation_type"

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method private setItemSelected(I)V
    .locals 1

    if-ltz p1, :cond_1

    .line 497
    iget-object v0, p0, Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment;->mGxzwAnimSelectAdapter:Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment$GxzwAnimSelectAdapter;

    invoke-virtual {v0}, Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment$GxzwAnimSelectAdapter;->getItemCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 500
    :cond_0
    iget v0, p0, Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment;->mCurrentSelection:I

    if-eq p1, v0, :cond_1

    .line 502
    iput p1, p0, Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment;->mCurrentSelection:I

    .line 503
    iget-object p0, p0, Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment;->mGxzwAnimSelectAdapter:Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment$GxzwAnimSelectAdapter;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setVideoURI(Ljava/lang/String;)V
    .locals 3

    .line 299
    iget-object v0, p0, Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment;->mVideoView:Lcom/android/settings/MutedVideoView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android.resource://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/raw/"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/settings/MutedVideoView;->setVideoURI(Landroid/net/Uri;)V

    return-void
.end method

.method private showGxzwAnimDialog()V
    .locals 3

    .line 159
    iget-object v0, p0, Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/android/settings/MiuiKeyguardSettingsUtils;->isMultiWindowNotFreeformMode(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 163
    :cond_0
    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment;->mActivity:Landroid/app/Activity;

    sget v2, Lcom/android/settings/R$style;->AlertDialog_Theme_DayNight:I

    invoke-direct {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const/4 v1, 0x0

    .line 164
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 165
    sget v1, Lcom/android/settings/R$string;->gxzw_anim_dialog_title:I

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 166
    sget v1, Lcom/android/settings/R$string;->gxzw_anim_dialog_message:I

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 167
    sget v1, Lcom/android/settings/R$string;->gxzw_anim_dialog_cancel_enroll:I

    new-instance v2, Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment$1;

    invoke-direct {v2, p0}, Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment$1;-><init>(Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment;)V

    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 174
    sget v1, Lcom/android/settings/R$string;->gxzw_anim_dialog_enroll:I

    new-instance v2, Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment$2;

    invoke-direct {v2, p0}, Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment$2;-><init>(Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment;)V

    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 183
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment;->mFingerEnrollDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 184
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_1
    :goto_0
    return-void
.end method

.method private showMiShowToast()V
    .locals 2

    .line 152
    iget-object p0, p0, Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment;->mActivity:Landroid/app/Activity;

    if-nez p0, :cond_0

    return-void

    .line 155
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->mishow_disable_password_setting:I

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/settingslib/util/ToastUtil;->show(Landroid/content/Context;II)V

    return-void
.end method


# virtual methods
.method public extHapticFeedback(I)V
    .locals 2

    .line 334
    sget-boolean v0, Lcom/android/settings/utils/FingerprintUtils;->IS_SUPPORT_NEW_HAPTIC_VERSION:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment;->mHapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    const/16 v1, 0xd2

    invoke-virtual {v0, v1}, Lmiui/util/HapticFeedbackUtil;->isSupportExtHapticFeedback(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 335
    iget-object p0, p0, Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment;->mHapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    invoke-virtual {p0, v1}, Lmiui/util/HapticFeedbackUtil;->performExtHapticFeedback(I)Z

    goto :goto_0

    .line 336
    :cond_0
    sget-boolean v0, Lcom/android/settings/utils/FingerprintUtils;->IS_SUPPORT_LINEAR_MOTOR_VIBRATE:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment;->mHapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    invoke-virtual {v0, p1}, Lmiui/util/HapticFeedbackUtil;->isSupportExtHapticFeedback(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 337
    iget-object p0, p0, Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment;->mHapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    invoke-virtual {p0, p1}, Lmiui/util/HapticFeedbackUtil;->performExtHapticFeedback(I)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 280
    const-class p0, Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 196
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/KeyguardSettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    .line 109
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 110
    iget-object v0, p0, Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 111
    iput-object p1, p0, Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment;->mActivity:Landroid/app/Activity;

    :cond_0
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .line 117
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onAttach(Landroid/content/Context;)V

    .line 118
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 119
    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment;->mActivity:Landroid/app/Activity;

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 125
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 126
    sget p1, Lcom/android/settings/R$style;->Theme_DayNight_Settings:I

    invoke-virtual {p0, p1}, Lcom/android/settingslib/miuisettings/preference/PreferenceFragment;->setThemeRes(I)V

    .line 128
    iget-object p1, p0, Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment;->mActivity:Landroid/app/Activity;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 129
    iget-object p1, p0, Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 130
    iget-object p1, p0, Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v0, 0x4000000

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 131
    iget-object p1, p0, Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x80

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 132
    new-instance p1, Lcom/android/settings/FingerprintHelper;

    iget-object v0, p0, Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {p1, v0}, Lcom/android/settings/FingerprintHelper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment;->mFingerprintHelper:Lcom/android/settings/FingerprintHelper;

    .line 133
    invoke-virtual {p1}, Lcom/android/settings/FingerprintHelper;->getFingerprintIds()Ljava/util/List;

    move-result-object p1

    .line 134
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_1

    .line 135
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/MiuiSecuritySettings;->isMiShowMode(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 136
    invoke-direct {p0}, Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment;->showMiShowToast()V

    goto :goto_0

    .line 138
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment;->showGxzwAnimDialog()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    .line 227
    sget p3, Lcom/android/settings/R$layout;->gxzw_anim:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 229
    sget p2, Lcom/android/settings/R$id;->gxzw_anim_preview:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/settings/MutedVideoView;

    iput-object p2, p0, Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment;->mVideoView:Lcom/android/settings/MutedVideoView;

    .line 230
    new-instance p2, Lmiui/util/HapticFeedbackUtil;

    iget-object p3, p0, Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3, v0}, Lmiui/util/HapticFeedbackUtil;-><init>(Landroid/content/Context;Z)V

    iput-object p2, p0, Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment;->mHapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    .line 231
    invoke-direct {p0}, Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment;->getGxzwAnimType()I

    move-result p2

    iput p2, p0, Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment;->mType:I

    .line 232
    invoke-direct {p0}, Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment;->isFodVibrateSwitchEnable()Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment;->mIconGxzwVibrateEnable:Z

    .line 233
    invoke-direct {p0}, Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment;->isNightMode()Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment;->mIsNightMode:Z

    .line 235
    iget-object p2, p0, Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p2

    const-string p3, "fonts/Mitype2018-clock.ttf"

    invoke-static {p2, p3}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p2

    .line 236
    sget p3, Lcom/android/settings/R$id;->horizontal_hour:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 237
    sget v1, Lcom/android/settings/R$id;->horizontal_dot:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 238
    sget v2, Lcom/android/settings/R$id;->horizontal_min:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 239
    sget v3, Lcom/android/settings/R$id;->gxzw_anim_select_view:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lmiuix/recyclerview/widget/RecyclerView;

    iput-object v3, p0, Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    .line 240
    iget-object v3, p0, Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/MiuiKeyguardSettingsUtils;->isInFullWindowGestureMode(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 241
    iget-object v3, p0, Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 242
    iget-object v4, p0, Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/settings/R$dimen;->gxzw_anim_select_view_gesture_mode_margin_bottom:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 243
    iget-object v4, p0, Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 245
    :cond_0
    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 246
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 247
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 249
    new-instance p2, Lmiuix/pickerwidget/date/Calendar;

    invoke-direct {p2}, Lmiuix/pickerwidget/date/Calendar;-><init>()V

    .line 250
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {p2, v3, v4}, Lmiuix/pickerwidget/date/Calendar;->setTimeInMillis(J)Lmiuix/pickerwidget/date/Calendar;

    const/16 v1, 0x12

    .line 251
    invoke-virtual {p2, v1}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    move-result v1

    const/16 v3, 0x14

    .line 252
    invoke-virtual {p2, v3}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    move-result p2

    .line 253
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 254
    invoke-direct {p0, p2}, Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment;->formatTime(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 256
    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object p3, p0, Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3, v0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    iput-object p2, p0, Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 257
    iget-object p2, p0, Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    iget-object p3, p0, Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment;->mGxzwAnimSelectAdapter:Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment$GxzwAnimSelectAdapter;

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 258
    iget-object p2, p0, Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    iget-object p3, p0, Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 259
    iget-object p2, p0, Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 260
    iget-object p2, p0, Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment;->mGxzwAnimItemList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    :goto_0
    if-ge v0, p2, :cond_3

    .line 261
    iget-object p3, p0, Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment;->mGxzwAnimItemList:Ljava/util/List;

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$GxzwAnimItem;

    .line 262
    iget v1, p3, Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$GxzwAnimItem;->type:I

    iget v2, p0, Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment;->mType:I

    if-ne v1, v2, :cond_2

    if-nez v2, :cond_1

    .line 264
    iget-object p3, p0, Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment;->mVideoView:Lcom/android/settings/MutedVideoView;

    const/4 v1, 0x4

    invoke-virtual {p3, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    goto :goto_1

    .line 266
    :cond_1
    iget-object p3, p3, Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$GxzwAnimItem;->video:Ljava/lang/String;

    invoke-direct {p0, p3}, Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment;->setVideoURI(Ljava/lang/String;)V

    .line 267
    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment;->smoothScrollToPosition(I)V

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 272
    :cond_3
    iget-object p2, p0, Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment;->mVideoView:Lcom/android/settings/MutedVideoView;

    invoke-virtual {p2}, Lcom/android/settings/MutedVideoView;->start()V

    .line 273
    iget-object p0, p0, Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment;->mVideoView:Lcom/android/settings/MutedVideoView;

    new-instance p2, Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment$$ExternalSyntheticLambda0;

    invoke-direct {p2}, Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p0, p2}, Lcom/android/settings/MutedVideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 220
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 221
    iget-object v0, p0, Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment;->mVideoView:Lcom/android/settings/MutedVideoView;

    invoke-virtual {v0}, Lcom/android/settings/MutedVideoView;->suspend()V

    .line 222
    invoke-direct {p0}, Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment;->dismissFingerEnrollDialog()V

    return-void
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 0

    .line 412
    invoke-super {p0, p1}, Lcom/android/settings/KeyguardSettingsPreferenceFragment;->onMultiWindowModeChanged(Z)V

    .line 414
    iget-object p1, p0, Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/android/settings/MiuiKeyguardSettingsUtils;->isMultiWindowNotFreeformMode(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 415
    invoke-direct {p0}, Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment;->dismissFingerEnrollDialog()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 201
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 202
    iget-object v0, p0, Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment;->mVideoView:Lcom/android/settings/MutedVideoView;

    invoke-virtual {v0}, Lcom/android/settings/MutedVideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    iget-object p0, p0, Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment;->mVideoView:Lcom/android/settings/MutedVideoView;

    invoke-virtual {p0}, Lcom/android/settings/MutedVideoView;->pause()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 145
    invoke-super {p0}, Lcom/android/settings/KeyguardSettingsPreferenceFragment;->onResume()V

    .line 146
    iget-object v0, p0, Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment;->mVideoView:Lcom/android/settings/MutedVideoView;

    invoke-virtual {v0}, Lcom/android/settings/MutedVideoView;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 147
    iget-object p0, p0, Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment;->mVideoView:Lcom/android/settings/MutedVideoView;

    invoke-virtual {p0}, Lcom/android/settings/MutedVideoView;->start()V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 209
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStart()V

    .line 210
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lmiuix/appcompat/app/AppCompatActivity;

    if-eqz v0, :cond_0

    .line 211
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 213
    iget-object p0, p0, Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment;->mActivity:Landroid/app/Activity;

    sget v1, Lcom/android/settings/R$drawable;->gxzw_anim_drawable:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/appcompat/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 p0, 0x0

    .line 214
    invoke-virtual {v0, p0}, Lmiuix/appcompat/app/ActionBar;->setExpandState(I)V

    :cond_0
    return-void
.end method

.method public smoothScrollToPosition(I)V
    .locals 2

    if-ltz p1, :cond_1

    .line 352
    iget-object v0, p0, Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment;->mGxzwAnimSelectAdapter:Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment$GxzwAnimSelectAdapter;

    invoke-virtual {v0}, Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment$GxzwAnimSelectAdapter;->getItemCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 355
    :cond_0
    new-instance v0, Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment$3;

    iget-object v1, p0, Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment$3;-><init>(Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment;Landroid/content/Context;)V

    .line 373
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->setTargetPosition(I)V

    .line 374
    iget-object p0, p0, Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;)V

    :cond_1
    :goto_0
    return-void
.end method
