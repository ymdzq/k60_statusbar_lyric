.class public final Lcom/android/systemui/mediaprojection/appselector/MediaProjectionBlockerEmptyStateProvider;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$EmptyStateProvider;


# instance fields
.field public final context:Landroid/content/Context;

.field public final hostAppHandle:Landroid/os/UserHandle;

.field public final personalProfileHandle:Landroid/os/UserHandle;

.field public final policyResolver:Lcom/android/systemui/mediaprojection/devicepolicy/ScreenCaptureDevicePolicyResolver;


# direct methods
.method public constructor <init>(Landroid/os/UserHandle;Landroid/os/UserHandle;Lcom/android/systemui/mediaprojection/devicepolicy/ScreenCaptureDevicePolicyResolver;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/mediaprojection/appselector/MediaProjectionBlockerEmptyStateProvider;->hostAppHandle:Landroid/os/UserHandle;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/mediaprojection/appselector/MediaProjectionBlockerEmptyStateProvider;->personalProfileHandle:Landroid/os/UserHandle;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/mediaprojection/appselector/MediaProjectionBlockerEmptyStateProvider;->policyResolver:Lcom/android/systemui/mediaprojection/devicepolicy/ScreenCaptureDevicePolicyResolver;

    .line 9
    iput-object p4, p0, Lcom/android/systemui/mediaprojection/appselector/MediaProjectionBlockerEmptyStateProvider;->context:Landroid/content/Context;

    .line 11
    return-void
    .line 13
.end method


# virtual methods
.method public final getEmptyState(Lcom/android/internal/app/ResolverListAdapter;)Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$EmptyState;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/mediaprojection/appselector/MediaProjectionBlockerEmptyStateProvider;->policyResolver:Lcom/android/systemui/mediaprojection/devicepolicy/ScreenCaptureDevicePolicyResolver;

    .line 2
    invoke-virtual {p1}, Lcom/android/internal/app/ResolverListAdapter;->getUserHandle()Landroid/os/UserHandle;

    .line 4
    move-result-object p1

    .line 7
    iget-object v1, p0, Lcom/android/systemui/mediaprojection/appselector/MediaProjectionBlockerEmptyStateProvider;->hostAppHandle:Landroid/os/UserHandle;

    .line 8
    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/mediaprojection/devicepolicy/ScreenCaptureDevicePolicyResolver;->isScreenCaptureAllowed(Landroid/os/UserHandle;Landroid/os/UserHandle;)Z

    .line 10
    move-result p1

    .line 13
    iget-object v0, p0, Lcom/android/systemui/mediaprojection/appselector/MediaProjectionBlockerEmptyStateProvider;->hostAppHandle:Landroid/os/UserHandle;

    .line 14
    iget-object v1, p0, Lcom/android/systemui/mediaprojection/appselector/MediaProjectionBlockerEmptyStateProvider;->personalProfileHandle:Landroid/os/UserHandle;

    .line 16
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    const v0, 0x10408c1    # @android:string/status_bar_headset

    .line 24
    goto :goto_0

    .line 27
    :cond_0
    const v0, 0x10408c2    # @android:string/status_bar_hotspot

    .line 28
    :goto_0
    if-nez p1, :cond_1

    .line 31
    new-instance p1, Lcom/android/systemui/mediaprojection/appselector/MediaProjectionBlockerEmptyStateProvider$getEmptyState$1;

    .line 33
    invoke-direct {p1, p0, v0}, Lcom/android/systemui/mediaprojection/appselector/MediaProjectionBlockerEmptyStateProvider$getEmptyState$1;-><init>(Lcom/android/systemui/mediaprojection/appselector/MediaProjectionBlockerEmptyStateProvider;I)V

    .line 35
    return-object p1

    .line 38
    :cond_1
    const/4 p0, 0x0

    .line 39
    return-object p0
    .line 40
.end method
