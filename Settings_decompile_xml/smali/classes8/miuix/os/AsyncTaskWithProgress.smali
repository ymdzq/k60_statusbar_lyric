.class public abstract Lmiuix/os/AsyncTaskWithProgress;
.super Landroid/os/AsyncTask;
.source "AsyncTaskWithProgress.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/os/AsyncTaskWithProgress$ProgressDialogFragment;,
        Lmiuix/os/AsyncTaskWithProgress$Listeners;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/os/AsyncTask<",
        "TParams;",
        "Ljava/lang/Integer;",
        "TResult;>;"
    }
.end annotation


# static fields
.field private static final sAllTasks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lmiuix/os/AsyncTaskWithProgress<",
            "**>;>;"
        }
    .end annotation
.end field


# instance fields
.field private mCancelable:Z

.field private mCurrentProgress:I

.field private volatile mFragment:Lmiuix/os/AsyncTaskWithProgress$ProgressDialogFragment;

.field private final mFragmentManager:Landroidx/fragment/app/FragmentManager;

.field private mIndeterminate:Z

.field private final mListeners:Lmiuix/os/AsyncTaskWithProgress$Listeners;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiuix/os/AsyncTaskWithProgress<",
            "TParams;TResult;>.",
            "Listeners;"
        }
    .end annotation
.end field

.field private mMaxProgress:I

.field private mMessage:Ljava/lang/CharSequence;

.field private mMessageId:I

.field private mProgressStyle:I

.field private mTheme:I

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiuix/os/AsyncTaskWithProgress;->sAllTasks:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/FragmentManager;)V
    .locals 2

    .line 72
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    .line 53
    iput v0, p0, Lmiuix/os/AsyncTaskWithProgress;->mTheme:I

    .line 54
    iput v0, p0, Lmiuix/os/AsyncTaskWithProgress;->mTitleId:I

    const/4 v1, 0x0

    .line 55
    iput-object v1, p0, Lmiuix/os/AsyncTaskWithProgress;->mTitle:Ljava/lang/CharSequence;

    .line 56
    iput v0, p0, Lmiuix/os/AsyncTaskWithProgress;->mMessageId:I

    .line 57
    iput-object v1, p0, Lmiuix/os/AsyncTaskWithProgress;->mMessage:Ljava/lang/CharSequence;

    .line 58
    iput-boolean v0, p0, Lmiuix/os/AsyncTaskWithProgress;->mCancelable:Z

    .line 59
    iput-boolean v0, p0, Lmiuix/os/AsyncTaskWithProgress;->mIndeterminate:Z

    .line 60
    iput v0, p0, Lmiuix/os/AsyncTaskWithProgress;->mMaxProgress:I

    .line 61
    iput v0, p0, Lmiuix/os/AsyncTaskWithProgress;->mProgressStyle:I

    .line 62
    iput v0, p0, Lmiuix/os/AsyncTaskWithProgress;->mCurrentProgress:I

    .line 63
    iput-object v1, p0, Lmiuix/os/AsyncTaskWithProgress;->mFragment:Lmiuix/os/AsyncTaskWithProgress$ProgressDialogFragment;

    .line 64
    new-instance v0, Lmiuix/os/AsyncTaskWithProgress$Listeners;

    invoke-direct {v0, p0, v1}, Lmiuix/os/AsyncTaskWithProgress$Listeners;-><init>(Lmiuix/os/AsyncTaskWithProgress;Lmiuix/os/AsyncTaskWithProgress$1;)V

    iput-object v0, p0, Lmiuix/os/AsyncTaskWithProgress;->mListeners:Lmiuix/os/AsyncTaskWithProgress$Listeners;

    .line 73
    iput-object p1, p0, Lmiuix/os/AsyncTaskWithProgress;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    return-void
.end method

.method static synthetic access$100(Lmiuix/os/AsyncTaskWithProgress;)Lmiuix/os/AsyncTaskWithProgress$ProgressDialogFragment;
    .locals 0

    .line 49
    iget-object p0, p0, Lmiuix/os/AsyncTaskWithProgress;->mFragment:Lmiuix/os/AsyncTaskWithProgress$ProgressDialogFragment;

    return-object p0
