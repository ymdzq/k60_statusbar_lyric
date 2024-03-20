.class public final Lcom/android/systemui/shared/clocks/DefaultClockProvider;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/plugins/ClockProvider;


# instance fields
.field public final ctx:Landroid/content/Context;

.field public final hasStepClockAnimation:Z

.field public final layoutInflater:Landroid/view/LayoutInflater;

.field public final resources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/LayoutInflater;Landroid/content/res/Resources;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/shared/clocks/DefaultClockProvider;->ctx:Landroid/content/Context;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/shared/clocks/DefaultClockProvider;->layoutInflater:Landroid/view/LayoutInflater;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/shared/clocks/DefaultClockProvider;->resources:Landroid/content/res/Resources;

    .line 9
    iput-boolean p4, p0, Lcom/android/systemui/shared/clocks/DefaultClockProvider;->hasStepClockAnimation:Z

    .line 11
    return-void
    .line 13
.end method


# virtual methods
.method public final createClock(Lcom/android/systemui/plugins/ClockSettings;)Lcom/android/systemui/plugins/ClockController;
    .locals 7

    .line 2
    invoke-virtual {p1}, Lcom/android/systemui/plugins/ClockSettings;->getClockId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DEFAULT"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Lcom/android/systemui/shared/clocks/DefaultClockController;

    .line 4
    iget-object v2, p0, Lcom/android/systemui/shared/clocks/DefaultClockProvider;->ctx:Landroid/content/Context;

    .line 5
    iget-object v3, p0, Lcom/android/systemui/shared/clocks/DefaultClockProvider;->layoutInflater:Landroid/view/LayoutInflater;

    .line 6
    iget-object v4, p0, Lcom/android/systemui/shared/clocks/DefaultClockProvider;->resources:Landroid/content/res/Resources;

    .line 7
    iget-boolean v6, p0, Lcom/android/systemui/shared/clocks/DefaultClockProvider;->hasStepClockAnimation:Z

    move-object v1, v0

    move-object v5, p1

    .line 8
    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/shared/clocks/DefaultClockController;-><init>(Landroid/content/Context;Landroid/view/LayoutInflater;Landroid/content/res/Resources;Lcom/android/systemui/plugins/ClockSettings;Z)V

    return-object v0

    .line 9
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Lcom/android/systemui/plugins/ClockSettings;->getClockId()Ljava/lang/String;

    move-result-object p1

    .line 10
    sget-object v0, Lcom/android/systemui/shared/clocks/DefaultClockProviderKt;->TAG:Ljava/lang/String;

    const-string v1, " is unsupported by "

    .line 11
    invoke-static {p1, v1, v0}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 12
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final createClock(Ljava/lang/String;)Lcom/android/systemui/plugins/ClockController;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/android/systemui/plugins/ClockProvider$DefaultImpls;->createClock(Lcom/android/systemui/plugins/ClockProvider;Ljava/lang/String;)Lcom/android/systemui/plugins/ClockController;

    move-result-object p0

    return-object p0
.end method

.method public final getClockThumbnail(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    const-string v0, "DEFAULT"

    .line 2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    const p1, 0x7f080bf2    # @drawable/clock_default_thumbnail 'res/drawable/clock_default_thumbnail.xml'

    .line 10
    const/4 v0, 0x0

    .line 13
    iget-object p0, p0, Lcom/android/systemui/shared/clocks/DefaultClockProvider;->resources:Landroid/content/res/Resources;

    .line 14
    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 16
    move-result-object p0

    .line 19
    return-object p0

    .line 20
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 21
    sget-object v0, Lcom/android/systemui/shared/clocks/DefaultClockProviderKt;->TAG:Ljava/lang/String;

    .line 23
    const-string v1, " is unsupported by "

    .line 25
    invoke-static {p1, v1, v0}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 27
    move-result-object p1

    .line 30
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 31
    throw p0
    .line 34
.end method

.method public final getClocks()Ljava/util/List;
    .locals 2

    .line 1
    new-instance p0, Lcom/android/systemui/plugins/ClockMetadata;

    .line 2
    const-string v0, "DEFAULT"

    .line 4
    const-string v1, "Default Clock"

    .line 6
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/plugins/ClockMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 11
    move-result-object p0

    .line 14
    return-object p0
    .line 15
.end method
