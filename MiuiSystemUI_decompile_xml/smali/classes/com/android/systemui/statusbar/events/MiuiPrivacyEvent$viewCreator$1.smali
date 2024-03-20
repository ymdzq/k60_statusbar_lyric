.class final Lcom/android/systemui/statusbar/events/MiuiPrivacyEvent$viewCreator$1;
.super Lkotlin/jvm/internal/Lambda;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/events/MiuiPrivacyEvent;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/events/MiuiPrivacyEvent;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/events/MiuiPrivacyEvent$viewCreator$1;->this$0:Lcom/android/systemui/statusbar/events/MiuiPrivacyEvent;

    .line 2
    const/4 p1, 0x1

    .line 4
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 5
    return-void
    .line 8
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    move-object v1, p1

    .line 2
    check-cast v1, Landroid/content/Context;

    .line 3
    new-instance p1, Lcom/android/systemui/privacy/OngoingPrivacyChip;

    .line 5
    const/4 v2, 0x0

    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x0

    .line 9
    const/16 v5, 0xe

    .line 10
    const/4 v6, 0x0

    .line 12
    move-object v0, p1

    .line 13
    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/privacy/OngoingPrivacyChip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 14
    iget-object v0, p0, Lcom/android/systemui/statusbar/events/MiuiPrivacyEvent$viewCreator$1;->this$0:Lcom/android/systemui/statusbar/events/MiuiPrivacyEvent;

    .line 17
    iget-object v0, v0, Lcom/android/systemui/statusbar/events/MiuiPrivacyEvent;->privacyItems:Ljava/util/List;

    .line 19
    invoke-virtual {p1, v0}, Lcom/android/systemui/privacy/OngoingPrivacyChip;->setPrivacyList(Ljava/util/List;)V

    .line 21
    iget-object p0, p0, Lcom/android/systemui/statusbar/events/MiuiPrivacyEvent$viewCreator$1;->this$0:Lcom/android/systemui/statusbar/events/MiuiPrivacyEvent;

    .line 24
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    const/4 p0, 0x0

    .line 29
    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 30
    return-object p1
    .line 33
.end method