.end method

.method static synthetic access$1000(Lmiuix/os/AsyncTaskWithProgress;)I
    .locals 0

    .line 49
    iget p0, p0, Lmiuix/os/AsyncTaskWithProgress;->mProgressStyle:I

    return p0
.end method

.method static synthetic access$102(Lmiuix/os/AsyncTaskWithProgress;Lmiuix/os/AsyncTaskWithProgress$ProgressDialogFragment;)Lmiuix/os/AsyncTaskWithProgress$ProgressDialogFragment;
    .locals 0

    .line 49
    iput-object p1, p0, Lmiuix/os/AsyncTaskWithProgress;->mFragment:Lmiuix/os/AsyncTaskWithProgress$ProgressDialogFragment;

    return-object p1
.end method

.method static synthetic access$1100(Lmiuix/os/AsyncTaskWithProgress;)Z
    .locals 0

    .line 49
    iget-boolean p0, p0, Lmiuix/os/AsyncTaskWithProgress;->mIndeterminate:Z

    return p0
.end method

.method static synthetic access$1200(Lmiuix/os/AsyncTaskWithProgress;)I
    .locals 0

    .line 49
    iget p0, p0, Lmiuix/os/AsyncTaskWithProgress;->mMaxProgress:I

    return p0
.end method

.method static synthetic access$1300(Lmiuix/os/AsyncTaskWithProgress;)I
    .locals 0

    .line 49
    iget p0, p0, Lmiuix/os/AsyncTaskWithProgress;->mCurrentProgress:I

    return p0
.end method

.method static synthetic access$200()Ljava/util/HashMap;
    .locals 1

    .line 49
    sget-object v0, Lmiuix/os/AsyncTaskWithProgress;->sAllTasks:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$300(Lmiuix/os/AsyncTaskWithProgress;)Z
    .locals 0

    .line 49
    iget-boolean p0, p0, Lmiuix/os/AsyncTaskWithProgress;->mCancelable:Z

    return p0
.end method

.method static synthetic access$400(Lmiuix/os/AsyncTaskWithProgress;)Lmiuix/os/AsyncTaskWithProgress$Listeners;
    .locals 0

    .line 49
    iget-object p0, p0, Lmiuix/os/AsyncTaskWithProgress;->mListeners:Lmiuix/os/AsyncTaskWithProgress$Listeners;

    return-object p0
.end method

.method static synthetic access$500(Lmiuix/os/AsyncTaskWithProgress;)I
    .locals 0

    .line 49
    iget p0, p0, Lmiuix/os/AsyncTaskWithProgress;->mTheme:I

    return p0
.end method

.method static synthetic access$600(Lmiuix/os/AsyncTaskWithProgress;)I
    .locals 0

    .line 49
    iget p0, p0, Lmiuix/os/AsyncTaskWithProgress;->mTitleId:I

    return p0
.end method

.method static synthetic access$700(Lmiuix/os/AsyncTaskWithProgress;)Ljava/lang/CharSequence;
    .locals 0

    .line 49
    iget-object p0, p0, Lmiuix/os/AsyncTaskWithProgress;->mTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic access$800(Lmiuix/os/AsyncTaskWithProgress;)I
    .locals 0

    .line 49
    iget p0, p0, Lmiuix/os/AsyncTaskWithProgress;->mMessageId:I

    return p0
.end method

.method static synthetic access$900(Lmiuix/os/AsyncTaskWithProgress;)Ljava/lang/CharSequence;
    .locals 0

    .line 49
    iget-object p0, p0, Lmiuix/os/AsyncTaskWithProgress;->mMessage:Ljava/lang/CharSequence;

    return-object p0
.end method

.method private dismissDialog()V
    .locals 3

    .line 247
    iget-object v0, p0, Lmiuix/os/AsyncTaskWithProgress;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AsyncTaskWithProgress@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p0

    check-cast p0, Lmiuix/os/AsyncTaskWithProgress$ProgressDialogFragment;

    if-eqz p0, :cond_0

    .line 250
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    :cond_0
    return-void
