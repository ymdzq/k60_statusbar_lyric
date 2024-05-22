.class public final Lcom/android/keyguard/AwesomeLockScreen$4;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/miui/keyguard/biometrics/fod/MiuiGxzwCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/AwesomeLockScreen;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/AwesomeLockScreen;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/AwesomeLockScreen$4;->this$0:Lcom/android/keyguard/AwesomeLockScreen;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onGxzwAuthFailed()V
    .locals 3

    .line 1
    const-string p0, "AwesomeLockScreen"

    .line 2
    const-string v0, "onGxzwAuthFailed"

    .line 4
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    sget-object p0, Lcom/android/keyguard/AwesomeLockScreen;->mRootHolder:Lcom/android/keyguard/RootHolder;

    .line 9
    iget-object p0, p0, Lcom/android/keyguard/RootHolder;->mContext:Lcom/miui/maml/ScreenContext;

    .line 11
    iget-object p0, p0, Lcom/miui/maml/ScreenContext;->mVariables:Lcom/miui/maml/data/Variables;

    .line 13
    const-wide/high16 v0, 0x4008000000000000L    # 3.0

    .line 15
    const-string v2, "fod_state_msg"

    .line 17
    invoke-static {v2, p0, v0, v1}, Lcom/miui/maml/util/Utils;->putVariableNumber(Ljava/lang/String;Lcom/miui/maml/data/Variables;D)V

    .line 19
    return-void
    .line 22
.end method

.method public final onGxzwAuthSucceeded()V
    .locals 3

    .line 1
    const-string p0, "AwesomeLockScreen"

    .line 2
    const-string v0, "onGxzwAuthSucceeded"

    .line 4
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    sget-object p0, Lcom/android/keyguard/AwesomeLockScreen;->mRootHolder:Lcom/android/keyguard/RootHolder;

    .line 9
    iget-object p0, p0, Lcom/android/keyguard/RootHolder;->mContext:Lcom/miui/maml/ScreenContext;

    .line 11
    iget-object p0, p0, Lcom/miui/maml/ScreenContext;->mVariables:Lcom/miui/maml/data/Variables;

    .line 13
    const-wide/high16 v0, 0x4010000000000000L    # 4.0

    .line 15
    const-string v2, "fod_state_msg"

    .line 17
    invoke-static {v2, p0, v0, v1}, Lcom/miui/maml/util/Utils;->putVariableNumber(Ljava/lang/String;Lcom/miui/maml/data/Variables;D)V

    .line 19
    return-void
    .line 22
.end method

