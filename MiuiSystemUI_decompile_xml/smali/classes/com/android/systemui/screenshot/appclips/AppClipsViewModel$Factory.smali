.class public final Lcom/android/systemui/screenshot/appclips/AppClipsViewModel$Factory;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroidx/lifecycle/ViewModelProvider$Factory;


# instance fields
.field public final mAppClipsCrossProcessHelper:Lcom/android/systemui/screenshot/appclips/AppClipsCrossProcessHelper;

.field public final mBgExecutor:Ljava/util/concurrent/Executor;

.field public final mImageExporter:Lcom/android/systemui/screenshot/ImageExporter;

.field public final mMainExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/screenshot/appclips/AppClipsCrossProcessHelper;Lcom/android/systemui/screenshot/ImageExporter;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/screenshot/appclips/AppClipsViewModel$Factory;->mAppClipsCrossProcessHelper:Lcom/android/systemui/screenshot/appclips/AppClipsCrossProcessHelper;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/screenshot/appclips/AppClipsViewModel$Factory;->mImageExporter:Lcom/android/systemui/screenshot/ImageExporter;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/screenshot/appclips/AppClipsViewModel$Factory;->mMainExecutor:Ljava/util/concurrent/Executor;

    .line 9
    iput-object p4, p0, Lcom/android/systemui/screenshot/appclips/AppClipsViewModel$Factory;->mBgExecutor:Ljava/util/concurrent/Executor;

    .line 11
    return-void
    .line 13
.end method


# virtual methods
.method public final create(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;
    .locals 3

    .line 1
    const-class v0, Lcom/android/systemui/screenshot/appclips/AppClipsViewModel;

    .line 2
    if-ne p1, v0, :cond_0

    .line 4
    new-instance p1, Lcom/android/systemui/screenshot/appclips/AppClipsViewModel;

    .line 6
    iget-object v0, p0, Lcom/android/systemui/screenshot/appclips/AppClipsViewModel$Factory;->mAppClipsCrossProcessHelper:Lcom/android/systemui/screenshot/appclips/AppClipsCrossProcessHelper;

    .line 8
    iget-object v1, p0, Lcom/android/systemui/screenshot/appclips/AppClipsViewModel$Factory;->mImageExporter:Lcom/android/systemui/screenshot/ImageExporter;

    .line 10
    iget-object v2, p0, Lcom/android/systemui/screenshot/appclips/AppClipsViewModel$Factory;->mMainExecutor:Ljava/util/concurrent/Executor;

    .line 12
    iget-object p0, p0, Lcom/android/systemui/screenshot/appclips/AppClipsViewModel$Factory;->mBgExecutor:Ljava/util/concurrent/Executor;

    .line 14
    invoke-direct {p1, v0, v1, v2, p0}, Lcom/android/systemui/screenshot/appclips/AppClipsViewModel;-><init>(Lcom/android/systemui/screenshot/appclips/AppClipsCrossProcessHelper;Lcom/android/systemui/screenshot/ImageExporter;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)V

    .line 16
    return-object p1

    .line 19
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 20
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 22
    throw p0
    .line 25
.end method
