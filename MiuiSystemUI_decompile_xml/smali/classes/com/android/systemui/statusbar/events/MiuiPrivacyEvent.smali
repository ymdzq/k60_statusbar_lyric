.class public final Lcom/android/systemui/statusbar/events/MiuiPrivacyEvent;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/statusbar/events/StatusEvent;


# instance fields
.field public forceVisible:Z

.field public privacyItems:Ljava/util/List;

.field public final viewCreator:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/events/MiuiPrivacyEvent;->forceVisible:Z

    .line 6
    sget-object v0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 8
    iput-object v0, p0, Lcom/android/systemui/statusbar/events/MiuiPrivacyEvent;->privacyItems:Ljava/util/List;

    .line 10
    new-instance v0, Lcom/android/systemui/statusbar/events/MiuiPrivacyEvent$viewCreator$1;

    .line 12
    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/events/MiuiPrivacyEvent$viewCreator$1;-><init>(Lcom/android/systemui/statusbar/events/MiuiPrivacyEvent;)V

    .line 14
    iput-object v0, p0, Lcom/android/systemui/statusbar/events/MiuiPrivacyEvent;->viewCreator:Lkotlin/jvm/functions/Function1;

    .line 17
    return-void
    .line 19
.end method


# virtual methods
.method public final getContentDescription()Ljava/lang/String;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
    .line 3
.end method

.method public final getForceVisible()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/events/MiuiPrivacyEvent;->forceVisible:Z

    .line 2
    return p0
    .line 4
.end method

.method public final getPriority()I
    .locals 0

    .line 1
    const/16 p0, 0x64

    .line 2
    return p0
    .line 4
.end method

.method public final getShowAnimation()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public final getViewCreator()Lkotlin/jvm/functions/Function1;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/events/MiuiPrivacyEvent;->viewCreator:Lkotlin/jvm/functions/Function1;

    .line 2
    return-object p0
    .line 4
.end method

.method public final setForceVisible()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/events/MiuiPrivacyEvent;->forceVisible:Z

    .line 3
    return-void
    .line 5
.end method

.method public final shouldUpdateFromEvent(Lcom/android/systemui/statusbar/events/StatusEvent;)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "MiuiPrivacyEvent"

    .line 2
    return-object p0
    .line 4
.end method

.method public final updateFromEvent(Lcom/android/systemui/statusbar/events/StatusEvent;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method
