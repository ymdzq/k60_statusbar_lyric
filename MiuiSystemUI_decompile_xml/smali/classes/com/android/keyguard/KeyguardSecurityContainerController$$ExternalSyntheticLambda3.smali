.class public final synthetic Lcom/android/keyguard/KeyguardSecurityContainerController$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/keyguard/KeyguardEditorHelper$EditorStateListener;


# instance fields
.field public final synthetic f$0:Lcom/android/keyguard/KeyguardSecurityContainerController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/KeyguardSecurityContainerController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainerController$$ExternalSyntheticLambda3;->f$0:Lcom/android/keyguard/KeyguardSecurityContainerController;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final onEditorStateChanged(Lcom/android/keyguard/KeyguardEditorHelper$EditorState;)V
    .locals 9

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController$$ExternalSyntheticLambda3;->f$0:Lcom/android/keyguard/KeyguardSecurityContainerController;

    .line 2
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mEditorModeBgImageView:Landroid/widget/ImageView;

    .line 4
    if-nez p1, :cond_0

    .line 6
    goto/16 :goto_5

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mKeyguardEditorHelper:Lcom/android/keyguard/KeyguardEditorHelper;

    .line 10
    iget-object v0, v0, Lcom/android/keyguard/KeyguardEditorHelper;->mState:Lcom/android/keyguard/KeyguardEditorHelper$EditorState;

    .line 12
    sget-object v1, Lcom/android/keyguard/KeyguardEditorHelper$EditorState;->SHOWINGBOUNCER:Lcom/android/keyguard/KeyguardEditorHelper$EditorState;

    .line 14
    const/4 v2, 0x1

    .line 16
    const/4 v3, 0x0

    .line 17
    if-ne v0, v1, :cond_1

    .line 18
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 20
    move-result-object v1

    .line 23
    invoke-static {v1}, Lcom/miui/clock/utils/DeviceConfig;->supportBackgroundBlur(Landroid/content/Context;)Z

    .line 24
    move-result v1

    .line 27
    if-nez v1, :cond_1

    .line 28
    move v1, v2

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    move v1, v3

    .line 32
    :goto_0
    const/4 v4, 0x0

    .line 33
    if-eqz v1, :cond_2

    .line 34
    const/high16 v5, 0x3f800000    # 1.0f

    .line 36
    goto :goto_1

    .line 38
    :cond_2
    move v5, v4

    .line 39
    :goto_1
    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    .line 40
    move-result v6

    .line 43
    new-instance v7, Ljava/lang/StringBuilder;

    .line 44
    const-string v8, "EditorModeBg change to show ? "

    .line 46
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 51
    const-string v8, ", state = "

    .line 54
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    move-result-object v0

    .line 65
    const-string v7, "KeyguardSecurityView"

    .line 66
    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    const-string v0, ", return"

    .line 71
    const-string v8, ", mEditorModeBgShow = "

    .line 73
    if-eqz v1, :cond_5

    .line 75
    if-eqz v6, :cond_4

    .line 77
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mEditorModeBgShow:Z

    .line 79
    if-eqz v1, :cond_3

    .line 81
    goto :goto_2

    .line 83
    :cond_3
    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mEditorModeBgShow:Z

    .line 84
    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 86
    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 89
    goto :goto_3

    .line 92
    :cond_4
    :goto_2
    const-string p1, "EditorModeBg show, visible = "

    .line 93
    invoke-static {p1, v6, v8}, Landroidx/appcompat/widget/SuggestionsAdapter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    move-result-object p1

    .line 98
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mEditorModeBgShow:Z

    .line 99
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 101
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    move-result-object p0

    .line 110
    invoke-static {v7, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    goto :goto_5

    .line 114
    :cond_5
    const/16 v1, 0x8

    .line 115
    if-eq v6, v1, :cond_7

    .line 117
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mEditorModeBgShow:Z

    .line 119
    if-nez v1, :cond_6

    .line 121
    goto :goto_4

    .line 123
    :cond_6
    iput-boolean v3, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mEditorModeBgShow:Z

    .line 124
    :goto_3
    new-instance v0, Lmiuix/animation/controller/AnimState;

    .line 126
    const-string v1, "editor mode bg"

    .line 128
    invoke-direct {v0, v1}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    .line 130
    sget-object v1, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    .line 133
    float-to-double v6, v5

    .line 135
    invoke-virtual {v0, v1, v6, v7}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 136
    move-result-object v0

    .line 139
    new-instance v2, Lmiuix/animation/base/AnimConfig;

    .line 140
    invoke-direct {v2}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 142
    const/4 v4, 0x2

    .line 145
    new-array v4, v4, [F

    .line 146
    fill-array-data v4, :array_0

    .line 148
    const/4 v6, -0x2

    .line 151
    invoke-static {v6, v4}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 152
    move-result-object v4

    .line 155
    new-array v3, v3, [F

    .line 156
    invoke-virtual {v2, v1, v4, v3}, Lmiuix/animation/base/AnimConfig;->setSpecial(Lmiuix/animation/property/FloatProperty;Lmiuix/animation/utils/EaseManager$EaseStyle;[F)Lmiuix/animation/base/AnimConfig;

    .line 158
    move-result-object v1

    .line 161
    new-instance v2, Lcom/android/keyguard/KeyguardSecurityContainerController$10;

    .line 162
    invoke-direct {v2, p0, v5}, Lcom/android/keyguard/KeyguardSecurityContainerController$10;-><init>(Lcom/android/keyguard/KeyguardSecurityContainerController;F)V

    .line 164
    filled-new-array {v2}, [Lmiuix/animation/listener/TransitionListener;

    .line 167
    move-result-object p0

    .line 170
    invoke-virtual {v1, p0}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 171
    move-result-object p0

    .line 174
    filled-new-array {p1}, [Landroid/view/View;

    .line 175
    move-result-object p1

    .line 178
    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 179
    move-result-object p1

    .line 182
    invoke-interface {p1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 183
    move-result-object p1

    .line 186
    filled-new-array {p0}, [Lmiuix/animation/base/AnimConfig;

    .line 187
    move-result-object p0

    .line 190
    invoke-interface {p1, v0, p0}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 191
    goto :goto_5

    .line 194
    :cond_7
    :goto_4
    const-string p1, "EditorModeBg hide, visible = "

    .line 195
    invoke-static {p1, v6, v8}, Landroidx/appcompat/widget/SuggestionsAdapter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    move-result-object p1

    .line 200
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mEditorModeBgShow:Z

    .line 201
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 203
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 209
    move-result-object p0

    .line 212
    invoke-static {v7, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    :goto_5
    return-void

    .line 216
    nop

    .line 217
    :array_0
    .array-data 4
        0x3f733333    # 0.95f
        0x3eb33333    # 0.35f
    .end array-data
    .line 218
.end method
