.class public final Lcom/android/systemui/statusbar/phone/SystemUIDialogManager;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field public final mDialogsShowing:Ljava/util/Set;

.field public final mKeyguardViewController:Lcom/android/keyguard/KeyguardViewController;

.field public final mListeners:Ljava/util/Set;


# direct methods
.method public constructor <init>(Lcom/android/systemui/dump/DumpManager;Lcom/android/keyguard/KeyguardViewController;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashSet;

    .line 5
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/SystemUIDialogManager;->mDialogsShowing:Ljava/util/Set;

    .line 10
    new-instance v0, Ljava/util/HashSet;

    .line 12
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/SystemUIDialogManager;->mListeners:Ljava/util/Set;

    .line 17
    invoke-virtual {p1, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Lcom/android/systemui/Dumpable;)V

    .line 19
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/SystemUIDialogManager;->mKeyguardViewController:Lcom/android/keyguard/KeyguardViewController;

    .line 22
    return-void
    .line 24
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string p2, "listeners:"

    .line 2
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/SystemUIDialogManager;->mListeners:Ljava/util/Set;

    .line 7
    check-cast p2, Ljava/util/HashSet;

    .line 9
    invoke-virtual {p2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 11
    move-result-object p2

    .line 14
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    move-result v0

    .line 18
    const-string v1, "\t"

    .line 19
    if-eqz v0, :cond_0

    .line 21
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    move-result-object v0

    .line 26
    check-cast v0, Lcom/android/systemui/biometrics/UdfpsAnimationViewController$dialogListener$1;

    .line 27
    new-instance v2, Ljava/lang/StringBuilder;

    .line 29
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    move-result-object v0

    .line 40
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 41
    goto :goto_0

    .line 44
    :cond_0
    const-string p2, "dialogs tracked:"

    .line 45
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 47
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SystemUIDialogManager;->mDialogsShowing:Ljava/util/Set;

    .line 50
    check-cast p0, Ljava/util/HashSet;

    .line 52
    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 54
    move-result-object p0

    .line 57
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 58
    move-result p2

    .line 61
    if-eqz p2, :cond_1

    .line 62
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 64
    move-result-object p2

    .line 67
    check-cast p2, Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    .line 70
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    move-result-object p2

    .line 81
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 82
    goto :goto_1

    .line 85
    :cond_1
    return-void
    .line 86
.end method

.method public final setShowing(Lcom/android/systemui/statusbar/phone/SystemUIDialog;Z)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SystemUIDialogManager;->shouldHideAffordance()Z

    .line 2
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SystemUIDialogManager;->mDialogsShowing:Ljava/util/Set;

    .line 6
    if-eqz p2, :cond_0

    .line 8
    check-cast v1, Ljava/util/HashSet;

    .line 10
    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 12
    goto :goto_0

    .line 15
    :cond_0
    check-cast v1, Ljava/util/HashSet;

    .line 16
    invoke-virtual {v1, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 18
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SystemUIDialogManager;->shouldHideAffordance()Z

    .line 21
    move-result p1

    .line 24
    if-eq v0, p1, :cond_6

    .line 25
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SystemUIDialogManager;->shouldHideAffordance()Z

    .line 27
    move-result p1

    .line 30
    const/4 p2, 0x1

    .line 31
    if-eqz p1, :cond_1

    .line 32
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/SystemUIDialogManager;->mKeyguardViewController:Lcom/android/keyguard/KeyguardViewController;

    .line 34
    check-cast p1, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 36
    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->hideAlternateBouncer(Z)V

    .line 38
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/SystemUIDialogManager;->mListeners:Ljava/util/Set;

    .line 41
    check-cast p1, Ljava/util/HashSet;

    .line 43
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 45
    move-result-object p1

    .line 48
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 49
    move-result v0

    .line 52
    if-eqz v0, :cond_6

    .line 53
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 55
    move-result-object v0

    .line 58
    check-cast v0, Lcom/android/systemui/biometrics/UdfpsAnimationViewController$dialogListener$1;

    .line 59
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SystemUIDialogManager;->shouldHideAffordance()Z

    .line 61
    iget-object v0, v0, Lcom/android/systemui/biometrics/UdfpsAnimationViewController$dialogListener$1;->this$0:Lcom/android/systemui/biometrics/UdfpsAnimationViewController;

    .line 64
    iget-object v1, v0, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->dialogManager:Lcom/android/systemui/statusbar/phone/SystemUIDialogManager;

    .line 66
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialogManager;->shouldHideAffordance()Z

    .line 68
    move-result v1

    .line 71
    iget-object v2, v0, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->dialogAlphaAnimator:Landroid/animation/ValueAnimator;

    .line 72
    if-eqz v2, :cond_2

    .line 74
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    .line 76
    :cond_2
    const/4 v2, 0x2

    .line 79
    new-array v2, v2, [F

    .line 80
    invoke-virtual {v0}, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->getView()Lcom/android/systemui/biometrics/UdfpsAnimationView;

    .line 82
    move-result-object v3

    .line 85
    invoke-virtual {v3}, Lcom/android/systemui/biometrics/UdfpsAnimationView;->calculateAlpha()I

    .line 86
    move-result v3

    .line 89
    int-to-float v3, v3

    .line 90
    const/high16 v4, 0x437f0000    # 255.0f

    .line 91
    div-float/2addr v3, v4

    .line 93
    const/4 v4, 0x0

    .line 94
    aput v3, v2, v4

    .line 95
    if-eqz v1, :cond_3

    .line 97
    const/4 v3, 0x0

    .line 99
    goto :goto_2

    .line 100
    :cond_3
    const/high16 v3, 0x3f800000    # 1.0f

    .line 101
    :goto_2
    aput v3, v2, p2

    .line 103
    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 105
    move-result-object v2

    .line 108
    if-eqz v1, :cond_4

    .line 109
    const-wide/16 v3, 0x53

    .line 111
    goto :goto_3

    .line 113
    :cond_4
    const-wide/16 v3, 0xc8

    .line 114
    :goto_3
    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 116
    if-eqz v1, :cond_5

    .line 119
    sget-object v1, Lcom/android/app/animation/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    .line 121
    goto :goto_4

    .line 123
    :cond_5
    sget-object v1, Lcom/android/app/animation/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    .line 124
    :goto_4
    invoke-virtual {v2, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 126
    new-instance v1, Lcom/android/systemui/biometrics/UdfpsAnimationViewController$runDialogAlphaAnimator$1$1;

    .line 129
    invoke-direct {v1, v0}, Lcom/android/systemui/biometrics/UdfpsAnimationViewController$runDialogAlphaAnimator$1$1;-><init>(Lcom/android/systemui/biometrics/UdfpsAnimationViewController;)V

    .line 131
    invoke-virtual {v2, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 134
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    .line 137
    iput-object v2, v0, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->dialogAlphaAnimator:Landroid/animation/ValueAnimator;

    .line 140
    goto :goto_1

    .line 142
    :cond_6
    return-void
    .line 143
.end method

.method public final shouldHideAffordance()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SystemUIDialogManager;->mDialogsShowing:Ljava/util/Set;

    .line 2
    check-cast p0, Ljava/util/HashSet;

    .line 4
    invoke-virtual {p0}, Ljava/util/HashSet;->isEmpty()Z

    .line 6
    move-result p0

    .line 9
    xor-int/lit8 p0, p0, 0x1

    .line 10
    return p0
    .line 12
.end method
