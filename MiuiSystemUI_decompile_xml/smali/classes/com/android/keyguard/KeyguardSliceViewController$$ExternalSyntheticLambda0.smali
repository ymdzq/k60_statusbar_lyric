.class public final synthetic Lcom/android/keyguard/KeyguardSliceViewController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/tuner/TunerService$Tunable;


# instance fields
.field public final synthetic f$0:Lcom/android/keyguard/KeyguardSliceViewController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/KeyguardSliceViewController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSliceViewController$$ExternalSyntheticLambda0;->f$0:Lcom/android/keyguard/KeyguardSliceViewController;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSliceViewController$$ExternalSyntheticLambda0;->f$0:Lcom/android/keyguard/KeyguardSliceViewController;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    if-nez p2, :cond_0

    .line 7
    const-string p2, "content://com.android.systemui.keyguard/main"

    .line 9
    :cond_0
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSliceViewController;->mLiveData:Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;

    .line 11
    const/4 v0, 0x0

    .line 13
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSliceViewController;->mObserver:Lcom/android/keyguard/KeyguardSliceViewController$2;

    .line 14
    if-eqz p1, :cond_2

    .line 16
    iget v2, p1, Landroidx/lifecycle/LiveData;->mActiveCount:I

    .line 18
    const/4 v3, 0x1

    .line 20
    if-lez v2, :cond_1

    .line 21
    move v2, v3

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    move v2, v0

    .line 25
    :goto_0
    if-eqz v2, :cond_2

    .line 26
    invoke-virtual {p1, v1}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    .line 28
    move v0, v3

    .line 31
    :cond_2
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 32
    move-result-object p1

    .line 35
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSliceViewController;->mKeyguardSliceUri:Landroid/net/Uri;

    .line 36
    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 38
    check-cast p1, Lcom/android/keyguard/KeyguardSliceView;

    .line 40
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 42
    move-result-object p1

    .line 45
    iget-object p2, p0, Lcom/android/keyguard/KeyguardSliceViewController;->mKeyguardSliceUri:Landroid/net/Uri;

    .line 46
    sget-object v2, Landroidx/slice/widget/SliceLiveData;->SUPPORTED_SPECS:Landroidx/collection/ArraySet;

    .line 48
    new-instance v2, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 52
    move-result-object p1

    .line 55
    const/4 v3, 0x0

    .line 56
    invoke-direct {v2, p1, p2, v3}, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/android/systemui/volume/VolumePanelDialog$$ExternalSyntheticLambda1;)V

    .line 57
    iput-object v2, p0, Lcom/android/keyguard/KeyguardSliceViewController;->mLiveData:Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;

    .line 60
    if-eqz v0, :cond_3

    .line 62
    invoke-virtual {v2, v1}, Landroidx/lifecycle/LiveData;->observeForever(Landroidx/lifecycle/Observer;)V

    .line 64
    :cond_3
    return-void
    .line 67
.end method
