.class public final Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$2;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/window/OnBackAnimationCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$2;->this$0:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onBackInvoked()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$2;->this$0:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->onBackPressed()Z

    .line 4
    return-void
    .line 7
.end method

.method public final onBackProgressed(Landroid/window/BackEvent;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$2;->this$0:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 2
    iget v1, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mState:I

    .line 4
    const/4 v2, 0x1

    .line 6
    if-eq v1, v2, :cond_0

    .line 7
    const/4 v3, 0x2

    .line 9
    if-eq v1, v3, :cond_0

    .line 10
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mBouncerShowingOverDream:Z

    .line 12
    if-nez v1, :cond_0

    .line 14
    goto :goto_0

    .line 16
    :cond_0
    const/4 v2, 0x0

    .line 17
    :goto_0
    if-eqz v2, :cond_1

    .line 18
    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mShadeSurface:Lcom/android/systemui/shade/ShadeSurface;

    .line 20
    check-cast v0, Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 22
    invoke-virtual {v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->canBeCollapsed()Z

    .line 24
    move-result v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    invoke-virtual {p1}, Landroid/window/BackEvent;->getProgress()F

    .line 30
    move-result p1

    .line 33
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$2;->this$0:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 34
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mShadeSurface:Lcom/android/systemui/shade/ShadeSurface;

    .line 36
    check-cast p0, Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 38
    invoke-virtual {p0, p1}, Lcom/android/systemui/shade/NotificationPanelViewController;->onBackProgressed(F)V

    .line 40
    :cond_1
    return-void
    .line 43
.end method
