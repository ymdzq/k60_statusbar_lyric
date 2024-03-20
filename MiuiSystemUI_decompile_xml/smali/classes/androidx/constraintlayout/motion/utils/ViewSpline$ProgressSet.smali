.class public final Landroidx/constraintlayout/motion/utils/ViewSpline$ProgressSet;
.super Landroidx/constraintlayout/motion/utils/ViewSpline;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public mNoMethod:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/constraintlayout/motion/utils/ViewSpline;-><init>()V

    .line 2
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/utils/ViewSpline$ProgressSet;->mNoMethod:Z

    .line 6
    return-void
    .line 8
.end method


# virtual methods
.method public final setProperty(FLandroid/view/View;)V
    .locals 8

    .line 1
    const-string/jumbo v0, "unable to setProgress"

    .line 2
    const-string v1, "ViewSpline"

    .line 5
    instance-of v2, p2, Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 7
    if-eqz v2, :cond_0

    .line 9
    check-cast p2, Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 11
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/utils/ViewSpline;->get(F)F

    .line 13
    move-result p0

    .line 16
    invoke-virtual {p2, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    .line 17
    goto :goto_1

    .line 20
    :cond_0
    iget-boolean v2, p0, Landroidx/constraintlayout/motion/utils/ViewSpline$ProgressSet;->mNoMethod:Z

    .line 21
    if-eqz v2, :cond_1

    .line 23
    return-void

    .line 25
    :cond_1
    const/4 v2, 0x0

    .line 26
    const/4 v3, 0x1

    .line 27
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    move-result-object v4

    .line 31
    const-string/jumbo v5, "setProgress"

    .line 32
    new-array v6, v3, [Ljava/lang/Class;

    .line 35
    sget-object v7, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 37
    aput-object v7, v6, v2

    .line 39
    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 41
    move-result-object v4
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    goto :goto_0

    .line 45
    :catch_0
    iput-boolean v3, p0, Landroidx/constraintlayout/motion/utils/ViewSpline$ProgressSet;->mNoMethod:Z

    .line 46
    const/4 v4, 0x0

    .line 48
    :goto_0
    if-eqz v4, :cond_2

    .line 49
    :try_start_1
    new-array v3, v3, [Ljava/lang/Object;

    .line 51
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/utils/ViewSpline;->get(F)F

    .line 53
    move-result p0

    .line 56
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 57
    move-result-object p0

    .line 60
    aput-object p0, v3, v2

    .line 61
    invoke-virtual {v4, p2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1

    .line 63
    goto :goto_1

    .line 66
    :catch_1
    move-exception p0

    .line 67
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 68
    goto :goto_1

    .line 71
    :catch_2
    move-exception p0

    .line 72
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 73
    :cond_2
    :goto_1
    return-void
    .line 76
.end method
