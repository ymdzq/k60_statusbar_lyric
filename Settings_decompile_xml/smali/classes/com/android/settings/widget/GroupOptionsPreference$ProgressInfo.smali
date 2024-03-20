.class Lcom/android/settings/widget/GroupOptionsPreference$ProgressInfo;
.super Ljava/lang/Object;
.source "GroupOptionsPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/widget/GroupOptionsPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ProgressInfo"
.end annotation


# instance fields
.field private mIsVisible:Z

.field private mProgress:Landroid/widget/ProgressBar;


# direct methods
.method static bridge synthetic -$$Nest$fgetmIsVisible(Lcom/android/settings/widget/GroupOptionsPreference$ProgressInfo;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/settings/widget/GroupOptionsPreference$ProgressInfo;->mIsVisible:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmIsVisible(Lcom/android/settings/widget/GroupOptionsPreference$ProgressInfo;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/settings/widget/GroupOptionsPreference$ProgressInfo;->mIsVisible:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmProgress(Lcom/android/settings/widget/GroupOptionsPreference$ProgressInfo;Landroid/widget/ProgressBar;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/widget/GroupOptionsPreference$ProgressInfo;->mProgress:Landroid/widget/ProgressBar;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 399
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 401
    iput-boolean v0, p0, Lcom/android/settings/widget/GroupOptionsPreference$ProgressInfo;->mIsVisible:Z

    return-void
.end method

.method private shouldBeVisible()Z
    .locals 0

    .line 411
    iget-boolean p0, p0, Lcom/android/settings/widget/GroupOptionsPreference$ProgressInfo;->mIsVisible:Z

    return p0
.end method


# virtual methods
.method setUpProgress()V
    .locals 1

    .line 403
    invoke-direct {p0}, Lcom/android/settings/widget/GroupOptionsPreference$ProgressInfo;->shouldBeVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 404
    iget-object p0, p0, Lcom/android/settings/widget/GroupOptionsPreference$ProgressInfo;->mProgress:Landroid/widget/ProgressBar;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 406
    :cond_0
    iget-object p0, p0, Lcom/android/settings/widget/GroupOptionsPreference$ProgressInfo;->mProgress:Landroid/widget/ProgressBar;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :goto_0
    return-void
.end method
