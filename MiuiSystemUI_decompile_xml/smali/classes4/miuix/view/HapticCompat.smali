.class public Lmiuix/view/HapticCompat;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final CURRENT_HAPTIC_VERSION:Ljava/lang/String;

.field public static final sProviders:Ljava/util/List;

.field public static final sSingleThread:Ljava/util/concurrent/Executor;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    const-string v0, "sys.haptic.version"

    .line 2
    const-string v1, "1.0"

    .line 4
    invoke-static {v0, v1}, Lmiuix/core/util/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 9
    sput-object v0, Lmiuix/view/HapticCompat;->CURRENT_HAPTIC_VERSION:Ljava/lang/String;

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    sput-object v0, Lmiuix/view/HapticCompat;->sProviders:Ljava/util/List;

    .line 17
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    .line 19
    move-result-object v0

    .line 22
    sput-object v0, Lmiuix/view/HapticCompat;->sSingleThread:Ljava/util/concurrent/Executor;

    .line 23
    const-string v0, "miuix.view.LinearVibrator"

    .line 25
    const-string v1, "miuix.view.ExtendedVibrator"

    .line 27
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 29
    move-result-object v0

    .line 32
    const/4 v1, 0x0

    .line 33
    :goto_0
    const/4 v2, 0x2

    .line 34
    if-ge v1, v2, :cond_0

    .line 35
    aget-object v2, v0, v1

    .line 37
    new-instance v3, Ljava/lang/StringBuilder;

    .line 39
    const-string v4, "loading provider: "

    .line 41
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    move-result-object v3

    .line 52
    const-string v4, "HapticCompat"

    .line 53
    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    :try_start_0
    const-class v3, Lmiuix/view/HapticCompat;

    .line 58
    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 60
    move-result-object v3

    .line 63
    const/4 v5, 0x1

    .line 64
    invoke-static {v2, v5, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    goto :goto_1

    .line 68
    :catch_0
    move-exception v3

    .line 69
    const-string v5, "load provider %s failed."

    .line 70
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 72
    move-result-object v2

    .line 75
    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 76
    move-result-object v2

    .line 79
    invoke-static {v4, v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 80
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 83
    goto :goto_0

    .line 85
    :cond_0
    return-void
    .line 86
.end method

.method public static checkHapticVersion1FeedBackConstant(I)Z
    .locals 2

    .line 1
    sget v0, Lmiuix/view/HapticFeedbackConstants;->MIUI_HAPTIC_VERSION_1_START:I

    .line 2
    if-lt p0, v0, :cond_1

    .line 4
    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_HAPTIC_VERSION_1_END:I

    .line 6
    if-le p0, v1, :cond_0

    .line 8
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x1

    .line 11
    return p0

    .line 12
    :cond_1
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    move-result-object p0

    .line 16
    sget v0, Lmiuix/view/HapticFeedbackConstants;->MIUI_HAPTIC_VERSION_1_END:I

    .line 17
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    move-result-object v0

    .line 22
    filled-new-array {p0, v0}, [Ljava/lang/Object;

    .line 23
    move-result-object p0

    .line 26
    const-string v0, "Illegal haptic version 1 feedback constant, should be in range [0x%08x..0x%08x]"

    .line 27
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 29
    move-result-object p0

    .line 32
    const-string v0, "HapticCompat"

    .line 33
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    const/4 p0, 0x0

    .line 38
    return p0
    .line 39
.end method

.method public static checkHapticVersion2FeedBackConstant(I)Z
    .locals 2

    .line 1
    sget v0, Lmiuix/view/HapticFeedbackConstants;->MIUI_HAPTIC_VERSION_2_START:I

    .line 2
    if-lt p0, v0, :cond_1

    .line 4
    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_HAPTIC_VERSION_2_END:I

    .line 6
    if-le p0, v1, :cond_0

    .line 8
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x1

    .line 11
    return p0

    .line 12
    :cond_1
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    move-result-object p0

    .line 16
    sget v0, Lmiuix/view/HapticFeedbackConstants;->MIUI_HAPTIC_VERSION_2_END:I

    .line 17
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    move-result-object v0

    .line 22
    filled-new-array {p0, v0}, [Ljava/lang/Object;

    .line 23
    move-result-object p0

    .line 26
    const-string v0, "Illegal haptic version 2 feedback constant, should be in range [0x%08x..0x%08x]"

    .line 27
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 29
    move-result-object p0

    .line 32
    const-string v0, "HapticCompat"

    .line 33
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    const/4 p0, 0x0

    .line 38
    return p0
    .line 39
.end method

.method public static doesSupportHaptic(Ljava/lang/String;)Z
    .locals 1

    .line 1
    sget-object v0, Lmiuix/view/HapticCompat;->CURRENT_HAPTIC_VERSION:Ljava/lang/String;

    .line 2
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    move-result p0

    .line 7
    return p0
    .line 8
.end method

.method public static performHapticFeedback(Landroid/view/View;II)V
    .locals 1

    const-string v0, "2.0"

    .line 8
    invoke-static {v0}, Lmiuix/view/HapticCompat;->doesSupportHaptic(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9
    invoke-static {p1}, Lmiuix/view/HapticCompat;->checkHapticVersion2FeedBackConstant(I)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 10
    :cond_0
    invoke-static {p0, p1}, Lmiuix/view/HapticCompat;->performHapticFeedback(Landroid/view/View;I)Z

    return-void

    :cond_1
    const-string p1, "1.0"

    .line 11
    invoke-static {p1}, Lmiuix/view/HapticCompat;->doesSupportHaptic(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 12
    invoke-static {p2}, Lmiuix/view/HapticCompat;->checkHapticVersion1FeedBackConstant(I)Z

    move-result p1

    if-nez p1, :cond_2

    return-void

    .line 13
    :cond_2
    invoke-static {p0, p2}, Lmiuix/view/HapticCompat;->performHapticFeedback(Landroid/view/View;I)Z

    return-void

    .line 14
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Unexpected haptic version: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object p1, Lmiuix/view/HapticCompat;->CURRENT_HAPTIC_VERSION:Ljava/lang/String;

    const-string p2, "HapticCompat"

    .line 15
    invoke-static {p0, p1, p2}, Landroidx/constraintlayout/helper/widget/CircularFlow$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static performHapticFeedback(Landroid/view/View;I)Z
    .locals 4

    const/4 v0, 0x0

    const-string v1, "HapticCompat"

    if-nez p0, :cond_0

    const-string p0, "performHapticFeedback: view is null!"

    .line 1
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    const/high16 v2, 0x10000000

    if-ge p1, v2, :cond_1

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "perform haptic: 0x%08x"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-virtual {p0, p1}, Landroid/view/View;->performHapticFeedback(I)Z

    move-result p0

    return p0

    .line 4
    :cond_1
    sget v3, Lmiuix/view/HapticFeedbackConstants;->MIUI_HAPTIC_END:I

    if-le p1, v3, :cond_2

    .line 5
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "illegal feedback constant, should be in range [0x%08x..0x%08x]"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 6
    :cond_2
    sget-object v1, Lmiuix/view/HapticCompat;->sProviders:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiuix/view/HapticFeedbackProvider;

    .line 7
    invoke-interface {v2, p0, p1}, Lmiuix/view/HapticFeedbackProvider;->performHapticFeedback(Landroid/view/View;I)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 p0, 0x1

    return p0

    :cond_4
    return v0
.end method

.method public static performHapticFeedbackAsync(Landroid/view/View;I)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 2
    invoke-static {p0, p1}, Lmiuix/view/HapticCompat;->performHapticFeedback(Landroid/view/View;I)Z

    goto :goto_1

    .line 3
    :cond_1
    sget-object v0, Lmiuix/view/HapticCompat;->sSingleThread:Ljava/util/concurrent/Executor;

    new-instance v1, Lmiuix/view/HapticCompat$WeakReferenceHandler;

    invoke-direct {v1, p1, p0}, Lmiuix/view/HapticCompat$WeakReferenceHandler;-><init>(ILandroid/view/View;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_1
    return-void
.end method

.method public static performHapticFeedbackAsync(Landroid/view/View;II)V
    .locals 1

    const-string v0, "2.0"

    .line 4
    invoke-static {v0}, Lmiuix/view/HapticCompat;->doesSupportHaptic(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-static {p1}, Lmiuix/view/HapticCompat;->checkHapticVersion2FeedBackConstant(I)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 6
    :cond_0
    invoke-static {p0, p1}, Lmiuix/view/HapticCompat;->performHapticFeedbackAsync(Landroid/view/View;I)V

    return-void

    :cond_1
    const-string p1, "1.0"

    .line 7
    invoke-static {p1}, Lmiuix/view/HapticCompat;->doesSupportHaptic(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 8
    invoke-static {p2}, Lmiuix/view/HapticCompat;->checkHapticVersion1FeedBackConstant(I)Z

    move-result p1

    if-nez p1, :cond_2

    return-void

    .line 9
    :cond_2
    invoke-static {p0, p2}, Lmiuix/view/HapticCompat;->performHapticFeedbackAsync(Landroid/view/View;I)V

    return-void

    .line 10
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Unexpected haptic version: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object p1, Lmiuix/view/HapticCompat;->CURRENT_HAPTIC_VERSION:Ljava/lang/String;

    const-string p2, "HapticCompat"

    .line 11
    invoke-static {p0, p1, p2}, Landroidx/constraintlayout/helper/widget/CircularFlow$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static registerProvider(Lmiuix/view/HapticFeedbackProvider;)V
    .locals 1

    .line 1
    sget-object v0, Lmiuix/view/HapticCompat;->sProviders:Ljava/util/List;

    .line 2
    check-cast v0, Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    return-void
    .line 9
.end method