.end method


# virtual methods
.method public onCancelled()V
    .locals 3

    .line 229
    sget-object v0, Lmiuix/os/AsyncTaskWithProgress;->sAllTasks:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AsyncTaskWithProgress@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    invoke-direct {p0}, Lmiuix/os/AsyncTaskWithProgress;->dismissDialog()V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .line 220
    sget-object p1, Lmiuix/os/AsyncTaskWithProgress;->sAllTasks:Ljava/util/HashMap;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AsyncTaskWithProgress@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    invoke-direct {p0}, Lmiuix/os/AsyncTaskWithProgress;->dismissDialog()V

    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AsyncTaskWithProgress@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 195
    sget-object v1, Lmiuix/os/AsyncTaskWithProgress;->sAllTasks:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    iget-object v1, p0, Lmiuix/os/AsyncTaskWithProgress;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    if-eqz v1, :cond_0

    .line 197
    invoke-static {v0}, Lmiuix/os/AsyncTaskWithProgress$ProgressDialogFragment;->newInstance(Ljava/lang/String;)Lmiuix/os/AsyncTaskWithProgress$ProgressDialogFragment;

    move-result-object v1

    iput-object v1, p0, Lmiuix/os/AsyncTaskWithProgress;->mFragment:Lmiuix/os/AsyncTaskWithProgress$ProgressDialogFragment;

    .line 198
    iget-object v1, p0, Lmiuix/os/AsyncTaskWithProgress;->mFragment:Lmiuix/os/AsyncTaskWithProgress$ProgressDialogFragment;

    iget-boolean v2, p0, Lmiuix/os/AsyncTaskWithProgress;->mCancelable:Z

    invoke-virtual {v1, v2}, Landroidx/fragment/app/DialogFragment;->setCancelable(Z)V

    .line 199
    iget-object v1, p0, Lmiuix/os/AsyncTaskWithProgress;->mFragment:Lmiuix/os/AsyncTaskWithProgress$ProgressDialogFragment;

    iget-object p0, p0, Lmiuix/os/AsyncTaskWithProgress;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v1, p0, v0}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 1

    .line 208
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 209
    aget-object p1, p1, v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lmiuix/os/AsyncTaskWithProgress;->mCurrentProgress:I

    .line 210
    iget-object p1, p0, Lmiuix/os/AsyncTaskWithProgress;->mFragment:Lmiuix/os/AsyncTaskWithProgress$ProgressDialogFragment;

    if-eqz p1, :cond_0

    .line 211
    iget-object p1, p0, Lmiuix/os/AsyncTaskWithProgress;->mFragment:Lmiuix/os/AsyncTaskWithProgress$ProgressDialogFragment;

    iget p0, p0, Lmiuix/os/AsyncTaskWithProgress;->mCurrentProgress:I

    invoke-virtual {p1, p0}, Lmiuix/os/AsyncTaskWithProgress$ProgressDialogFragment;->setProgress(I)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .line 49
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lmiuix/os/AsyncTaskWithProgress;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method

.method public setCancelable(Z)Lmiuix/os/AsyncTaskWithProgress;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lmiuix/os/AsyncTaskWithProgress<",
            "TParams;TResult;>;"
        }
    .end annotation

    .line 150
    iput-boolean p1, p0, Lmiuix/os/AsyncTaskWithProgress;->mCancelable:Z

    return-object p0
.end method

.method public setMessage(I)Lmiuix/os/AsyncTaskWithProgress;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lmiuix/os/AsyncTaskWithProgress<",
            "TParams;TResult;>;"
        }
    .end annotation

    .line 121
    iput p1, p0, Lmiuix/os/AsyncTaskWithProgress;->mMessageId:I

    const/4 p1, 0x0

    .line 122
    iput-object p1, p0, Lmiuix/os/AsyncTaskWithProgress;->mMessage:Ljava/lang/CharSequence;

    return-object p0
.end method
