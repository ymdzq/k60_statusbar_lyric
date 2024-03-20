.class public final Lcom/android/launcher3/icons/IconFactory;
.super Lcom/android/launcher3/icons/BaseIconFactory;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static sPool:Lcom/android/launcher3/icons/IconFactory;

.field public static final sPoolSync:Ljava/lang/Object;


# instance fields
.field public final mPoolId:I

.field public next:Lcom/android/launcher3/icons/IconFactory;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    sput-object v0, Lcom/android/launcher3/icons/IconFactory;->sPoolSync:Ljava/lang/Object;

    .line 7
    return-void
    .line 9
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p2, p3, p1, v0}, Lcom/android/launcher3/icons/BaseIconFactory;-><init>(IILandroid/content/Context;Z)V

    .line 3
    iput v0, p0, Lcom/android/launcher3/icons/IconFactory;->mPoolId:I

    .line 6
    return-void
    .line 8
.end method

.method public static obtain(Landroid/content/Context;)Lcom/android/launcher3/icons/IconFactory;
    .locals 4

    .line 1
    sget-object v0, Lcom/android/launcher3/icons/IconFactory;->sPoolSync:Ljava/lang/Object;

    .line 2
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/android/launcher3/icons/IconFactory;->sPool:Lcom/android/launcher3/icons/IconFactory;

    .line 5
    if-eqz v1, :cond_0

    .line 7
    iget-object p0, v1, Lcom/android/launcher3/icons/IconFactory;->next:Lcom/android/launcher3/icons/IconFactory;

    .line 9
    sput-object p0, Lcom/android/launcher3/icons/IconFactory;->sPool:Lcom/android/launcher3/icons/IconFactory;

    .line 11
    const/4 p0, 0x0

    .line 13
    iput-object p0, v1, Lcom/android/launcher3/icons/IconFactory;->next:Lcom/android/launcher3/icons/IconFactory;

    .line 14
    monitor-exit v0

    .line 16
    return-object v1

    .line 17
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    new-instance v0, Lcom/android/launcher3/icons/IconFactory;

    .line 19
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 21
    move-result-object v1

    .line 24
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 25
    move-result-object v1

    .line 28
    iget v1, v1, Landroid/content/res/Configuration;->densityDpi:I

    .line 29
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 31
    move-result-object v2

    .line 34
    const v3, 0x7f070281    # @dimen/default_icon_bitmap_size '56.0dp'

    .line 35
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 38
    move-result v2

    .line 41
    invoke-direct {v0, p0, v1, v2}, Lcom/android/launcher3/icons/IconFactory;-><init>(Landroid/content/Context;II)V

    .line 42
    return-object v0

    .line 45
    :catchall_0
    move-exception p0

    .line 46
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    throw p0
    .line 48
.end method


# virtual methods
.method public final close()V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/launcher3/icons/IconFactory;->sPoolSync:Ljava/lang/Object;

    .line 2
    monitor-enter v0

    .line 4
    :try_start_0
    iget v1, p0, Lcom/android/launcher3/icons/IconFactory;->mPoolId:I

    .line 5
    if-eqz v1, :cond_0

    .line 7
    monitor-exit v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v1, -0x1

    .line 11
    iput v1, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mWrapperBackgroundColor:I

    .line 12
    sget-object v1, Lcom/android/launcher3/icons/IconFactory;->sPool:Lcom/android/launcher3/icons/IconFactory;

    .line 14
    iput-object v1, p0, Lcom/android/launcher3/icons/IconFactory;->next:Lcom/android/launcher3/icons/IconFactory;

    .line 16
    sput-object p0, Lcom/android/launcher3/icons/IconFactory;->sPool:Lcom/android/launcher3/icons/IconFactory;

    .line 18
    monitor-exit v0

    .line 20
    :goto_0
    return-void

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw p0
.end method
