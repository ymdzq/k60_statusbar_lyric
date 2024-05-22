.class public final Lcom/android/systemui/statusbar/policy/SmartDarkObserver$1$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$1:Lcom/android/systemui/statusbar/policy/SmartDarkObserver$1;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/SmartDarkObserver$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/SmartDarkObserver$1$1;->this$1:Lcom/android/systemui/statusbar/policy/SmartDarkObserver$1;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SmartDarkObserver$1$1;->this$1:Lcom/android/systemui/statusbar/policy/SmartDarkObserver$1;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SmartDarkObserver$1;->this$0:Lcom/android/systemui/statusbar/policy/SmartDarkObserver;

    .line 4
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/SmartDarkObserver;->mSmartDark:Z

    .line 6
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SmartDarkObserver;->mCallbacks:Ljava/util/ArrayList;

    .line 8
    monitor-enter v1

    .line 10
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/SmartDarkObserver;->mCallbacks:Ljava/util/ArrayList;

    .line 11
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 13
    move-result v2

    .line 16
    :cond_0
    :goto_0
    add-int/lit8 v2, v2, -0x1

    .line 17
    if-ltz v2, :cond_2

    .line 19
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/SmartDarkObserver;->mCallbacks:Ljava/util/ArrayList;

    .line 21
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 23
    move-result-object v3

    .line 26
    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 27
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 29
    move-result-object v3

    .line 32
    check-cast v3, Lcom/android/systemui/statusbar/policy/SmartDarkObserver$Callback;

    .line 33
    if-eqz v3, :cond_0

    .line 35
    check-cast v3, Lcom/android/systemui/statusbar/phone/MiuiLightBarController;

    .line 37
    iget-boolean v4, v3, Lcom/android/systemui/statusbar/phone/MiuiLightBarController;->mSmartDarkEnable:Z

    .line 39
    if-eq v4, v0, :cond_0

    .line 41
    iput-boolean v0, v3, Lcom/android/systemui/statusbar/phone/MiuiLightBarController;->mSmartDarkEnable:Z

    .line 43
    iget-object v4, v3, Lcom/android/systemui/statusbar/phone/LightBarController;->mAppearanceRegions:[Lcom/android/internal/view/AppearanceRegion;

    .line 45
    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/MiuiLightBarController;->updateStatus([Lcom/android/internal/view/AppearanceRegion;)V

    .line 47
    iget-boolean v4, v3, Lcom/android/systemui/statusbar/phone/MiuiLightBarController;->mSmartDarkEnable:Z

    .line 50
    iget-object v5, v3, Lcom/android/systemui/statusbar/phone/MiuiLightBarController;->mRegionSamplingHelper:Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;

    .line 52
    if-eqz v4, :cond_1

    .line 54
    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/MiuiLightBarController;->mSamplingBounds:Landroid/graphics/Rect;

    .line 56
    invoke-virtual {v5, v3}, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->start(Landroid/graphics/Rect;)V

    .line 58
    goto :goto_0

    .line 61
    :cond_1
    invoke-virtual {v5}, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->stop()V

    .line 62
    goto :goto_0

    .line 65
    :cond_2
    monitor-exit v1

    .line 66
    return-void

    .line 67
    :catchall_0
    move-exception p0

    .line 68
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    throw p0
.end method
