.class public final Lcom/android/systemui/statusbar/phone/StatusBarBoundsProvider;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final changeListeners:Ljava/util/Set;

.field public final endSideContent:Landroid/view/View;

.field public final layoutListener:Lcom/android/systemui/statusbar/phone/StatusBarBoundsProvider$layoutListener$1;

.field public previousBounds:Lcom/android/systemui/statusbar/phone/BoundsPair;

.field public final startSideContent:Landroid/view/View;


# direct methods
.method public constructor <init>(Ljava/util/Set;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarBoundsProvider;->changeListeners:Ljava/util/Set;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarBoundsProvider;->startSideContent:Landroid/view/View;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/StatusBarBoundsProvider;->endSideContent:Landroid/view/View;

    .line 9
    new-instance p1, Lcom/android/systemui/statusbar/phone/BoundsPair;

    .line 11
    invoke-static {p2}, Lcom/android/systemui/util/ConvenienceExtensionsKt;->getBoundsOnScreen(Landroid/view/View;)Landroid/graphics/Rect;

    .line 13
    move-result-object p2

    .line 16
    invoke-static {p3}, Lcom/android/systemui/util/ConvenienceExtensionsKt;->getBoundsOnScreen(Landroid/view/View;)Landroid/graphics/Rect;

    .line 17
    move-result-object p3

    .line 20
    invoke-direct {p1, p2, p3}, Lcom/android/systemui/statusbar/phone/BoundsPair;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 21
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarBoundsProvider;->previousBounds:Lcom/android/systemui/statusbar/phone/BoundsPair;

    .line 24
    new-instance p1, Lcom/android/systemui/statusbar/phone/StatusBarBoundsProvider$layoutListener$1;

    .line 26
    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/StatusBarBoundsProvider$layoutListener$1;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarBoundsProvider;)V

    .line 28
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarBoundsProvider;->layoutListener:Lcom/android/systemui/statusbar/phone/StatusBarBoundsProvider$layoutListener$1;

    .line 31
    return-void
    .line 33
.end method