.method public final onGxzwEnableChange(Z)V
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, "onGxzwEnableChange: enable = "

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 15
    const-string v1, "AwesomeLockScreen"

    .line 16
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    sget-object v0, Lcom/android/keyguard/AwesomeLockScreen;->mRootHolder:Lcom/android/keyguard/RootHolder;

    .line 21
    iget-object v1, v0, Lcom/android/keyguard/RootHolder;->mContext:Lcom/miui/maml/ScreenContext;

    .line 23
    iget-object v1, v1, Lcom/miui/maml/ScreenContext;->mVariables:Lcom/miui/maml/data/Variables;

    .line 25
    if-eqz p1, :cond_0

    .line 27
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 29
    goto :goto_0

    .line 31
    :cond_0
    const-wide/16 v2, 0x0

    .line 32
    :goto_0
    const-string v4, "fod_enable"

    .line 34
    invoke-static {v4, v1, v2, v3}, Lcom/miui/maml/util/Utils;->putVariableNumber(Ljava/lang/String;Lcom/miui/maml/data/Variables;D)V

    .line 36
    if-eqz p1, :cond_1

    .line 39
    iget-object p0, p0, Lcom/android/keyguard/AwesomeLockScreen$4;->this$0:Lcom/android/keyguard/AwesomeLockScreen;

    .line 41
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 43
    move-result-object p0

    .line 46
    invoke-static {p0}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwUtils;->getFodPosition(Landroid/content/Context;)Landroid/graphics/Rect;

    .line 47
    move-result-object p0

    .line 50
    iget-object p1, v0, Lcom/android/keyguard/RootHolder;->mContext:Lcom/miui/maml/ScreenContext;

    .line 51
    iget-object p1, p1, Lcom/miui/maml/ScreenContext;->mVariables:Lcom/miui/maml/data/Variables;

    .line 53
    iget v1, p0, Landroid/graphics/Rect;->left:I

    .line 55
    int-to-double v1, v1

    .line 57
    const-string v3, "fod_x"

    .line 58
    invoke-static {v3, p1, v1, v2}, Lcom/miui/maml/util/Utils;->putVariableNumber(Ljava/lang/String;Lcom/miui/maml/data/Variables;D)V

    .line 60
    iget-object p1, v0, Lcom/android/keyguard/RootHolder;->mContext:Lcom/miui/maml/ScreenContext;

    .line 63
    iget-object p1, p1, Lcom/miui/maml/ScreenContext;->mVariables:Lcom/miui/maml/data/Variables;

    .line 65
    iget v1, p0, Landroid/graphics/Rect;->top:I

    .line 67
    int-to-double v1, v1

    .line 69
    const-string v3, "fod_y"

    .line 70
    invoke-static {v3, p1, v1, v2}, Lcom/miui/maml/util/Utils;->putVariableNumber(Ljava/lang/String;Lcom/miui/maml/data/Variables;D)V

    .line 72
    iget-object p1, v0, Lcom/android/keyguard/RootHolder;->mContext:Lcom/miui/maml/ScreenContext;

    .line 75
    iget-object p1, p1, Lcom/miui/maml/ScreenContext;->mVariables:Lcom/miui/maml/data/Variables;

    .line 77
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    .line 79
    move-result v1

    .line 82
    int-to-double v1, v1

    .line 83
    const-string v3, "fod_width"

    .line 84
    invoke-static {v3, p1, v1, v2}, Lcom/miui/maml/util/Utils;->putVariableNumber(Ljava/lang/String;Lcom/miui/maml/data/Variables;D)V

    .line 86
    iget-object p1, v0, Lcom/android/keyguard/RootHolder;->mContext:Lcom/miui/maml/ScreenContext;

    .line 89
    iget-object p1, p1, Lcom/miui/maml/ScreenContext;->mVariables:Lcom/miui/maml/data/Variables;

    .line 91
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    .line 93
    move-result p0

    .line 96
    int-to-double v0, p0

    .line 97
    const-string p0, "fod_height"

    .line 98
    invoke-static {p0, p1, v0, v1}, Lcom/miui/maml/util/Utils;->putVariableNumber(Ljava/lang/String;Lcom/miui/maml/data/Variables;D)V

    .line 100
    :cond_1
    return-void
    .line 103
.end method

.method public final onGxzwTouchDown()V
    .locals 3

    .line 1
    const-string p0, "AwesomeLockScreen"

    .line 2
    const-string v0, "onGxzwTouchDown"

    .line 4
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    sget-object p0, Lcom/android/keyguard/AwesomeLockScreen;->mRootHolder:Lcom/android/keyguard/RootHolder;

    .line 9
    iget-object p0, p0, Lcom/android/keyguard/RootHolder;->mContext:Lcom/miui/maml/ScreenContext;

    .line 11
    iget-object p0, p0, Lcom/miui/maml/ScreenContext;->mVariables:Lcom/miui/maml/data/Variables;

    .line 13
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 15
    const-string v2, "fod_state_msg"

    .line 17
    invoke-static {v2, p0, v0, v1}, Lcom/miui/maml/util/Utils;->putVariableNumber(Ljava/lang/String;Lcom/miui/maml/data/Variables;D)V

    .line 19
    return-void
    .line 22
.end method

.method public final onGxzwTouchUp()V
    .locals 3

    .line 1
    const-string p0, "AwesomeLockScreen"

    .line 2
    const-string v0, "onGxzwTouchUp"

    .line 4
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    sget-object p0, Lcom/android/keyguard/AwesomeLockScreen;->mRootHolder:Lcom/android/keyguard/RootHolder;

    .line 9
    iget-object p0, p0, Lcom/android/keyguard/RootHolder;->mContext:Lcom/miui/maml/ScreenContext;

    .line 11
    iget-object p0, p0, Lcom/miui/maml/ScreenContext;->mVariables:Lcom/miui/maml/data/Variables;

    .line 13
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    .line 15
    const-string v2, "fod_state_msg"

    .line 17
    invoke-static {v2, p0, v0, v1}, Lcom/miui/maml/util/Utils;->putVariableNumber(Ljava/lang/String;Lcom/miui/maml/data/Variables;D)V

    .line 19
    return-void
    .line 22
.end method
