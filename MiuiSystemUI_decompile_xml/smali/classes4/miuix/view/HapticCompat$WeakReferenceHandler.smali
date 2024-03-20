.class public final Lmiuix/view/HapticCompat$WeakReferenceHandler;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final mFeedbackConstant:I

.field public final mViewReference:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(ILandroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 5
    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 7
    iput-object v0, p0, Lmiuix/view/HapticCompat$WeakReferenceHandler;->mViewReference:Ljava/lang/ref/WeakReference;

    .line 10
    iput p1, p0, Lmiuix/view/HapticCompat$WeakReferenceHandler;->mFeedbackConstant:I

    .line 12
    return-void
    .line 14
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lmiuix/view/HapticCompat$WeakReferenceHandler;->mViewReference:Ljava/lang/ref/WeakReference;

    .line 2
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, Landroid/view/View;

    .line 8
    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    .line 12
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    :try_start_0
    iget p0, p0, Lmiuix/view/HapticCompat$WeakReferenceHandler;->mFeedbackConstant:I

    .line 18
    invoke-static {v0, p0}, Lmiuix/view/HapticCompat;->performHapticFeedback(Landroid/view/View;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    :catch_0
    :cond_0
    return-void
    .line 23
.end method
