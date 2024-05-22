.class public abstract Lcom/android/systemui/biometrics/UdfpsAnimationViewController;
.super Lcom/android/systemui/util/ViewController;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field public dialogAlphaAnimator:Landroid/animation/ValueAnimator;

.field public final dialogListener:Lcom/android/systemui/biometrics/UdfpsAnimationViewController$dialogListener$1;

.field public final dialogManager:Lcom/android/systemui/statusbar/phone/SystemUIDialogManager;

.field public final dumpManager:Lcom/android/systemui/dump/DumpManager;

.field public final dumpTag:Ljava/lang/String;

.field public notificationShadeVisible:Z

.field public final shadeExpansionListener:Lcom/android/systemui/biometrics/UdfpsAnimationViewController$shadeExpansionListener$1;

.field public final shadeExpansionStateManager:Lcom/android/systemui/shade/ShadeExpansionStateManager;

.field public final statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field public final touchTranslation:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>(Lcom/android/systemui/biometrics/UdfpsAnimationView;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/shade/ShadeExpansionStateManager;Lcom/android/systemui/statusbar/phone/SystemUIDialogManager;Lcom/android/systemui/dump/DumpManager;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/systemui/util/ViewController;-><init>(Landroid/view/View;)V

    .line 2
    iput-object p2, p0, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 5
    iput-object p3, p0, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->shadeExpansionStateManager:Lcom/android/systemui/shade/ShadeExpansionStateManager;

    .line 7
    iput-object p4, p0, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->dialogManager:Lcom/android/systemui/statusbar/phone/SystemUIDialogManager;

    .line 9
    iput-object p5, p0, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->dumpManager:Lcom/android/systemui/dump/DumpManager;

    .line 11
    new-instance p2, Lcom/android/systemui/biometrics/UdfpsAnimationViewController$dialogListener$1;

    .line 13
    invoke-direct {p2, p0}, Lcom/android/systemui/biometrics/UdfpsAnimationViewController$dialogListener$1;-><init>(Lcom/android/systemui/biometrics/UdfpsAnimationViewController;)V

    .line 15
    iput-object p2, p0, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->dialogListener:Lcom/android/systemui/biometrics/UdfpsAnimationViewController$dialogListener$1;

    .line 18
    new-instance p2, Lcom/android/systemui/biometrics/UdfpsAnimationViewController$shadeExpansionListener$1;

    .line 20
    invoke-direct {p2, p0, p1}, Lcom/android/systemui/biometrics/UdfpsAnimationViewController$shadeExpansionListener$1;-><init>(Lcom/android/systemui/biometrics/UdfpsAnimationViewController;Lcom/android/systemui/biometrics/UdfpsAnimationView;)V

    .line 22
    iput-object p2, p0, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->shadeExpansionListener:Lcom/android/systemui/biometrics/UdfpsAnimationViewController$shadeExpansionListener$1;

    .line 25
    new-instance p1, Landroid/graphics/PointF;

    .line 27
    const/4 p2, 0x0

    .line 29
    invoke-direct {p1, p2, p2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 30
    iput-object p1, p0, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->touchTranslation:Landroid/graphics/PointF;

    .line 33
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->getTag()Ljava/lang/String;

    .line 35
    move-result-object p1

    .line 38
    new-instance p2, Ljava/lang/StringBuilder;

    .line 39
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    const-string p1, " ("

    .line 47
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 52
    const-string p1, ")"

    .line 55
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    move-result-object p1

    .line 63
    iput-object p1, p0, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->dumpTag:Ljava/lang/String;

    .line 64
    return-void
    .line 66
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-boolean p2, p0, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->notificationShadeVisible:Z

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 4
    const-string v1, "mNotificationShadeVisible="

    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    move-result-object p2

    .line 17
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 18
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->shouldPauseAuth()Z

    .line 21
    move-result p2

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    .line 25
    const-string/jumbo v1, "shouldPauseAuth()="

    .line 27
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    move-result-object p2

    .line 39
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 40
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->getView()Lcom/android/systemui/biometrics/UdfpsAnimationView;

    .line 43
    move-result-object p2

    .line 46
    iget-boolean p2, p2, Lcom/android/systemui/biometrics/UdfpsAnimationView;->mPauseAuth:Z

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    .line 49
    const-string v1, "isPauseAuth="

    .line 51
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    move-result-object p2

    .line 62
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->getView()Lcom/android/systemui/biometrics/UdfpsAnimationView;

    .line 66
    move-result-object p0

    .line 69
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/UdfpsAnimationView;->getDialogSuggestedAlpha()F

    .line 70
    move-result p0

    .line 73
    new-instance p2, Ljava/lang/StringBuilder;

    .line 74
    const-string v0, "dialogSuggestedAlpha="

    .line 76
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    move-result-object p0

    .line 87
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 88
    return-void
    .line 91
.end method

.method public abstract getTag()Ljava/lang/String;
.end method

.method public final getView()Lcom/android/systemui/biometrics/UdfpsAnimationView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 2
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 4
    check-cast p0, Lcom/android/systemui/biometrics/UdfpsAnimationView;

    .line 7
    return-object p0
    .line 9
.end method

.method public onViewAttached()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->shadeExpansionStateManager:Lcom/android/systemui/shade/ShadeExpansionStateManager;

    .line 2
    iget-object v1, p0, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->shadeExpansionListener:Lcom/android/systemui/biometrics/UdfpsAnimationViewController$shadeExpansionListener$1;

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/systemui/shade/ShadeExpansionStateManager;->addExpansionListener(Lcom/android/systemui/shade/ShadeExpansionListener;)Lcom/android/systemui/shade/ShadeExpansionChangeEvent;

    .line 6
    move-result-object v0

    .line 9
    invoke-virtual {v1, v0}, Lcom/android/systemui/biometrics/UdfpsAnimationViewController$shadeExpansionListener$1;->onPanelExpansionChanged(Lcom/android/systemui/shade/ShadeExpansionChangeEvent;)V

    .line 10
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->dialogManager:Lcom/android/systemui/statusbar/phone/SystemUIDialogManager;

    .line 13
    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/SystemUIDialogManager;->mListeners:Ljava/util/Set;

    .line 15
    check-cast v0, Ljava/util/HashSet;

    .line 17
    iget-object v1, p0, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->dialogListener:Lcom/android/systemui/biometrics/UdfpsAnimationViewController$dialogListener$1;

    .line 19
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 21
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->dumpManager:Lcom/android/systemui/dump/DumpManager;

    .line 24
    iget-object v1, p0, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->dumpTag:Ljava/lang/String;

    .line 26
    invoke-static {v0, v1, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable$default(Lcom/android/systemui/dump/DumpManager;Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    .line 28
    return-void
    .line 31
.end method

.method public onViewDetached()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->shadeExpansionStateManager:Lcom/android/systemui/shade/ShadeExpansionStateManager;

    .line 2
    iget-object v0, v0, Lcom/android/systemui/shade/ShadeExpansionStateManager;->expansionListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 4
    iget-object v1, p0, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->shadeExpansionListener:Lcom/android/systemui/biometrics/UdfpsAnimationViewController$shadeExpansionListener$1;

    .line 6
    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 8
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->dialogManager:Lcom/android/systemui/statusbar/phone/SystemUIDialogManager;

    .line 11
    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/SystemUIDialogManager;->mListeners:Ljava/util/Set;

    .line 13
    check-cast v0, Ljava/util/HashSet;

    .line 15
    iget-object v1, p0, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->dialogListener:Lcom/android/systemui/biometrics/UdfpsAnimationViewController$dialogListener$1;

    .line 17
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 19
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->dumpManager:Lcom/android/systemui/dump/DumpManager;

    .line 22
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->dumpTag:Ljava/lang/String;

    .line 24
    invoke-virtual {v0, p0}, Lcom/android/systemui/dump/DumpManager;->unregisterDumpable(Ljava/lang/String;)V

    .line 26
    return-void
    .line 29
.end method

.method public shouldPauseAuth()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->notificationShadeVisible:Z

    .line 2
    if-nez v0, :cond_1

    .line 4
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->dialogManager:Lcom/android/systemui/statusbar/phone/SystemUIDialogManager;

    .line 6
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SystemUIDialogManager;->shouldHideAffordance()Z

    .line 8
    move-result p0

    .line 11
    if-eqz p0, :cond_0

    .line 12
    goto :goto_0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 17
    :goto_1
    return p0
    .line 18
.end method

.method public updateAlpha()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->getView()Lcom/android/systemui/biometrics/UdfpsAnimationView;

    .line 2
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/UdfpsAnimationView;->updateAlpha()I

    .line 6
    return-void
    .line 9
.end method

.method public final updatePauseAuth()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->getView()Lcom/android/systemui/biometrics/UdfpsAnimationView;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->shouldPauseAuth()Z

    .line 6
    move-result v1

    .line 9
    iget-boolean v2, v0, Lcom/android/systemui/biometrics/UdfpsAnimationView;->mPauseAuth:Z

    .line 10
    if-eq v1, v2, :cond_0

    .line 12
    iput-boolean v1, v0, Lcom/android/systemui/biometrics/UdfpsAnimationView;->mPauseAuth:Z

    .line 14
    invoke-virtual {v0}, Lcom/android/systemui/biometrics/UdfpsAnimationView;->updateAlpha()I

    .line 16
    const/4 v0, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    :goto_0
    if-eqz v0, :cond_1

    .line 22
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->getView()Lcom/android/systemui/biometrics/UdfpsAnimationView;

    .line 24
    move-result-object p0

    .line 27
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->postInvalidate()V

    .line 28
    :cond_1
    return-void
    .line 31
.end method
