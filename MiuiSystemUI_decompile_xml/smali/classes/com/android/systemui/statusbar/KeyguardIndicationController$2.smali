.class public final Lcom/android/systemui/statusbar/KeyguardIndicationController$2;
.super Landroid/os/Handler;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/KeyguardIndicationController;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$2;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    .line 2
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 4
    iget v1, v1, Landroid/os/Message;->what:I

    .line 6
    const/4 v2, 0x1

    .line 8
    if-ne v1, v2, :cond_0

    .line 9
    iget-object v0, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController$2;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    goto/16 :goto_0

    .line 16
    :cond_0
    const/4 v3, 0x2

    .line 18
    if-ne v1, v3, :cond_1

    .line 19
    iget-object v0, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController$2;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    .line 21
    const/4 v1, 0x0

    .line 23
    iput-object v1, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBiometricErrorMessageToShowOnScreenOn:Ljava/lang/String;

    .line 24
    goto/16 :goto_0

    .line 26
    :cond_1
    const/16 v3, 0x3e8

    .line 28
    if-ne v1, v3, :cond_3

    .line 30
    const-class v1, Lcom/android/keyguard/injector/KeyguardIndicationInjector;

    .line 32
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 34
    move-result-object v1

    .line 37
    check-cast v1, Lcom/android/keyguard/injector/KeyguardIndicationInjector;

    .line 38
    iget-object v0, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController$2;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    .line 40
    iget-object v3, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mUpArrow:Landroid/widget/ImageView;

    .line 42
    iget-object v0, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mLockScreenIndicationView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    .line 44
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    if-eqz v3, :cond_3

    .line 49
    if-nez v0, :cond_2

    .line 51
    goto :goto_0

    .line 53
    :cond_2
    const v4, 0x10a0001    # @android:anim/fade_out

    .line 54
    iget-object v1, v1, Lcom/android/keyguard/injector/KeyguardIndicationInjector;->mContext:Landroid/content/Context;

    .line 57
    invoke-static {v1, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 59
    move-result-object v4

    .line 62
    const/high16 v5, 0x10a0000    # @android:anim/fade_in

    .line 63
    invoke-static {v1, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 65
    move-result-object v1

    .line 68
    new-instance v14, Landroid/view/animation/TranslateAnimation;

    .line 69
    const/4 v6, 0x1

    .line 71
    const/4 v7, 0x0

    .line 72
    const/4 v8, 0x1

    .line 73
    const/4 v9, 0x0

    .line 74
    const/4 v10, 0x1

    .line 75
    const/4 v11, 0x0

    .line 76
    const/4 v12, 0x1

    .line 77
    const/high16 v13, -0x40000000    # -2.0f

    .line 78
    move-object v5, v14

    .line 80
    invoke-direct/range {v5 .. v13}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 81
    new-instance v5, Landroid/view/animation/TranslateAnimation;

    .line 84
    const/16 v16, 0x1

    .line 86
    const/16 v17, 0x0

    .line 88
    const/16 v18, 0x1

    .line 90
    const/16 v19, 0x0

    .line 92
    const/16 v20, 0x1

    .line 94
    const/high16 v21, 0x40000000    # 2.0f

    .line 96
    const/16 v22, 0x1

    .line 98
    const/16 v23, 0x0

    .line 100
    move-object v15, v5

    .line 102
    invoke-direct/range {v15 .. v23}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 103
    new-instance v6, Landroid/view/animation/AnimationSet;

    .line 106
    invoke-direct {v6, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 108
    new-instance v7, Landroid/view/animation/AnimationSet;

    .line 111
    invoke-direct {v7, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 113
    invoke-virtual {v6, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 116
    invoke-virtual {v6, v14}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 119
    const/16 v4, 0x1f4

    .line 122
    int-to-long v8, v4

    .line 124
    invoke-virtual {v6, v8, v9}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 125
    invoke-virtual {v7, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 128
    invoke-virtual {v7, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 131
    invoke-virtual {v7, v8, v9}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 134
    const-wide/16 v4, 0x64

    .line 137
    invoke-virtual {v7, v4, v5}, Landroid/view/animation/AnimationSet;->setStartOffset(J)V

    .line 139
    new-instance v1, Lcom/android/keyguard/injector/KeyguardIndicationInjector$1;

    .line 142
    const/4 v4, 0x0

    .line 144
    invoke-direct {v1, v3, v4}, Lcom/android/keyguard/injector/KeyguardIndicationInjector$1;-><init>(Landroid/view/View;I)V

    .line 145
    invoke-virtual {v6, v1}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 148
    new-instance v1, Lcom/android/keyguard/injector/KeyguardIndicationInjector$1;

    .line 151
    invoke-direct {v1, v0, v2}, Lcom/android/keyguard/injector/KeyguardIndicationInjector$1;-><init>(Landroid/view/View;I)V

    .line 153
    invoke-virtual {v7, v1}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 156
    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 159
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 162
    :cond_3
    :goto_0
    return-void
    .line 165
.end method
