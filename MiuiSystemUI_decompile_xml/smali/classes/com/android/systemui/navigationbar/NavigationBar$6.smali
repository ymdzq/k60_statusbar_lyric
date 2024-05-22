.class public final Lcom/android/systemui/navigationbar/NavigationBar$6;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthListener;


# instance fields
.field public mHasBlurs:Z

.field public final synthetic this$0:Lcom/android/systemui/navigationbar/NavigationBar;


# direct methods
.method public constructor <init>(Lcom/android/systemui/navigationbar/NavigationBar;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBar$6;->this$0:Lcom/android/systemui/navigationbar/NavigationBar;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onBlurRadiusChanged(I)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    const/4 p1, 0x1

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    const/4 p1, 0x0

    .line 6
    :goto_0
    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/NavigationBar$6;->mHasBlurs:Z

    .line 7
    if-ne p1, v0, :cond_1

    .line 9
    return-void

    .line 11
    :cond_1
    iput-boolean p1, p0, Lcom/android/systemui/navigationbar/NavigationBar$6;->mHasBlurs:Z

    .line 12
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar$6;->this$0:Lcom/android/systemui/navigationbar/NavigationBar;

    .line 14
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mRegionSamplingHelper:Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;

    .line 16
    iput-boolean p1, p0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mWindowHasBlurs:Z

    .line 18
    invoke-virtual {p0}, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->updateSamplingListener()V

    .line 20
    return-void
    .line 23
.end method

.method public final onWallpaperZoomOutChanged(F)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method
