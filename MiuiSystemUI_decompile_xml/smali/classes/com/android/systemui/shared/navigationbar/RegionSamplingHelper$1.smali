.class public final Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnDrawListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper$1;->this$0:Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onDraw()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper$1;->this$0:Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;

    .line 2
    iget-object v1, v0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mHandler:Landroid/os/Handler;

    .line 4
    iget-object v0, v0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mRemoveDrawRunnable:Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper$2;

    .line 6
    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 8
    iget-object p0, p0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper$1;->this$0:Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;

    .line 11
    iget-boolean v0, p0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mWaitingOnDraw:Z

    .line 13
    if-eqz v0, :cond_0

    .line 15
    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mWaitingOnDraw:Z

    .line 18
    invoke-virtual {p0}, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->updateSamplingListener()V

    .line 20
    :cond_0
    return-void
    .line 23
.end method
